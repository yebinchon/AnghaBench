
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pointer_y; int pointer_x; } ;
typedef TYPE_1__ udev_input_t ;
struct TYPE_10__ {int whd; int whu; int wd; int wu; int b5; int b4; int m; int r; int l; } ;
typedef TYPE_2__ udev_input_mouse_t ;
typedef int int16_t ;
 TYPE_2__* udev_get_mouse (TYPE_1__*,unsigned int) ;
 int udev_mouse_get_x (TYPE_2__*) ;
 int udev_mouse_get_y (TYPE_2__*) ;
 scalar_t__ udev_pointer_is_off_window (TYPE_1__*) ;

__attribute__((used)) static int16_t udev_mouse_state(udev_input_t *udev,
      unsigned port, unsigned id, bool screen)
{
   udev_input_mouse_t *mouse = udev_get_mouse(udev, port);

   if (!mouse)
      return 0;

   if (id != 129 && id != 128 &&
         udev_pointer_is_off_window(udev))
      return 0;

   switch (id)
   {
      case 129:
         return screen ? udev->pointer_x : udev_mouse_get_x(mouse);
      case 128:
         return screen ? udev->pointer_y : udev_mouse_get_y(mouse);
      case 134:
         return mouse->l;
      case 132:
         return mouse->r;
      case 133:
         return mouse->m;
      case 138:
         return mouse->b4;
      case 137:
         return mouse->b5;
      case 130:
         return mouse->wu;
      case 131:
         return mouse->wd;
      case 135:
         return mouse->whu;
      case 136:
         return mouse->whd;
   }

   return 0;
}
