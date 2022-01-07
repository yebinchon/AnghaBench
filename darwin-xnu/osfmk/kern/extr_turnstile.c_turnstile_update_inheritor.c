
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int turnstile_update_flags_t ;
typedef scalar_t__ turnstile_inheritor_t ;
typedef TYPE_1__* thread_t ;
struct workqueue {int dummy; } ;
struct turnstile {int ts_waitq; } ;
typedef int spl_t ;
struct TYPE_4__ {scalar_t__ inheritor; int inheritor_flags; } ;


 int TURNSTILE_DELAYED_UPDATE ;
 scalar_t__ TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INHERITOR_WORKQ ;
 int TURNSTILE_UPDATE_FLAGS_NONE ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int panic (char*,int,scalar_t__) ;
 int splsched () ;
 int splx (int ) ;
 int thread_reference (TYPE_1__*) ;
 int turnstile_reference (struct turnstile*) ;
 int turnstile_update_inheritor_locked (struct turnstile*) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;
 int workq_reference (struct workqueue*) ;

void
turnstile_update_inheritor(
 struct turnstile *turnstile,
 turnstile_inheritor_t new_inheritor,
 turnstile_update_flags_t flags)
{
 thread_t thread = current_thread();
 spl_t spl;






 assert(thread->inheritor == TURNSTILE_INHERITOR_NULL);
 thread->inheritor = new_inheritor;
 thread->inheritor_flags = TURNSTILE_UPDATE_FLAGS_NONE;
 if (new_inheritor == TURNSTILE_INHERITOR_NULL) {

 } else if (flags & TURNSTILE_INHERITOR_THREAD) {
  thread->inheritor_flags |= TURNSTILE_INHERITOR_THREAD;
  thread_reference((thread_t)new_inheritor);
 } else if (flags & TURNSTILE_INHERITOR_TURNSTILE) {
  thread->inheritor_flags |= TURNSTILE_INHERITOR_TURNSTILE;
  turnstile_reference((struct turnstile *)new_inheritor);
 } else if (flags & TURNSTILE_INHERITOR_WORKQ) {
  thread->inheritor_flags |= TURNSTILE_INHERITOR_WORKQ;
  workq_reference((struct workqueue *)new_inheritor);
 } else {
  panic("Missing type in flags (%x) for inheritor (%p)", flags,
    new_inheritor);
 }


 if (flags & TURNSTILE_DELAYED_UPDATE) {
  return;
 }


 spl = splsched();
 waitq_lock(&turnstile->ts_waitq);

 turnstile_update_inheritor_locked(turnstile);

 waitq_unlock(&turnstile->ts_waitq);
 splx(spl);

 return;
}
