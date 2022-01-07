
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int s32 ;
typedef int lwp_cntrl ;
typedef int cond_t ;
struct TYPE_3__ {int lock; int wait_queue; } ;
typedef TYPE_1__ cond_st ;


 int LWP_MUTEX_NULL ;
 TYPE_1__* __lwp_cond_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 int * __lwp_threadqueue_dequeue (int *) ;

__attribute__((used)) static s32 __lwp_cond_signalsupp(cond_t cond,u8 isbroadcast)
{
 lwp_cntrl *thethread;
 cond_st *thecond = __lwp_cond_open(cond);
 if(!thecond) return -1;

 do {
  thethread = __lwp_threadqueue_dequeue(&thecond->wait_queue);
  if(!thethread) thecond->lock = LWP_MUTEX_NULL;
 } while(isbroadcast && thethread);
 __lwp_thread_dispatchenable();
 return 0;
}
