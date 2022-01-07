
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_STATUS_T ;
struct TYPE_4__ {int on_reply; } ;
struct TYPE_5__ {TYPE_1__ waiter; int waitsem; } ;
typedef TYPE_2__ VCOS_MSG_SIMPLE_WAITER_T ;


 int vcos_msgq_simple_waiter_on_reply ;
 int vcos_semaphore_create (int *,char*,int ) ;

__attribute__((used)) static VCOS_STATUS_T vcos_msgq_simple_waiter_init(VCOS_MSG_SIMPLE_WAITER_T *waiter)
{
   VCOS_STATUS_T status;
   status = vcos_semaphore_create(&waiter->waitsem, "waiter", 0);
   waiter->waiter.on_reply = vcos_msgq_simple_waiter_on_reply;
   return status;
}
