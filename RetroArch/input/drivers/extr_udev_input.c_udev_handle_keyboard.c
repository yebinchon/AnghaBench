
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xkb_handling; } ;
typedef TYPE_1__ udev_input_t ;
typedef int udev_input_device_t ;
struct input_event {int type; int value; int code; } ;


 int BIT_CLEAR (int ,unsigned int) ;
 int BIT_SET (int ,unsigned int) ;

 int RETRO_DEVICE_KEYBOARD ;
 int handle_xkb (unsigned int,int ) ;
 int input_keyboard_event (int ,int ,int ,int ,int ) ;
 int input_keymaps_translate_keysym_to_rk (unsigned int) ;
 unsigned int input_unify_ev_key_code (int ) ;
 int udev_key_state ;
 int video_driver_has_focus () ;

__attribute__((used)) static void udev_handle_keyboard(void *data,
      const struct input_event *event, udev_input_device_t *dev)
{



   unsigned keysym;

   switch (event->type)
   {
      case 128:
         keysym = input_unify_ev_key_code(event->code);
         if (event->value && video_driver_has_focus())
            BIT_SET(udev_key_state, keysym);
         else
            BIT_CLEAR(udev_key_state, keysym);






         input_keyboard_event(event->value,
               input_keymaps_translate_keysym_to_rk(keysym),
               0, 0, RETRO_DEVICE_KEYBOARD);
         break;

      default:
         break;
   }
}
