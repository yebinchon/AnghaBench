
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer_x; scalar_t__ pointer_y; } ;
typedef TYPE_1__ udev_input_t ;
struct video_viewport {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;


 int video_driver_get_viewport_info (struct video_viewport*) ;

__attribute__((used)) static bool udev_pointer_is_off_window(const udev_input_t *udev)
{
   return 0;

}
