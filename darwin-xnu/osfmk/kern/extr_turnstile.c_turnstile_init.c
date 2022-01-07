
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int * ts_prev_thread; int ts_thread; int ts_inheritor_queue; scalar_t__ ts_port_ref; int ts_inheritor_flags; int ts_priority; int ts_proprietor; int ts_refcount; scalar_t__ ts_type_gencount; int ts_free_turnstiles; int ts_inheritor; int ts_waitq; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MAXPRI_THROTTLE ;
 int PRIORITY_QUEUE_BUILTIN_MAX_HEAP ;
 int SLIST_INIT (int *) ;
 int SYNC_POLICY_DISABLE_IRQ ;
 int SYNC_POLICY_REVERSED ;
 int SYNC_POLICY_TURNSTILE ;
 int TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_NONE ;
 int TURNSTILE_PROPRIETOR_NULL ;
 int TURNSTILE_STATE_THREAD ;
 int TURNSTILE_UPDATE_FLAGS_NONE ;
 int assert (int) ;
 int current_thread () ;
 int os_ref_init_count (int *,int *,int) ;
 int priority_queue_init (int *,int ) ;
 int turnstile_refgrp ;
 int turnstile_set_type_and_increment_gencount (struct turnstile*,int ) ;
 int turnstile_state_init (struct turnstile*,int ) ;
 scalar_t__ waitq_init (int *,int) ;

__attribute__((used)) static void
turnstile_init(struct turnstile *turnstile)
{
 kern_return_t kret;


 kret = waitq_init(&turnstile->ts_waitq, SYNC_POLICY_DISABLE_IRQ | SYNC_POLICY_REVERSED |
  SYNC_POLICY_TURNSTILE);
 assert(kret == KERN_SUCCESS);

 turnstile->ts_inheritor = TURNSTILE_INHERITOR_NULL;
 SLIST_INIT(&turnstile->ts_free_turnstiles);
 turnstile->ts_type_gencount = 0;
 turnstile_set_type_and_increment_gencount(turnstile, TURNSTILE_NONE);
 turnstile_state_init(turnstile, TURNSTILE_STATE_THREAD);
 os_ref_init_count(&turnstile->ts_refcount, &turnstile_refgrp, 1);
 turnstile->ts_proprietor = TURNSTILE_PROPRIETOR_NULL;
 turnstile->ts_priority = MAXPRI_THROTTLE;
 turnstile->ts_inheritor_flags = TURNSTILE_UPDATE_FLAGS_NONE;
 turnstile->ts_port_ref = 0;
 priority_queue_init(&turnstile->ts_inheritor_queue,
   PRIORITY_QUEUE_BUILTIN_MAX_HEAP);





}
