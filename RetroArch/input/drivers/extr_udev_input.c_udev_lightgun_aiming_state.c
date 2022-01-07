
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pointer_y; int pointer_x; } ;
typedef TYPE_1__ udev_input_t ;
typedef int udev_input_mouse_t ;
struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
typedef int const int16_t ;





 int * udev_get_mouse (TYPE_1__*,unsigned int) ;
 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int ,int ,int const*,int const*,int const*,int const*) ;

__attribute__((used)) static int16_t udev_lightgun_aiming_state(udev_input_t *udev, unsigned port, unsigned id )
{
   const int edge_detect = 32700;
   struct video_viewport vp;
   bool inside = 0;
   int16_t res_x = 0;
   int16_t res_y = 0;
   int16_t res_screen_x = 0;
   int16_t res_screen_y = 0;

   udev_input_mouse_t *mouse = udev_get_mouse(udev, port);

   vp.x = 0;
   vp.y = 0;
   vp.width = 0;
   vp.height = 0;
   vp.full_width = 0;
   vp.full_height = 0;

   if (!mouse)
      return 0;

   if (!(video_driver_translate_coord_viewport_wrap(&vp, udev->pointer_x, udev->pointer_y,
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
