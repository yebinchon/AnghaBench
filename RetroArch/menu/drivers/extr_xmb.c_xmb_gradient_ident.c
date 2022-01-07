
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xmb_color_theme; } ;
typedef TYPE_1__ video_frame_info_t ;
 float* gradient_apple_green ;
 float* gradient_dark ;
 float* gradient_dark_purple ;
 float* gradient_electric_blue ;
 float* gradient_golden ;
 float* gradient_legacy_red ;
 float* gradient_light ;
 float* gradient_midnight_blue ;
 float* gradient_morning_blue ;
 float* gradient_sunbeam ;
 float* gradient_undersea ;
 float* gradient_volcanic_red ;

__attribute__((used)) static float *xmb_gradient_ident(video_frame_info_t *video_info)
{
   switch (video_info->xmb_color_theme)
   {
      case 137:
         return &gradient_dark_purple[0];
      case 132:
         return &gradient_midnight_blue[0];
      case 135:
         return &gradient_golden[0];
      case 136:
         return &gradient_electric_blue[0];
      case 139:
         return &gradient_apple_green[0];
      case 129:
         return &gradient_undersea[0];
      case 128:
         return &gradient_volcanic_red[0];
      case 138:
         return &gradient_dark[0];
      case 133:
         return &gradient_light[0];
      case 131:
         return &gradient_morning_blue[0];
      case 130:
         return &gradient_sunbeam[0];
      case 134:
      default:
         break;
   }

   return &gradient_legacy_red[0];
}
