
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int udev_input_mouse_t ;
struct udev_input {unsigned int num_devices; TYPE_2__** devices; } ;
struct TYPE_5__ {unsigned int* input_mouse_index; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_6__ {scalar_t__ type; int mouse; } ;


 unsigned int MAX_USERS ;
 scalar_t__ UDEV_INPUT_KEYBOARD ;
 TYPE_3__* config_get_ptr () ;
 int video_driver_has_focus () ;

__attribute__((used)) static udev_input_mouse_t *udev_get_mouse(
      struct udev_input *udev, unsigned port)
{
   unsigned i;
   unsigned mouse_index = 0;
   settings_t *settings = config_get_ptr();
   udev_input_mouse_t *mouse = ((void*)0);

   if (port >= MAX_USERS || !video_driver_has_focus())
      return ((void*)0);

   for (i = 0; i < udev->num_devices; ++i)
   {
      if (udev->devices[i]->type == UDEV_INPUT_KEYBOARD)
         continue;

      if (mouse_index == settings->uints.input_mouse_index[port])
      {
         mouse = &udev->devices[i]->mouse;
         break;
      }

      ++mouse_index;
   }

   return mouse;
}
