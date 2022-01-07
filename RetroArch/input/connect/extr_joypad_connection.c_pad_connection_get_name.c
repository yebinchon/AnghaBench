
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_4__ {char const* (* get_name ) (int ) ;} ;


 char const* stub1 (int ) ;

const char* pad_connection_get_name(joypad_connection_t *joyconn, unsigned pad)
{
   if (!joyconn || !joyconn->iface || !joyconn->iface->get_name)
      return ((void*)0);
   return joyconn->iface->get_name(joyconn->data);
}
