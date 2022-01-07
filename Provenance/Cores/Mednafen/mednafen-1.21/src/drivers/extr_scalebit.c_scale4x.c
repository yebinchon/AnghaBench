
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* alloca (int) ;
 int assert (int) ;
 int free (void*) ;
 void* malloc (int) ;
 int scale4x_buf (void*,unsigned int,void*,unsigned int,void const*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void scale4x(void* void_dst, unsigned dst_slice, const void* void_src, unsigned src_slice, unsigned pixel, unsigned width, unsigned height)
{
 unsigned mid_slice;
 void* mid;

 mid_slice = 2 * pixel * width;

 mid_slice = (mid_slice + 0x7) & ~0x7;






 mid = malloc(6 * mid_slice);

 if (!mid)
  return;


 scale4x_buf(void_dst, dst_slice, mid, mid_slice, void_src, src_slice, pixel, width, height);


 free(mid);

}
