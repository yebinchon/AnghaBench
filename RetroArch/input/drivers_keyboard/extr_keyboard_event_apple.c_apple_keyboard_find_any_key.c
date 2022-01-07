
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_2__ {int hid_id; } ;


 TYPE_1__* apple_key_name_map ;
 scalar_t__* apple_key_state ;

int32_t apple_keyboard_find_any_key(void)
{
   unsigned i;

   for (i = 0; apple_key_name_map[i].hid_id; i++)
      if (apple_key_state[apple_key_name_map[i].hid_id])
         return apple_key_name_map[i].hid_id;

   return 0;
}
