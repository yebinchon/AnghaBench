
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_ps3_data {int have_led; int* data; int buttons; } ;
 int hidpad_ps3_send_control (struct hidpad_ps3_data*) ;
 int memcpy (int*,int *,int ) ;

__attribute__((used)) static void hidpad_ps3_packet_handler(void *data,
      uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   static const uint32_t button_mapping[17] =
   {
      132,
      138,
      134,
      131,
      130,
      133,
      141,
      137,
      139,
      135,
      140,
      136,
      129,
      143,
      142,
      128,
      16
   };
   struct hidpad_ps3_data *device = (struct hidpad_ps3_data*)data;

   if (!device)
      return;

   if (!device->have_led)
   {
      hidpad_ps3_send_control(device);
      device->have_led = 1;
   }

   memcpy(device->data, packet, size);

   device->buttons = 0;

   pressed_keys = device->data[3] | (device->data[4] << 8) |
      ((device->data[5] & 1) << 16);

   for (i = 0; i < 17; i ++)
      device->buttons |= (pressed_keys & (1 << i)) ?
         (1 << button_mapping[i]) : 0;
}
