
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ T_RESULT_FAIL ;
 scalar_t__ T_RESULT_UXPASS ;
 int ktest_current_file ;
 int ktest_current_line ;
 int ktest_test_name ;
 scalar_t__ ktest_testcase_result ;
 int ktest_testend () ;
 int panic (char*,int ,int ,int ) ;

void
ktest_assertion_check(void) {
 if (ktest_testcase_result == T_RESULT_FAIL || ktest_testcase_result == T_RESULT_UXPASS) {
  ktest_testend();
  panic("XNUPOST: Assertion failed : %s : at %s:%d", ktest_test_name, ktest_current_file, ktest_current_line);
 }
}
