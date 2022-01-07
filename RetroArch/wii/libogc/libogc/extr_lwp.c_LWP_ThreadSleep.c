
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int tqueue; } ;
typedef TYPE_2__ tqueue_st ;
typedef int s32 ;
typedef int lwpq_t ;
struct TYPE_6__ {int id; int * queue; int * ret_arg_1; int * ret_arg; scalar_t__ ret_code; } ;
struct TYPE_8__ {TYPE_1__ wait; } ;
typedef TYPE_3__ lwp_cntrl ;


 int LWP_THREADQ_NOTIMEOUT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_threadqueue_csenter (int *) ;
 int __lwp_threadqueue_enqueue (int *,int ) ;
 TYPE_2__* __lwp_tqueue_open (int ) ;
 TYPE_3__* _thr_executing ;

s32 LWP_ThreadSleep(lwpq_t thequeue)
{
 u32 level;
 tqueue_st *tq;
 lwp_cntrl *exec = ((void*)0);

 tq = __lwp_tqueue_open(thequeue);
 if(!tq) return -1;

 exec = _thr_executing;
 _CPU_ISR_Disable(level);
 __lwp_threadqueue_csenter(&tq->tqueue);
 exec->wait.ret_code = 0;
 exec->wait.ret_arg = ((void*)0);
 exec->wait.ret_arg_1 = ((void*)0);
 exec->wait.queue = &tq->tqueue;
 exec->wait.id = thequeue;
 _CPU_ISR_Restore(level);
 __lwp_threadqueue_enqueue(&tq->tqueue,LWP_THREADQ_NOTIMEOUT);
 __lwp_thread_dispatchenable();
 return 0;
}
