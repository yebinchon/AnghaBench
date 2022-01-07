
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wiiu_hid_t ;
typedef int uint16_t ;
struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_4__ {int (* set_rumble ) (int ,int,int ) ;} ;


 TYPE_2__* get_pad (int *,unsigned int) ;
 int stub1 (int ,int,int ) ;

__attribute__((used)) static bool wiiu_hid_joypad_rumble(void *data, unsigned slot,
      enum retro_rumble_effect effect, uint16_t strength)
{
   joypad_connection_t *pad = get_pad((wiiu_hid_t *)data, slot);

   if (!pad)
      return 0;

   pad->iface->set_rumble(pad->data, effect, strength);
   return 0;
}
