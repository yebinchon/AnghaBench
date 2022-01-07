
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_POLICY_BACKTRACE ;
 int CHECK_POLICY_FAIL ;
 int CHECK_POLICY_PANIC ;
 int CHECK_POLICY_PERIODIC ;
 int CLASS_PERIOD_LIMIT ;
 int CLASS_PERIOD_MULT ;
 int EPERM ;
 int OSReportWithBacktrace (char*,int,int) ;
 int current_thread () ;
 int get_thread_lock_count (int ) ;
 int panic (char*,int) ;
 int policy_check_event ;
 int policy_check_next ;
 int policy_check_period ;
 int policy_flags ;

__attribute__((used)) static int
common_hook(void)
{
 int i;
 int rv = 0;

 if ((i = get_thread_lock_count(current_thread())) != 0) {




  if (policy_flags & CHECK_POLICY_FAIL)
   rv = EPERM;





  if ((policy_flags & (CHECK_POLICY_BACKTRACE | CHECK_POLICY_PANIC)) == CHECK_POLICY_BACKTRACE) {
   if (policy_flags & CHECK_POLICY_PERIODIC) {

       if (!(policy_check_event % policy_check_period)) {
    if (policy_check_event <= policy_check_next || policy_check_period == CLASS_PERIOD_LIMIT) {







     OSReportWithBacktrace("calling MACF hook with mutex count %d (event %d) ", i, policy_check_event);
    }
       } else {
    if (policy_check_period < CLASS_PERIOD_LIMIT) {
     policy_check_next *= CLASS_PERIOD_MULT;
     policy_check_period *= CLASS_PERIOD_MULT;
    }
       }
   } else {

    OSReportWithBacktrace("calling MACF hook with mutex count %d (event %d) ", i, policy_check_event);
   }
  }


  if (policy_flags & CHECK_POLICY_PANIC)
   panic("calling MACF hook with mutex count %d\n", i);


  policy_check_event++;
 }

 return rv;
}
