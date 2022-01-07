
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int YUI_IS_RUNNING ;
 scalar_t__ gtk_main_iteration () ;
 TYPE_1__* yui ;

__attribute__((used)) static void debugPauseLoop(void) {

  while ( !(yui->state & YUI_IS_RUNNING) )
    if ( gtk_main_iteration() ) return;
}
