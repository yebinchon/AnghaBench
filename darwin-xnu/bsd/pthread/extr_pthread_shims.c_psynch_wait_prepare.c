
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int uint64_t ;
typedef int thread_t ;
struct turnstile {int ts_waitq; } ;
typedef int event_t ;
typedef int event64_t ;
typedef int block_hint_t ;


 int THREAD_ABORTSAFE ;
 int TIMEOUT_URGENCY_USER_NORMAL ;
 int TURNSTILE_DELAYED_UPDATE ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_NULL ;
 int TURNSTILE_PTHREAD_MUTEX ;
 int assert_wait_deadline_with_leeway (int ,int ,int ,int ,int ) ;
 int current_thread () ;
 int thread_set_pending_block_hint (int ,int ) ;
 struct turnstile* turnstile_prepare (uintptr_t,struct turnstile**,int ,int ) ;
 int turnstile_update_inheritor (struct turnstile*,int ,int) ;
 int waitq_assert_wait64_leeway (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static wait_result_t
psynch_wait_prepare(uintptr_t kwq, struct turnstile **tstore,
  thread_t owner, block_hint_t block_hint, uint64_t deadline)
{
 struct turnstile *ts;
 wait_result_t wr;

 if (tstore) {
  ts = turnstile_prepare(kwq, tstore, TURNSTILE_NULL,
    TURNSTILE_PTHREAD_MUTEX);

  turnstile_update_inheritor(ts, owner,
    (TURNSTILE_DELAYED_UPDATE | TURNSTILE_INHERITOR_THREAD));

  thread_set_pending_block_hint(current_thread(), block_hint);

  wr = waitq_assert_wait64_leeway(&ts->ts_waitq, (event64_t)kwq,
    THREAD_ABORTSAFE, TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
 } else {
  thread_set_pending_block_hint(current_thread(), block_hint);

  wr = assert_wait_deadline_with_leeway((event_t)kwq, THREAD_ABORTSAFE,
    TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
 }

 return wr;
}
