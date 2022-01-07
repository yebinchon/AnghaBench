
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef scalar_t__ cond_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ object; int wait_queue; int lock; } ;
typedef TYPE_2__ cond_st ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int LWP_MUTEX_NULL ;
 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_COND ;
 int LWP_STATES_WAITING_FOR_CONDVAR ;
 int LWP_THREADQ_MODEFIFO ;
 TYPE_2__* __lwp_cond_allocate () ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;

s32 LWP_CondInit(cond_t *cond)
{
 cond_st *ret;

 if(!cond) return -1;

 ret = __lwp_cond_allocate();
 if(!ret) return ENOMEM;

 ret->lock = LWP_MUTEX_NULL;
 __lwp_threadqueue_init(&ret->wait_queue,LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_CONDVAR,ETIMEDOUT);

 *cond = (cond_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_COND)|LWP_OBJMASKID(ret->object.id));
 __lwp_thread_dispatchenable();

 return 0;
}
