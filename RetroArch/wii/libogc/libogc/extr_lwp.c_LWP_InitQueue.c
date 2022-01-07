
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ object; int tqueue; } ;
typedef TYPE_2__ tqueue_st ;
typedef int s32 ;
typedef scalar_t__ lwpq_t ;


 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_TQUEUE ;
 int LWP_STATES_WAITING_ON_THREADQ ;
 int LWP_THREADQ_MODEFIFO ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;
 TYPE_2__* __lwp_tqueue_allocate () ;

s32 LWP_InitQueue(lwpq_t *thequeue)
{
 tqueue_st *tq;

 if(!thequeue) return -1;

 tq = __lwp_tqueue_allocate();
 if(!tq) return -1;

 __lwp_threadqueue_init(&tq->tqueue,LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_ON_THREADQ,0);

 *thequeue = (lwpq_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_TQUEUE)|LWP_OBJMASKID(tq->object.id));
 __lwp_thread_dispatchenable();

 return 0;
}
