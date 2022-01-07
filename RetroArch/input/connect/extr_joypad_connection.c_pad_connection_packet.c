
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ data; TYPE_1__* iface; int connected; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_4__ {int (* packet_handler ) (scalar_t__,int *,int ) ;} ;


 int stub1 (scalar_t__,int *,int ) ;

void pad_connection_packet(joypad_connection_t *joyconn, uint32_t pad,
      uint8_t* data, uint32_t length)
{
   if (!joyconn || !joyconn->connected)
       return;
   if (joyconn->iface && joyconn->data && joyconn->iface->packet_handler)
      joyconn->iface->packet_handler(joyconn->data, data, length);
}
