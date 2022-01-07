
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOCAL ;
 scalar_t__ level ;
 scalar_t__ tempid ;

void enterscope(void) {
 if (++level == LOCAL)
  tempid = 0;
}
