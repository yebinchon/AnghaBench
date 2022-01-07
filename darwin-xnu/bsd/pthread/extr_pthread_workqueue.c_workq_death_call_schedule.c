
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct workqueue {int wq_death_call; int wq_flags; } ;
struct TYPE_2__ {int abstime; } ;


 int DBG_FUNC_NONE ;
 int THREAD_CALL_DELAY_LEEWAY ;
 int THREAD_CALL_DELAY_USER_BACKGROUND ;
 int TRACE_wq_death_call ;
 int WQ_DEATH_CALL_SCHEDULED ;
 int WQ_EXITING ;
 int WQ_TRACE_WQ (int,struct workqueue*,int,int ,int ,int ) ;
 int os_atomic_load (int *,int ) ;
 int os_atomic_or (int *,int,int ) ;
 int relaxed ;
 int thread_call_enter_delayed_with_leeway (int ,int *,int ,int,int) ;
 TYPE_1__ wq_reduce_pool_window ;

__attribute__((used)) static void
workq_death_call_schedule(struct workqueue *wq, uint64_t deadline)
{
 uint32_t wq_flags = os_atomic_load(&wq->wq_flags, relaxed);

 if (wq_flags & (WQ_EXITING | WQ_DEATH_CALL_SCHEDULED)) {
  return;
 }
 os_atomic_or(&wq->wq_flags, WQ_DEATH_CALL_SCHEDULED, relaxed);

 WQ_TRACE_WQ(TRACE_wq_death_call | DBG_FUNC_NONE, wq, 1, 0, 0, 0);







 thread_call_enter_delayed_with_leeway(wq->wq_death_call, ((void*)0), deadline,
   wq_reduce_pool_window.abstime / 10,
   THREAD_CALL_DELAY_LEEWAY | THREAD_CALL_DELAY_USER_BACKGROUND);
}
