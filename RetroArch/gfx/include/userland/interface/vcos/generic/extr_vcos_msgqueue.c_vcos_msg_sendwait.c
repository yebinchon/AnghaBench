
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VCOS_STATUS_T ;
struct TYPE_7__ {scalar_t__ magic; int * waiter; } ;
typedef TYPE_1__ VCOS_MSG_T ;
struct TYPE_8__ {int waitsem; int waiter; } ;
typedef TYPE_2__ VCOS_MSG_SIMPLE_WAITER_T ;
typedef int VCOS_MSGQUEUE_T ;


 scalar_t__ MAGIC ;
 int VCOS_SUCCESS ;
 int vcos_assert (int) ;
 int vcos_msg_send_helper (int *,int *,int ,TYPE_1__*) ;
 int vcos_msgq_simple_waiter_deinit (TYPE_2__*) ;
 int vcos_msgq_simple_waiter_init (TYPE_2__*) ;
 int vcos_semaphore_wait (int *) ;

VCOS_STATUS_T vcos_msg_sendwait(VCOS_MSGQUEUE_T *dest, uint32_t code, VCOS_MSG_T *msg)
{
   VCOS_STATUS_T st;
   VCOS_MSG_SIMPLE_WAITER_T waiter;

   vcos_assert(msg->magic == MAGIC);




   vcos_assert(msg->waiter == ((void*)0));

   if ((st=vcos_msgq_simple_waiter_init(&waiter)) != VCOS_SUCCESS)
      return st;

   vcos_msg_send_helper(&waiter.waiter, dest, code, msg);
   vcos_semaphore_wait(&waiter.waitsem);
   vcos_msgq_simple_waiter_deinit(&waiter);

   return VCOS_SUCCESS;
}
