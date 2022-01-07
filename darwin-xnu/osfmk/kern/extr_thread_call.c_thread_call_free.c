
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_call_t ;
typedef int spl_t ;
typedef scalar_t__ int32_t ;
typedef int boolean_t ;
struct TYPE_6__ {int * queue; } ;
struct TYPE_7__ {int tc_flags; scalar_t__ tc_refs; scalar_t__ tc_finish_count; scalar_t__ tc_submit_count; TYPE_1__ tc_call; } ;


 int FALSE ;
 int THREAD_CALL_RESCHEDULE ;
 int THREAD_CALL_RUNNING ;
 int THREAD_CALL_SIGNAL ;
 int TRUE ;
 int assert (int) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int panic (char*,scalar_t__) ;
 int splx (int ) ;
 int thread_call_unlock () ;
 int thread_call_wait_once_locked (TYPE_2__*,int ) ;
 int thread_call_zone ;
 int zfree (int ,TYPE_2__*) ;

boolean_t
thread_call_free(
  thread_call_t call)
{
 spl_t s = disable_ints_and_lock();

 if (call->tc_call.queue != ((void*)0) ||
    ((call->tc_flags & THREAD_CALL_RESCHEDULE) != 0)) {
  thread_call_unlock();
  splx(s);

  return (FALSE);
 }

 int32_t refs = --call->tc_refs;
 if (refs < 0) {
  panic("Refcount negative: %d\n", refs);
 }

 if ((THREAD_CALL_SIGNAL | THREAD_CALL_RUNNING)
   == ((THREAD_CALL_SIGNAL | THREAD_CALL_RUNNING) & call->tc_flags)) {
  thread_call_wait_once_locked(call, s);

 } else {
  enable_ints_and_unlock(s);
 }

 if (refs == 0) {
  assert(call->tc_finish_count == call->tc_submit_count);
  zfree(thread_call_zone, call);
 }

 return (TRUE);
}
