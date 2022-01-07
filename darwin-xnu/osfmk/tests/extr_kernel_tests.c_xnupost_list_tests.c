
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xnupost_test_t ;
typedef size_t uint32_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_3__ {scalar_t__ xt_test_num; int xt_config; char* xt_name; int xt_expected_retval; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int POSTARGS_CUSTOM_TEST_RUNLIST ;
 int XT_CONFIG_IGNORE ;
 int XT_CONFIG_RUN ;
 int kernel_post_args ;
 int printf (char*,int,...) ;
 scalar_t__ total_post_tests_count ;
 scalar_t__ xnupost_parse_config () ;
 scalar_t__ xnupost_should_run_test (scalar_t__) ;

kern_return_t
xnupost_list_tests(xnupost_test_t test_list, uint32_t test_count)
{
 if (KERN_SUCCESS != xnupost_parse_config())
  return KERN_FAILURE;

 xnupost_test_t testp;
 for (uint32_t i = 0; i < test_count; i++) {
  testp = &test_list[i];
  if (testp->xt_test_num == 0) {
   testp->xt_test_num = ++total_post_tests_count;
  }

  if (kernel_post_args & POSTARGS_CUSTOM_TEST_RUNLIST) {
   testp->xt_config |= XT_CONFIG_IGNORE;
   if (xnupost_should_run_test(testp->xt_test_num)) {
    testp->xt_config &= ~(XT_CONFIG_IGNORE);
    testp->xt_config |= XT_CONFIG_RUN;
    printf("\n[TEST] #%u is marked as ignored", testp->xt_test_num);
   }
  }
  printf("\n[TEST] TOC#%u name: %s expected: %d config: %x\n", testp->xt_test_num, testp->xt_name, testp->xt_expected_retval,
         testp->xt_config);
 }

 return KERN_SUCCESS;
}
