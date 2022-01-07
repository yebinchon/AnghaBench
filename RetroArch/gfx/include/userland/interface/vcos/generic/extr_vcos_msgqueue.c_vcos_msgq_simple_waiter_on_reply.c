
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VCOS_MSG_WAITER_T ;
typedef int VCOS_MSG_T ;
struct TYPE_2__ {int waitsem; } ;
typedef TYPE_1__ VCOS_MSG_SIMPLE_WAITER_T ;


 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void vcos_msgq_simple_waiter_on_reply(VCOS_MSG_WAITER_T *waiter,
                                             VCOS_MSG_T *msg)
{
   VCOS_MSG_SIMPLE_WAITER_T *self;
   (void)msg;
   self = (VCOS_MSG_SIMPLE_WAITER_T*)waiter;
   vcos_semaphore_post(&self->waitsem);
}
