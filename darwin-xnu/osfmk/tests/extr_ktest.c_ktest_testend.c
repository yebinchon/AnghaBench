
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktest_current_time ;
 int ktest_emit_testend () ;
 int ktest_test_index ;
 int mach_absolute_time () ;

void
ktest_testend() {
 ktest_current_time = mach_absolute_time();
 ktest_emit_testend();
 ktest_test_index++;
}
