
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double y; double full_height; double height; } ;
typedef TYPE_1__ video_viewport_t ;
struct TYPE_6__ {int y_min; int y_max; double y_abs; } ;
typedef TYPE_2__ udev_input_mouse_t ;
typedef double int32_t ;
typedef double int16_t ;


 int video_driver_get_viewport_info (TYPE_1__*) ;

__attribute__((used)) static int16_t udev_mouse_get_pointer_y(const udev_input_mouse_t *mouse, bool screen)
{
   video_viewport_t vp;
   double src_min;
   double src_height;
   int32_t y;

   if (!video_driver_get_viewport_info(&vp))
      return 0;

   if (mouse->y_min < mouse->y_max)
   {
      src_min = mouse->y_min;
      src_height = mouse->y_max - mouse->y_min + 1;
   }
   else
   {
      src_min = vp.y;
      if (screen)
         src_height = vp.full_height;
      else
         src_height = vp.height;
   }

   y = -32767.0 + 65535.0 / src_height * (mouse->y_abs - src_min);
   y += (y < 0 ? -0.5 : 0.5);

   if (y < -0x7fff)
      y = -0x7fff;
   else if(y > 0x7fff)
      y = 0x7fff;

   return y;
}
