
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int spl_t ;
typedef int sleep_type_t ;
typedef int mach_timespec_t ;
typedef int kern_return_t ;
typedef int event_t ;
typedef TYPE_3__* clock_t ;
typedef TYPE_4__* alarm_t ;
struct TYPE_13__ {scalar_t__ al_status; struct TYPE_13__* al_next; int al_time; TYPE_2__* al_prev; } ;
struct TYPE_12__ {TYPE_1__* cl_ops; } ;
struct TYPE_11__ {TYPE_4__* al_next; } ;
struct TYPE_10__ {int (* c_gettime ) (int *) ;} ;


 scalar_t__ ALARM_DONE ;
 scalar_t__ ALARM_FREE ;
 scalar_t__ ALARM_SLEEP ;
 TYPE_3__* CLOCK_NULL ;
 int KERN_ABORTED ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_VALUE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LOCK_ALARM (int ) ;
 size_t SYSTEM_CLOCK ;
 int THREAD_ABORTSAFE ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_INTERRUPTED ;
 scalar_t__ THREAD_WAITING ;
 int UNLOCK_ALARM (int ) ;
 int alarm_zone ;
 TYPE_4__* alrmfree ;
 int assert (int) ;
 scalar_t__ assert_wait (int ,int ) ;
 int check_time (int ,int *,int *) ;
 TYPE_3__* clock_list ;
 int post_alarm (TYPE_4__*) ;
 int stub1 (int *) ;
 scalar_t__ thread_block (int ) ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static kern_return_t
clock_sleep_internal(
 clock_t clock,
 sleep_type_t sleep_type,
 mach_timespec_t *sleep_time)
{
 alarm_t alarm;
 mach_timespec_t clock_time;
 kern_return_t rvalue;
 int chkstat;
 spl_t s;

 if (clock == CLOCK_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (clock != &clock_list[SYSTEM_CLOCK])
  return (KERN_FAILURE);





 (*clock->cl_ops->c_gettime)(&clock_time);

 chkstat = check_time(sleep_type, sleep_time, &clock_time);
 if (chkstat < 0)
  return (KERN_INVALID_VALUE);
 rvalue = KERN_SUCCESS;
 if (chkstat > 0) {
  wait_result_t wait_result;





  LOCK_ALARM(s);
  if ((alarm = alrmfree) == 0) {
   UNLOCK_ALARM(s);
   alarm = (alarm_t) zalloc(alarm_zone);
   if (alarm == 0)
    return (KERN_RESOURCE_SHORTAGE);
   LOCK_ALARM(s);
  }
  else
   alrmfree = alarm->al_next;




  wait_result = assert_wait((event_t)alarm, THREAD_ABORTSAFE);
  if (wait_result == THREAD_WAITING) {
   alarm->al_time = *sleep_time;
   alarm->al_status = ALARM_SLEEP;
   post_alarm(alarm);
   UNLOCK_ALARM(s);

   wait_result = thread_block(THREAD_CONTINUE_NULL);






   LOCK_ALARM(s);
   if (alarm->al_status != ALARM_DONE) {
    assert(wait_result != THREAD_AWAKENED);
    if (((alarm->al_prev)->al_next = alarm->al_next) != ((void*)0))
     (alarm->al_next)->al_prev = alarm->al_prev;
    rvalue = KERN_ABORTED;
   }
   *sleep_time = alarm->al_time;
   alarm->al_status = ALARM_FREE;
  } else {
   assert(wait_result == THREAD_INTERRUPTED);
   assert(alarm->al_status == ALARM_FREE);
   rvalue = KERN_ABORTED;
  }
  alarm->al_next = alrmfree;
  alrmfree = alarm;
  UNLOCK_ALARM(s);
 }
 else
  *sleep_time = clock_time;

 return (rvalue);
}
