
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hidpad_psxadapter_data {int* data; int buttons; } ;
typedef int int16_t ;



 scalar_t__ PSX_H_DOWN (int ) ;
 int PSX_H_GET (int) ;
 scalar_t__ PSX_H_LEFT (int ) ;
 scalar_t__ PSX_H_RIGHT (int ) ;
 scalar_t__ PSX_H_UP (int ) ;


 int RETRO_DEVICE_ID_JOYPAD_DOWN ;



 int RETRO_DEVICE_ID_JOYPAD_LEFT ;



 int RETRO_DEVICE_ID_JOYPAD_RIGHT ;


 int RETRO_DEVICE_ID_JOYPAD_UP ;


 int memcpy (int*,int *,int ) ;

__attribute__((used)) static void hidpad_psxadapter_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   uint32_t i, pressed_keys;
   int16_t hat_value;
   static const uint32_t button_mapping[16] =
   {
      136,
      133,
      137,
      134,
      131,
      130,
      135,
      132,
      140,
      140,
      140,
      140,
      129,
      139,
      138,
      128,
   };
   struct hidpad_psxadapter_data *device = (struct hidpad_psxadapter_data*)data;

   if (!device)
      return;

   memcpy(device->data, packet, size);

   device->buttons = 0;

   pressed_keys = device->data[7] | (device->data[6] << 8);

   for (i = 0; i < 16; i ++)
      if (button_mapping[i] != 140)
         device->buttons |= (pressed_keys & (1 << i)) ? (1 << button_mapping[i]) : 0;

   if (device->data[2]==0x7F)
   {

      device->buttons |= (device->data[4]==0x00) ? (1 << RETRO_DEVICE_ID_JOYPAD_LEFT) : 0;
      device->buttons |= (device->data[4]==0xFF) ? (1 << RETRO_DEVICE_ID_JOYPAD_RIGHT) : 0;
      device->buttons |= (device->data[5]==0x00) ? (1 << RETRO_DEVICE_ID_JOYPAD_UP) : 0;
      device->buttons |= (device->data[5]==0xFF) ? (1 << RETRO_DEVICE_ID_JOYPAD_DOWN) : 0;
   }
   else
   {

      hat_value = PSX_H_GET(device->data[6]);
      device->buttons |= PSX_H_LEFT(hat_value) ? (1 << RETRO_DEVICE_ID_JOYPAD_LEFT) : 0;
      device->buttons |= PSX_H_RIGHT(hat_value) ? (1 << RETRO_DEVICE_ID_JOYPAD_RIGHT) : 0;
      device->buttons |= PSX_H_UP(hat_value) ? (1 << RETRO_DEVICE_ID_JOYPAD_UP) : 0;
      device->buttons |= PSX_H_DOWN(hat_value) ? (1 << RETRO_DEVICE_ID_JOYPAD_DOWN) : 0;
   }
}
