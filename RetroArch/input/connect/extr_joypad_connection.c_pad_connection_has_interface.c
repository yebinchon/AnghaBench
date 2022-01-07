
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iface; scalar_t__ connected; } ;
typedef TYPE_1__ joypad_connection_t ;


 unsigned int MAX_USERS ;

bool pad_connection_has_interface(joypad_connection_t *joyconn, unsigned pad)
{
   if ( joyconn && pad < MAX_USERS
         && joyconn[pad].connected
         && joyconn[pad].iface)
      return 1;
   return 0;
}
