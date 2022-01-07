
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct filter_data {int burst_toggle; int burst; int ntsc; } ;


 int retroarch_snes_ntsc_blit (int ,int *,int,int ,int,int,int *,int,int,int) ;
 int retroarch_snes_ntsc_blit_hires (int ,int *,int,int ,int,int,int *,int,int,int) ;

__attribute__((used)) static void blargg_ntsc_snes_render_rgb565(void *data, int width, int height,
      int first, int last,
      uint16_t *input, int pitch, uint16_t *output, int outpitch)
{
   struct filter_data *filt = (struct filter_data*)data;
   if(width <= 256)
      retroarch_snes_ntsc_blit(filt->ntsc, input, pitch, filt->burst,
            width, height, output, outpitch * 2, first, last);
   else
      retroarch_snes_ntsc_blit_hires(filt->ntsc, input, pitch, filt->burst,
            width, height, output, outpitch * 2, first, last);

   filt->burst ^= filt->burst_toggle;
}
