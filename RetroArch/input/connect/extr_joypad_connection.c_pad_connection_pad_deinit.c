
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int connected; TYPE_1__* iface; int data; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_4__ {int (* deinit ) (int ) ;int (* set_rumble ) (int ,int ,int ) ;} ;


 int RETRO_RUMBLE_STRONG ;
 int RETRO_RUMBLE_WEAK ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ) ;

void pad_connection_pad_deinit(joypad_connection_t *joyconn, uint32_t pad)
{
   if (!joyconn || !joyconn->connected)
       return;

   if (joyconn->iface)
   {
      joyconn->iface->set_rumble(joyconn->data, RETRO_RUMBLE_STRONG, 0);
      joyconn->iface->set_rumble(joyconn->data, RETRO_RUMBLE_WEAK, 0);

      if (joyconn->iface->deinit)
         joyconn->iface->deinit(joyconn->data);
   }

   joyconn->iface = ((void*)0);
   joyconn->connected = 0;
}
