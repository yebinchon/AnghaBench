
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int blargg_ntsc_snes_render_rgb565 (void*,unsigned int,unsigned int,int,int,int *,unsigned int,int *,unsigned int) ;

__attribute__((used)) static void blargg_ntsc_snes_rgb565(void *data, unsigned width, unsigned height,
      int first, int last, uint16_t *src,
      unsigned src_stride, uint16_t *dst, unsigned dst_stride)
{
   blargg_ntsc_snes_render_rgb565(data, width, height,
         first, last,
         src, src_stride,
         dst, dst_stride);

}
