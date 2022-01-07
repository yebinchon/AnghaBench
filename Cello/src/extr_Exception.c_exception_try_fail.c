
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Exception {int active; } ;


 int Exception ;
 struct Exception* current (int ) ;

void exception_try_fail(void) {
  struct Exception* e = current(Exception);
  e->active = 1;
}
