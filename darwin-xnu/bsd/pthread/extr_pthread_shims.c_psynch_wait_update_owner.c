
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct turnstile {int dummy; } ;


 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_INTERLOCK_HELD ;
 int TURNSTILE_NULL ;
 int TURNSTILE_PTHREAD_MUTEX ;
 int turnstile_complete (uintptr_t,struct turnstile**,int *) ;
 struct turnstile* turnstile_prepare (uintptr_t,struct turnstile**,int ,int ) ;
 int turnstile_update_inheritor (struct turnstile*,int ,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

__attribute__((used)) static void
psynch_wait_update_owner(uintptr_t kwq, thread_t owner,
  struct turnstile **tstore)
{
 struct turnstile *ts;

 ts = turnstile_prepare(kwq, tstore, TURNSTILE_NULL,
   TURNSTILE_PTHREAD_MUTEX);

 turnstile_update_inheritor(ts, owner,
   (TURNSTILE_IMMEDIATE_UPDATE | TURNSTILE_INHERITOR_THREAD));
 turnstile_update_inheritor_complete(ts, TURNSTILE_INTERLOCK_HELD);
 turnstile_complete(kwq, tstore, ((void*)0));
}
