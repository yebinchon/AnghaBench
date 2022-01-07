
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ magic; } ;
typedef TYPE_1__ VCOS_MSG_T ;
typedef int VCOS_MSGQUEUE_T ;


 scalar_t__ MAGIC ;
 int vcos_assert (int) ;
 int vcos_msg_send_helper (int *,int *,int ,TYPE_1__*) ;

void vcos_msg_send(VCOS_MSGQUEUE_T *dest, uint32_t code, VCOS_MSG_T *msg)
{
   vcos_assert(msg->magic == MAGIC);
   vcos_msg_send_helper(((void*)0), dest, code, msg);
}
