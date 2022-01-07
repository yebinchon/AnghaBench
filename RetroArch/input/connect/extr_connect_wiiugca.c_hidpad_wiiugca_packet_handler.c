
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_wiiugca_data {int* data; int buttons; } ;
 int memcpy (int*,int *,int ) ;

__attribute__((used)) static void hidpad_wiiugca_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   static const uint32_t button_mapping[12] =
   {
      139,
      138,
      129,
      128,
      135,
      133,
      137,
      130,
      131,
      132,
      134,
      136,
   };
   struct hidpad_wiiugca_data *device = (struct hidpad_wiiugca_data*)data;

   if (!device)
      return;

   memcpy(device->data, packet, size);

   device->buttons = 0;

   pressed_keys = device->data[3] | (device->data[4] << 8);

   for (i = 0; i < 12; i ++)
      device->buttons |= (pressed_keys & (1 << i)) ?
         (1 << button_mapping[i]) : 0;
}
