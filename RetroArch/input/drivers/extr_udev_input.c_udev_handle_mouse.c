
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int l; int r; int m; int wu; int wd; int whu; int whd; } ;
typedef TYPE_1__ udev_input_mouse_t ;
struct TYPE_7__ {TYPE_1__ mouse; } ;
typedef TYPE_2__ udev_input_device_t ;
struct input_event {int type; int value; int code; } ;
 int udev_mouse_set_x (TYPE_1__*,int,int) ;
 int udev_mouse_set_y (TYPE_1__*,int,int) ;

__attribute__((used)) static void udev_handle_mouse(void *data,
      const struct input_event *event, udev_input_device_t *dev)
{
   udev_input_mouse_t *mouse = &dev->mouse;

   switch (event->type)
   {
      case 133:
         switch (event->code)
         {
            case 137:
               mouse->l = event->value;
               break;

            case 135:
               mouse->r = event->value;
               break;

            case 136:
               mouse->m = event->value;
               break;
            default:
               break;
         }
         break;

      case 132:
         switch (event->code)
         {
            case 129:
               udev_mouse_set_x(mouse, event->value, 0);
               break;
            case 128:
               udev_mouse_set_y(mouse, event->value, 0);
               break;
            case 130:
               if (event->value == 1)
                  mouse->wu = 1;
               else if (event->value == -1)
                  mouse->wd = 1;
               break;
            case 131:
               if (event->value == 1)
                  mouse->whu = 1;
               else if (event->value == -1)
                  mouse->whd = 1;
               break;
         }
         break;

      case 134:
         switch (event->code)
         {
            case 139:
               udev_mouse_set_x(mouse, event->value, 1);
               break;
            case 138:
               udev_mouse_set_y(mouse, event->value, 1);
               break;
         }
         break;
   }
}
