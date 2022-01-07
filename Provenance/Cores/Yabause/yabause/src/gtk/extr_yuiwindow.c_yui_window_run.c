
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; int action_group; int run_func; } ;
typedef TYPE_1__ YuiWindow ;


 int FALSE ;
 int GINT_TO_POINTER (int) ;
 int G_OBJECT (TYPE_1__*) ;
 int SCSP_MUTE_SYSTEM ;
 int ScspUnMuteAudio (int ) ;
 int TRUE ;
 int YUI_IS_INIT ;
 int YUI_IS_RUNNING ;
 size_t YUI_WINDOW_RUNNING_SIGNAL ;
 int g_idle_add (int ,int ) ;
 int g_signal_emit (int ,int ,int ) ;
 int gtk_action_group_get_action (int ,char*) ;
 int gtk_action_set_sensitive (int ,int ) ;
 int * yui_window_signals ;
 int yui_window_start (TYPE_1__*) ;

void yui_window_run(YuiWindow * yui) {
 yui_window_start(yui);

 if ((yui->state & YUI_IS_INIT) && ((yui->state & YUI_IS_RUNNING) == 0)) {
  ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
  g_idle_add(yui->run_func, GINT_TO_POINTER(1));
  g_signal_emit(G_OBJECT(yui), yui_window_signals[YUI_WINDOW_RUNNING_SIGNAL], 0);
  yui->state |= YUI_IS_RUNNING;
  gtk_action_set_sensitive(gtk_action_group_get_action(yui->action_group, "run"), FALSE);
  gtk_action_set_sensitive(gtk_action_group_get_action(yui->action_group, "pause"), TRUE);
 }
}
