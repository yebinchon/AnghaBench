
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;


 int DefaultVisual (int ,int ) ;
 int current_bpp ;
 int* current_pal ;
 int g_screen_height ;
 void* g_screen_ptr ;
 int g_screen_width ;
 int plat_video_toggle_renderer (int ,int ) ;
 int realloc_screen () ;
 scalar_t__ scr_changed ;
 TYPE_1__* ximage ;
 int ximage_realloc (int ,int ) ;
 int xlib_display ;
 int xlib_update () ;

void plat_video_flip(void)
{
 unsigned int *image;
 int pixel_count, i;

 if (ximage == ((void*)0))
  return;

 pixel_count = g_screen_width * g_screen_height;
 image = (void *)ximage->data;

 if (current_bpp == 8)
 {
  unsigned char *pixels = g_screen_ptr;
  int pix;

  for (i = 0; i < pixel_count; i++)
  {
   pix = current_pal[pixels[i]];
   image[i] = pix;
  }
 }
 else
 {
  unsigned short *pixels = g_screen_ptr;

  for (i = 0; i < pixel_count; i++)
  {


   image[i] = (pixels[i] << 8) & 0xf80000;
   image[i] |= (pixels[i] << 5) & 0x00fc00;
   image[i] |= (pixels[i] << 3) & 0x0000f8;
  }
 }
 xlib_update();

 if (scr_changed) {
  realloc_screen();
  ximage_realloc(xlib_display, DefaultVisual(xlib_display, 0));


  plat_video_toggle_renderer(0, 0);
 }
}
