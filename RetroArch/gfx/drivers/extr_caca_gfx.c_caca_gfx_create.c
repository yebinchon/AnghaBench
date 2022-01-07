
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caca_create_display (int *) ;
 int caca_create_dither (int,scalar_t__,scalar_t__,int ,int,int,int,int) ;
 int caca_cv ;
 int caca_display ;
 int caca_dither ;
 int caca_get_canvas (int ) ;
 scalar_t__ caca_get_canvas_height (int ) ;
 scalar_t__ caca_get_canvas_width (int ) ;
 scalar_t__ caca_rgb32 ;
 scalar_t__ caca_video_height ;
 int caca_video_pitch ;
 scalar_t__ caca_video_width ;
 int video_driver_set_size (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void caca_gfx_create(void)
{
   caca_display = caca_create_display(((void*)0));
   caca_cv = caca_get_canvas(caca_display);

   if(!caca_video_width || !caca_video_height)
   {
      caca_video_width = caca_get_canvas_width(caca_cv);
      caca_video_height = caca_get_canvas_height(caca_cv);
   }

   if (caca_rgb32)
      caca_dither = caca_create_dither(32, caca_video_width, caca_video_height, caca_video_pitch,
                            0x00ff0000, 0xff00, 0xff, 0x0);
   else
      caca_dither = caca_create_dither(16, caca_video_width, caca_video_height, caca_video_pitch,
                            0xf800, 0x7e0, 0x1f, 0x0);

   video_driver_set_size(&caca_video_width, &caca_video_height);
}
