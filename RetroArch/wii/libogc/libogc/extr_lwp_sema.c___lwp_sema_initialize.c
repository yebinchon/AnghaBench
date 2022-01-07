
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_semattr ;
struct TYPE_3__ {int wait_queue; int count; int attrs; } ;
typedef TYPE_1__ lwp_sema ;


 int LWP_SEMA_TIMEOUT ;
 int LWP_STATES_WAITING_FOR_SEMAPHORE ;
 int LWP_THREADQ_MODEFIFO ;
 int LWP_THREADQ_MODEPRIORITY ;
 scalar_t__ __lwp_sema_ispriority (int *) ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;

void __lwp_sema_initialize(lwp_sema *sema,lwp_semattr *attrs,u32 init_count)
{
 sema->attrs = *attrs;
 sema->count = init_count;

 __lwp_threadqueue_init(&sema->wait_queue,__lwp_sema_ispriority(attrs)?LWP_THREADQ_MODEPRIORITY:LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_SEMAPHORE,LWP_SEMA_TIMEOUT);
}
