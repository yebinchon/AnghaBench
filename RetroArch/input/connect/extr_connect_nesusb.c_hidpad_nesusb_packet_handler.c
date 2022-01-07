
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_nesusb_data {int* data; int buttons; } ;
 int memcpy (int*,int *,int ) ;

__attribute__((used)) static void hidpad_nesusb_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   static const uint32_t button_mapping[17] =
   {
      134,
      132,
      135,
      133,
      131,
      130,
      138,
      138,
      138,
      138,
      138,
      138,
      136,
      137,
      128,
      129,
   };
   struct hidpad_nesusb_data *device = (struct hidpad_nesusb_data*)data;

   if (!device)
      return;

   memcpy(device->data, packet, size);

   device->buttons = 0;

   pressed_keys = device->data[7] | (device->data[6] << 8);

   for (i = 0; i < 16; i ++)
      if (button_mapping[i] != 138)
         device->buttons |= (pressed_keys & (1 << i)) ? (1 << button_mapping[i]) : 0;
}
