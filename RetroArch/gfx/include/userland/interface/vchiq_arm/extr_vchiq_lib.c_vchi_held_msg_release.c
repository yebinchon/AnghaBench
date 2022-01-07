
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ message; int service; } ;
typedef TYPE_1__ VCHI_HELD_MSG_T ;


 int free_msgbuf (scalar_t__) ;

int32_t
vchi_held_msg_release( VCHI_HELD_MSG_T *message )
{
   int ret = -1;

   if (message && message->message && !message->service)
   {
      free_msgbuf(message->message);
      ret = 0;
   }

   return ret;
}
