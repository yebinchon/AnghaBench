
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int turnstile_stats_update_flags_t ;
typedef TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
struct TYPE_3__ {struct waitq* waitq; } ;


 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_NO_TURNSTILE ;
 int TSU_THREAD_RUNNABLE ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 scalar_t__ waitq_is_port_queue (struct waitq*) ;
 int waitq_is_turnstile_queue (struct waitq*) ;

__attribute__((used)) static turnstile_stats_update_flags_t
thread_get_update_flags_for_turnstile_propagation_stoppage(thread_t thread)
{
 struct waitq *waitq = thread->waitq;


 if (waitq == ((void*)0)) {
  return TSU_THREAD_RUNNABLE;
 }


 if (waitq_is_port_queue(waitq)) {
  waitq = waitq_get_safeq(waitq);
 }


 if (!waitq_is_turnstile_queue(waitq)) {
  return TSU_NO_TURNSTILE;
 }


 return TSU_NO_PRI_CHANGE_NEEDED;
}
