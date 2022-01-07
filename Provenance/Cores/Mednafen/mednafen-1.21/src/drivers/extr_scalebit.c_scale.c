
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scale2x (void*,unsigned int,void const*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int scale3x (void*,unsigned int,void const*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int scale4x (void*,unsigned int,void const*,unsigned int,unsigned int,unsigned int,unsigned int) ;

void scale(unsigned scale_factor, void* void_dst, unsigned dst_slice, const void* void_src, unsigned src_slice, unsigned pixel, unsigned width, unsigned height)
{
 switch (scale_factor) {
 case 2 :
  scale2x(void_dst, dst_slice, void_src, src_slice, pixel, width, height);
  break;
 case 3 :
  scale3x(void_dst, dst_slice, void_src, src_slice, pixel, width, height);
  break;
 case 4 :
  scale4x(void_dst, dst_slice, void_src, src_slice, pixel, width, height);
  break;
 }
}
