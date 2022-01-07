
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
struct turnstile {int dummy; } ;
struct TYPE_3__ {struct waitq* waitq; } ;


 struct turnstile* TURNSTILE_NULL ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 scalar_t__ waitq_is_port_queue (struct waitq*) ;
 scalar_t__ waitq_is_turnstile_queue (struct waitq*) ;
 struct turnstile* waitq_to_turnstile (struct waitq*) ;

struct turnstile *
thread_get_waiting_turnstile(thread_t thread)
{
 struct turnstile *turnstile = TURNSTILE_NULL;
 struct waitq *waitq = thread->waitq;


 if (waitq == ((void*)0)) {
  return turnstile;
 }


 if (waitq_is_port_queue(waitq)) {
  waitq = waitq_get_safeq(waitq);
 }


 if (waitq_is_turnstile_queue(waitq)) {
  turnstile = waitq_to_turnstile(waitq);
 }
 return turnstile;
}
