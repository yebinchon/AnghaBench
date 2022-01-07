
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_y; int mouse_x; } ;
typedef TYPE_1__ x11_input_t ;
struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
typedef int const int16_t ;





 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int ,int ,int const*,int const*,int const*,int const*) ;

__attribute__((used)) static int16_t x_lightgun_aiming_state( x11_input_t *x11, unsigned idx, unsigned id )
{
   const int edge_detect = 32700;
   struct video_viewport vp;
   bool inside = 0;
   int16_t res_x = 0;
   int16_t res_y = 0;
   int16_t res_screen_x = 0;
   int16_t res_screen_y = 0;

   vp.x = 0;
   vp.y = 0;
   vp.width = 0;
   vp.height = 0;
   vp.full_width = 0;
   vp.full_height = 0;

   if (!(video_driver_translate_coord_viewport_wrap(&vp, x11->mouse_x, x11->mouse_y,
         &res_x, &res_y, &res_screen_x, &res_screen_y)))
      return 0;

   inside = (res_x >= -edge_detect) && (res_y >= -edge_detect) && (res_x <= edge_detect) && (res_y <= edge_detect);

   switch ( id )
   {
   case 129:
      return inside ? res_x : 0;
   case 128:
      return inside ? res_y : 0;
   case 130:
      return !inside;
   default:
      break;
   }

   return 0;
}
