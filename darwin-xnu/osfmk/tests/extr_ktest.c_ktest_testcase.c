
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KTEST_MAXVARS ;
 scalar_t__ T_RESULT_FAIL ;
 scalar_t__ T_RESULT_PASS ;
 scalar_t__ T_RESULT_UXPASS ;
 scalar_t__ T_RESULT_XFAIL ;
 char* ktest_current_expr ;
 char* ktest_current_msg ;
 int ktest_current_time ;
 scalar_t__ ktest_current_var_index ;
 char** ktest_current_var_names ;
 char** ktest_current_var_values ;
 int ktest_emit_testcase () ;
 scalar_t__ ktest_expectfail ;
 int ktest_expression_index ;
 int ktest_failcount ;
 char* ktest_output_buf ;
 int ktest_passcount ;
 scalar_t__ ktest_quiet ;
 scalar_t__ ktest_testcase_result ;
 int ktest_update_test_result_state () ;
 int ktest_xfailcount ;
 int ktest_xpasscount ;
 int mach_absolute_time () ;

void
ktest_testcase(int success)
{
 ktest_current_time = mach_absolute_time();

 if(success && !ktest_expectfail) {

  ktest_passcount++;
  ktest_testcase_result = T_RESULT_PASS;
 } else if(!success && !ktest_expectfail) {

  ktest_failcount++;
  ktest_testcase_result = T_RESULT_FAIL;
 } else if(success && ktest_expectfail) {

  ktest_xpasscount++;
  ktest_testcase_result = T_RESULT_UXPASS;
 } else if(!success && ktest_expectfail) {

  ktest_xfailcount++;
  ktest_testcase_result = T_RESULT_XFAIL;
 }

 ktest_update_test_result_state();
 if(ktest_quiet == 0 ||
    ktest_testcase_result == T_RESULT_FAIL ||
    ktest_testcase_result == T_RESULT_UXPASS) {
  ktest_emit_testcase();
 }
 ktest_expression_index++;

 ktest_quiet = 0;
 ktest_expectfail = 0;
 ktest_output_buf[0] = '\0';
 ktest_current_msg[0] = '\0';
 ktest_current_expr[0] = '\0';
 for(int i = 0; i < KTEST_MAXVARS; i++) {
  ktest_current_var_names[i][0] = '\0';
  ktest_current_var_values[i][0] = '\0';
 }
 ktest_current_var_index = 0;
}
