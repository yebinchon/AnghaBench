
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_retrode_data {int* data; int buttons; } ;


 int const NO_BTN ;
 int memcpy (int*,int*,int ) ;
 struct hidpad_retrode_data** port_device ;

__attribute__((used)) static void hidpad_retrode_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   static const uint32_t button_mapping[8] =
   {
           134,
           128,
           131,
           130,
           135,
           129,
           133,
           132
   };
   struct hidpad_retrode_data *device = (struct hidpad_retrode_data*)data;
   struct hidpad_retrode_data *device1234;

   if (!device)
      return;
   device1234 = port_device[packet[1] - 1];

   if (!device1234)
      return;

   memcpy(device1234->data, packet, size);

   device1234->buttons = 0;

   pressed_keys = device1234->data[4];

   for (i = 0; i < 8; i ++)
      if (button_mapping[i] != NO_BTN)
          device1234->buttons |= (pressed_keys & (1 << i)) ? (1 << button_mapping[i]) : 0;
}
