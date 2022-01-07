
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SNES_NTSC_OUT_WIDTH (unsigned int) ;

__attribute__((used)) static void blargg_ntsc_snes_generic_output(void *data,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   *out_width = SNES_NTSC_OUT_WIDTH(width);
   *out_height = height;
}
