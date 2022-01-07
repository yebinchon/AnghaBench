
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int udev_input_t ;
struct TYPE_3__ {int l; int r; int m; int b4; int b5; int wu; int wd; int whu; int whd; } ;
typedef TYPE_1__ udev_input_mouse_t ;
 TYPE_1__* udev_get_mouse (int *,unsigned int) ;

__attribute__((used)) static bool udev_mouse_button_pressed(
      udev_input_t *udev, unsigned port, unsigned key)
{
   udev_input_mouse_t *mouse = udev_get_mouse(udev, port);

   if (!mouse)
      return 0;

   switch ( key )
   {
      case 132:
         return mouse->l;
      case 130:
         return mouse->r;
      case 131:
         return mouse->m;
      case 136:
         return mouse->b4;
      case 135:
         return mouse->b5;
      case 128:
         return mouse->wu;
      case 129:
         return mouse->wd;
      case 133:
         return mouse->whu;
      case 134:
         return mouse->whd;
   }

   return 0;
}
