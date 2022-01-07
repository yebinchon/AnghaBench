
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_suites ;

void pt_add_suite(void (*func)(void)) {
  num_suites++;
  func();
}
