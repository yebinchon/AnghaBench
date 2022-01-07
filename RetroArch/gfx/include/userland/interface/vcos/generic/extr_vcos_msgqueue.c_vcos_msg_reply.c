
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; int code; TYPE_3__* waiter; } ;
typedef TYPE_1__ VCOS_MSG_T ;
struct TYPE_6__ {int (* on_reply ) (TYPE_3__*,TYPE_1__*) ;} ;


 scalar_t__ MAGIC ;
 int MSG_REPLY_BIT ;
 int VCOS_ALERT (char*,int ,int ) ;
 int VCOS_FUNCTION ;
 int stub1 (TYPE_3__*,TYPE_1__*) ;
 int vcos_assert (int) ;

void vcos_msg_reply(VCOS_MSG_T *msg)
{
   vcos_assert(msg->magic == MAGIC);
   msg->code |= MSG_REPLY_BIT;
   if (msg->waiter)
   {
      msg->waiter->on_reply(msg->waiter, msg);
   }
   else
   {
      VCOS_ALERT("%s: reply to non-reply message id %d",
                 VCOS_FUNCTION,
                 msg->code);
      vcos_assert(0);
   }
}
