
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int udev_input_t ;
struct TYPE_5__ {int l; } ;
typedef TYPE_1__ udev_input_mouse_t ;
typedef int int16_t ;





 TYPE_1__* udev_get_mouse (int *,unsigned int) ;
 int udev_mouse_get_pointer_x (TYPE_1__*,int) ;
 int udev_mouse_get_pointer_y (TYPE_1__*,int) ;

__attribute__((used)) static int16_t udev_pointer_state(udev_input_t *udev,
      unsigned port, unsigned id, bool screen)
{
   udev_input_mouse_t *mouse = udev_get_mouse(udev, port);

   if (!mouse)
      return 0;

   switch (id)
   {
      case 129:
         return udev_mouse_get_pointer_x(mouse, screen);
      case 128:
         return udev_mouse_get_pointer_y(mouse, screen);
      case 130:
         return mouse->l;
   }

   return 0;
}
