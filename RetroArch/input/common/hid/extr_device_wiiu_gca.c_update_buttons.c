
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* data; int buttons; } ;
typedef TYPE_1__ gca_pad_t ;
__attribute__((used)) static void update_buttons(gca_pad_t *pad)
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

   if(!pad)
      return;

   pressed_keys = pad->data[1] | (pad->data[2] << 8);
   pad->buttons = 0;

   for (i = 0; i < 12; i++)
      pad->buttons |= (pressed_keys & (1 << i)) ?
         (1 << button_mapping[i]) : 0;
}
