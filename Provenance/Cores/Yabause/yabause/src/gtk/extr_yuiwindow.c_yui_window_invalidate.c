
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ YuiWindow ;


 int G_OBJECT (TYPE_1__*) ;
 int YUI_IS_RUNNING ;
 size_t YUI_WINDOW_PAUSED_SIGNAL ;
 int g_signal_emit (int ,int ,int ) ;
 int * yui_window_signals ;

void yui_window_invalidate(YuiWindow * yui) {



  if ( !(yui->state & YUI_IS_RUNNING ))
    g_signal_emit(G_OBJECT(yui), yui_window_signals[YUI_WINDOW_PAUSED_SIGNAL], 0);
}
