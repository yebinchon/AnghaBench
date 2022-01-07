
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int input_bits_t ;


 scalar_t__ BIT256_GET (int ,int) ;
 scalar_t__ GET_HAT_DIR (int) ;
 unsigned int MAX_USERS ;
 int libusb_hid_joypad_get_buttons (void*,unsigned int,int *) ;

__attribute__((used)) static bool libusb_hid_joypad_button(void *data,
      unsigned port, uint16_t joykey)
{
   input_bits_t buttons;
   libusb_hid_joypad_get_buttons(data, port, &buttons);


   if (GET_HAT_DIR(joykey))
      return 0;


   if ((port < MAX_USERS) && (joykey < 32))
      return (BIT256_GET(buttons, joykey) != 0);
   return 0;
}
