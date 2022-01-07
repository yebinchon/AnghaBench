
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* suspend ) () ;} ;


 TYPE_1__ hv_callbacks ;
 scalar_t__ hv_callbacks_enabled ;
 int stub1 () ;

void
hv_suspend(void) {
 if (hv_callbacks_enabled) {
  hv_callbacks.suspend();
 }
}
