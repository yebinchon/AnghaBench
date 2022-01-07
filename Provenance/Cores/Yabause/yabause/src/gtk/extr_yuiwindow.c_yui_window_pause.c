
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int action_group; int area; } ;
typedef TYPE_1__ YuiWindow ;


 int FALSE ;
 int GINT_TO_POINTER (int) ;
 int G_OBJECT (TYPE_1__*) ;
 int SCSP_MUTE_SYSTEM ;
 int ScspMuteAudio (int ) ;
 int TRUE ;
 int YUI_GL (int ) ;
 int YUI_IS_RUNNING ;
 size_t YUI_WINDOW_PAUSED_SIGNAL ;
 int g_idle_remove_by_data (int ) ;
 int g_signal_emit (int ,int ,int ) ;
 int gtk_action_group_get_action (int ,char*) ;
 int gtk_action_set_sensitive (int ,int ) ;
 int yui_gl_dump_screen (int ) ;
 int * yui_window_signals ;

void yui_window_pause(YuiWindow * yui) {
 if (yui->state & YUI_IS_RUNNING) {
  yui_gl_dump_screen(YUI_GL(yui->area));
  ScspMuteAudio(SCSP_MUTE_SYSTEM);
  g_idle_remove_by_data(GINT_TO_POINTER(1));
  g_signal_emit(G_OBJECT(yui), yui_window_signals[YUI_WINDOW_PAUSED_SIGNAL], 0);
  yui->state &= ~YUI_IS_RUNNING;
  gtk_action_set_sensitive(gtk_action_group_get_action(yui->action_group, "run"), TRUE);
  gtk_action_set_sensitive(gtk_action_group_get_action(yui->action_group, "pause"), FALSE);
 }
}
