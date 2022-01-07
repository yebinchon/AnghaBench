
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xnupost_test_t ;
typedef size_t uint32_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int xt_config; scalar_t__ xt_retval; scalar_t__ xt_expected_retval; void* xt_test_actions; void* xt_end_time; int (* xt_func ) () ;void* xt_begin_time; int xt_name; } ;


 int KERN_SUCCESS ;
 int POSTARGS_CONTROLLER_AVAILABLE ;
 int POSTARGS_RUN_TESTS ;
 int T_BEGIN (int ) ;
 int T_END ;
 int T_FINISH ;
 int T_SKIP (char*) ;
 int T_START ;
 scalar_t__ T_TESTRESULT ;
 void* XT_ACTION_FAILED ;
 void* XT_ACTION_PASSED ;
 void* XT_ACTION_SKIPPED ;
 int XT_CONFIG_EXPECT_PANIC ;
 int XT_CONFIG_IGNORE ;
 int kernel_post_args ;
 void* mach_absolute_time () ;
 int printf (char*) ;
 int stub1 () ;
 int xnupost_reset_panic_widgets () ;

kern_return_t
xnupost_run_tests(xnupost_test_t test_list, uint32_t test_count)
{
 uint32_t i = 0;
 int retval = KERN_SUCCESS;

 if ((kernel_post_args & POSTARGS_RUN_TESTS) == 0) {
  printf("No POST boot-arg set.\n");
  return retval;
 }

 T_START;
 xnupost_test_t testp;
 for (; i < test_count; i++) {
  xnupost_reset_panic_widgets();
  testp = &test_list[i];
  T_BEGIN(testp->xt_name);
  testp->xt_begin_time = mach_absolute_time();
  testp->xt_end_time = testp->xt_begin_time;





  if ((testp->xt_config & XT_CONFIG_EXPECT_PANIC) && !(kernel_post_args & POSTARGS_CONTROLLER_AVAILABLE)) {
   T_SKIP(
       "Test expects panic but "
       "no controller is present");
   testp->xt_test_actions = XT_ACTION_SKIPPED;
   continue;
  }

  if ((testp->xt_config & XT_CONFIG_IGNORE)) {
   T_SKIP("Test is marked as XT_CONFIG_IGNORE");
   testp->xt_test_actions = XT_ACTION_SKIPPED;
   continue;
  }

  testp->xt_func();
  T_END;
  testp->xt_retval = T_TESTRESULT;
  testp->xt_end_time = mach_absolute_time();
  if (testp->xt_retval == testp->xt_expected_retval) {
   testp->xt_test_actions = XT_ACTION_PASSED;
  } else {
   testp->xt_test_actions = XT_ACTION_FAILED;
  }
 }
 T_FINISH;
 return retval;
}
