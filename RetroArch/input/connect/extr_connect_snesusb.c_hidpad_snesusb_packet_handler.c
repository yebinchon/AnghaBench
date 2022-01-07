
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_snesusb_data {int* data; int buttons; } ;
 int memcpy (int*,int *,int ) ;

__attribute__((used)) static void hidpad_snesusb_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   static const uint32_t button_mapping[16] =
   {
      133,
      132,
      136,
      136,
      131,
      130,
      136,
      136,
      136,
      136,
      136,
      136,
      129,
      135,
      134,
      128
   };
   struct hidpad_snesusb_data *device = (struct hidpad_snesusb_data*)data;

   if (!device)
      return;

   memcpy(device->data, packet, size);

   device->buttons = 0;

   pressed_keys = device->data[7] | (device->data[6] << 8);

   for (i = 0; i < 16; i ++)
      if (button_mapping[i] != 136)
         device->buttons |= (pressed_keys & (1 << i)) ? (1 << button_mapping[i]) : 0;
}
