
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int (* reset_func ) () ;} ;
typedef TYPE_1__ YuiWindow ;


 int YUI_IS_INIT ;
 int stub1 () ;

void yui_window_reset(YuiWindow * yui) {
 if (yui->state & YUI_IS_INIT) {
  yui->reset_func();
 }
}
