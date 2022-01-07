
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
typedef int int16_t ;
struct TYPE_4__ {int (* get_axis ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

int16_t pad_connection_get_axis(joypad_connection_t *joyconn,
   unsigned idx, unsigned i)
{
   if (!joyconn || !joyconn->iface)
      return 0;
   return joyconn->iface->get_axis(joyconn->data, i);
}
