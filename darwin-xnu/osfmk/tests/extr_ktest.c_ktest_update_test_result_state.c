
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ktest_test_result ;
 size_t*** ktest_test_result_statetab ;
 size_t ktest_testcase_mode ;
 size_t ktest_testcase_result ;

void
ktest_update_test_result_state(void) {
 ktest_test_result = ktest_test_result_statetab[ktest_test_result]
             [ktest_testcase_result]
            [ktest_testcase_mode];
}
