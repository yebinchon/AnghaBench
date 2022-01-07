
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
typedef int boolean_t ;


 int FALSE ;
 int POSTARGS_CUSTOM_TEST_RUNLIST ;
 int TRUE ;
 int get_range_bounds (char*,scalar_t__*,scalar_t__*) ;
 int kernel_post_args ;
 char* kernel_post_test_configs ;

boolean_t
xnupost_should_run_test(uint32_t test_num)
{
 if (kernel_post_args & POSTARGS_CUSTOM_TEST_RUNLIST) {
  int64_t begin = 0, end = 999999;
  char * b = kernel_post_test_configs;
  while (*b) {
   get_range_bounds(b, &begin, &end);
   if (test_num >= begin && test_num <= end) {
    return TRUE;
   }


   while (*b != ',') {
    if (*b == '\0')
     return FALSE;
    b++;
   }

   b++;
  }
  return FALSE;
 }
 return TRUE;
}
