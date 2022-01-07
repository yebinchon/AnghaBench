
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int buttons; int* data; } ;
typedef TYPE_1__ ds3_instance_t ;
__attribute__((used)) static void ds3_update_pad_state(ds3_instance_t *instance)
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

   instance->buttons = 0;

   pressed_keys = instance->data[2]|(instance->data[3] << 8)|((instance->data[4] & 0x01) << 16);

   for(i = 0; i < 17; i++)
     instance->buttons |= (pressed_keys & (1 << i)) ?
        (1 << button_mapping[i]) : 0;
}
