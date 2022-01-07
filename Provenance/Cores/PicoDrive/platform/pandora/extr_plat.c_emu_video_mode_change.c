
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scaling; } ;


 int PDF_RGB555 ;
 int PicoDrawSetOutFormat (int ,int ) ;





 TYPE_1__ currentConfig ;
 scalar_t__ doing_bg_frame ;
 int g_layer_ch ;
 int g_layer_cw ;
 int g_layer_cx ;
 int g_layer_cy ;
 int g_layer_h ;
 int g_layer_w ;
 int g_layer_x ;
 int g_layer_y ;
 int g_osd_fps_x ;
 int g_osd_y ;
 int layer_fb ;
 int plat_video_flip () ;
 int pnd_setup_layer (int,int,int,int,int) ;
 int vout_fbdev_clear (int ) ;
 int vout_fbdev_resize (int ,int,int,int,int,int,int,int,int) ;

void emu_video_mode_change(int start_line, int line_count, int is_32cols)
{
 int fb_w = 320, fb_h = 240, fb_left = 0, fb_right = 0, fb_top = 0, fb_bottom = 0;

 if (doing_bg_frame)
  return;

 if (is_32cols) {
  fb_w = 256;
  fb_left = fb_right = 32;
 }

 switch (currentConfig.scaling) {
 case 132:
  g_layer_w = fb_w;
  g_layer_h = fb_h;
  break;
 case 130:
  g_layer_w = fb_w * (is_32cols ? 3 : 2);
  g_layer_h = fb_h * 2;
  break;
 case 131:
  g_layer_w = fb_w * 2;
  g_layer_h = fb_h * 2;
  break;
 case 128:
  g_layer_w = 800;
  g_layer_h = 480;
  break;
 case 129:
  g_layer_x = g_layer_cx;
  g_layer_y = g_layer_cy;
  g_layer_w = g_layer_cw;
  g_layer_h = g_layer_ch;
  break;
 }

 if (currentConfig.scaling != 129) {

  g_layer_x = 800 / 2 - g_layer_w / 2;
  g_layer_y = 480 / 2 - g_layer_h / 2;
 }

 switch (currentConfig.scaling) {
 case 128:
 case 129:
  fb_top = start_line;
  fb_h = line_count;
  break;
 }
 g_osd_fps_x = is_32cols ? 232 : 264;
 g_osd_y = fb_top + fb_h - 8;

 pnd_setup_layer(1, g_layer_x, g_layer_y, g_layer_w, g_layer_h);
 vout_fbdev_clear(layer_fb);
 vout_fbdev_resize(layer_fb, fb_w, fb_h, 16, fb_left, fb_right, fb_top, fb_bottom, 4);
 plat_video_flip();

 PicoDrawSetOutFormat(PDF_RGB555, 0);
}
