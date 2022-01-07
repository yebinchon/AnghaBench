
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t VIDEOMODE_MODE_t ;
struct TYPE_2__ {unsigned int param2src_w_mult; unsigned int src_width; unsigned int (* src2out_w_func ) (unsigned int) ;unsigned int src_height; } ;


 int Atari800_TV_NTSC ;
 int Atari800_tv_mode ;



 unsigned int VIDEOMODE_MAX_HORIZONTAL_AREA ;
 unsigned int VIDEOMODE_MAX_VERTICAL_AREA ;



 unsigned int VIDEOMODE_custom_horizontal_area ;
 unsigned int VIDEOMODE_custom_vertical_area ;
 int VIDEOMODE_horizontal_area ;
 int VIDEOMODE_vertical_area ;
 TYPE_1__* display_modes ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static void GetOutArea(unsigned int *w, unsigned int *h, VIDEOMODE_MODE_t display_mode)
{
 switch (VIDEOMODE_horizontal_area) {
 case 132:
  VIDEOMODE_custom_horizontal_area = 320;
  break;
 case 131:
  VIDEOMODE_custom_horizontal_area = 336;
  break;
 case 133:
  VIDEOMODE_custom_horizontal_area = VIDEOMODE_MAX_HORIZONTAL_AREA;
  break;
 }
 *w = VIDEOMODE_custom_horizontal_area * display_modes[display_mode].param2src_w_mult;
 if (*w > display_modes[display_mode].src_width)
  *w = display_modes[display_mode].src_width;
 *w = (*display_modes[display_mode].src2out_w_func)(*w);

 switch (VIDEOMODE_vertical_area) {
 case 129:
  VIDEOMODE_custom_vertical_area = 200;
  break;
 case 128:
  if (Atari800_tv_mode == Atari800_TV_NTSC)
   VIDEOMODE_custom_vertical_area = 224;
  else
   VIDEOMODE_custom_vertical_area = 240;
  break;
 case 130:
  VIDEOMODE_custom_vertical_area = VIDEOMODE_MAX_VERTICAL_AREA;
  break;
 }
 *h = VIDEOMODE_custom_vertical_area;
 if (*h > display_modes[display_mode].src_height)
  *h = display_modes[display_mode].src_height;
}
