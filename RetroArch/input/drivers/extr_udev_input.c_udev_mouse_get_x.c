
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double full_width; scalar_t__ width; } ;
typedef TYPE_1__ video_viewport_t ;
struct TYPE_6__ {scalar_t__ x_min; scalar_t__ x_max; double x_rel; } ;
typedef TYPE_2__ udev_input_mouse_t ;
typedef double int16_t ;


 int video_driver_get_viewport_info (TYPE_1__*) ;

__attribute__((used)) static int16_t udev_mouse_get_x(const udev_input_mouse_t *mouse)
{
   video_viewport_t vp;
   double src_width;
   double x;

   if (!video_driver_get_viewport_info(&vp))
      return 0;

   if (mouse->x_min < mouse->x_max)
      src_width = mouse->x_max - mouse->x_min + 1;
   else
      src_width = vp.full_width;

   x = (double)vp.width / src_width * mouse->x_rel;

   return x + (x < 0 ? -0.5 : 0.5);
}
