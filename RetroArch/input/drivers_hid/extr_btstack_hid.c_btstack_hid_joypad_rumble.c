
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_2__ {int * slots; } ;
typedef TYPE_1__ btstack_hid_t ;


 int pad_connection_rumble (int *,unsigned int,int,int ) ;

__attribute__((used)) static bool btstack_hid_joypad_rumble(void *data, unsigned pad,
      enum retro_rumble_effect effect, uint16_t strength)
{
   btstack_hid_t *hid = (btstack_hid_t*)data;
   if (!hid)
      return 0;
   return pad_connection_rumble(&hid->slots[pad], pad, effect, strength);
}
