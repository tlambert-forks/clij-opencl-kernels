
__kernel void set_column_3d(
    IMAGE_dst_TYPE  dst,
    int column,
    float value
)
{
  const int x = column;
  const int y = get_global_id(1);
  const int z = get_global_id(2);

  WRITE_dst_IMAGE (dst, (int4)(x,y,z,0), CONVERT_dst_PIXEL_TYPE(value));
}

