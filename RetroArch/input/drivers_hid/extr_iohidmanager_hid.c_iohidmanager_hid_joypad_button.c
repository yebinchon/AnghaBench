
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int* buttons; int ** hats; } ;
typedef TYPE_1__ iohidmanager_hid_t ;
typedef int input_bits_t ;


 scalar_t__ BIT256_GET (int ,int) ;
 unsigned int GET_HAT (int) ;
 unsigned int GET_HAT_DIR (int) ;




 unsigned int MAX_USERS ;
 int iohidmanager_hid_joypad_get_buttons (void*,unsigned int,int *) ;

__attribute__((used)) static bool iohidmanager_hid_joypad_button(void *data,
      unsigned port, uint16_t joykey)
{
  input_bits_t buttons;
  iohidmanager_hid_t *hid = (iohidmanager_hid_t*)data;
  unsigned hat_dir = GET_HAT_DIR(joykey);

  iohidmanager_hid_joypad_get_buttons(data, port, &buttons);


   if (hat_dir)
   {
      unsigned h = GET_HAT(joykey);
      if (h >= 1)
         return 0;

      switch(hat_dir)
      {
         case 130:
            return hid->hats[port][0] < 0;
         case 129:
            return hid->hats[port][0] > 0;
         case 128:
            return hid->hats[port][1] < 0;
         case 131:
            return hid->hats[port][1] > 0;
      }

      return 0;
   }


   if ((port < MAX_USERS) && (joykey < 32))
      return (BIT256_GET(buttons, joykey) != 0)
         || ((hid->buttons[port] & (1 << joykey)) != 0);

   return 0;
}
