
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int data; TYPE_1__* iface; int connected; } ;
typedef TYPE_2__ joypad_connection_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_4__ {int (* set_rumble ) (int ,int,int ) ;} ;


 int stub1 (int ,int,int ) ;

bool pad_connection_rumble(joypad_connection_t *joyconn,
   unsigned pad, enum retro_rumble_effect effect, uint16_t strength)
{
   if (!joyconn->connected)
      return 0;
   if (!joyconn->iface || !joyconn->iface->set_rumble)
      return 0;

   joyconn->iface->set_rumble(joyconn->data, effect, strength);
   return 1;
}
