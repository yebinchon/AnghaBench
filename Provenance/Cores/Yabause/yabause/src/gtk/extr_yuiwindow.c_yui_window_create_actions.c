
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkToggleAction ;
typedef int GtkAction ;


 int * GTK_ACTION (int *) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 int ToggleNBG0 ;
 int ToggleNBG1 ;
 int ToggleNBG2 ;
 int ToggleNBG3 ;
 int ToggleRBG0 ;
 int ToggleVDP1 ;
 int * _ (char*) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int g_signal_connect_swapped (int *,char*,int ,TYPE_1__*) ;
 int gtk_action_group_add_action_with_accel (int ,int *,char*) ;
 int * gtk_action_new (char*,int *,int *,char*) ;
 int gtk_main_quit ;
 int * gtk_toggle_action_new (char*,int *,int *,char*) ;
 int gtk_toggle_action_set_active (int *,int ) ;
 int yui_window_pause ;
 int yui_window_reset ;
 int yui_window_run ;
 int yui_window_toggle_frameskip ;
 int yui_window_toggle_fullscreen ;

__attribute__((used)) static void yui_window_create_actions(YuiWindow * yw) {
 GtkAction * action;
 GtkToggleAction * taction;

 action = gtk_action_new("run", _("Run"), _("start emulation"), "gtk-media-play");
 gtk_action_group_add_action_with_accel(yw->action_group, action, "<Ctrl>r");
 g_signal_connect_swapped(action, "activate", G_CALLBACK(yui_window_run), yw);

 action = gtk_action_new("pause", _("Pause"), _("pause emulation"), "gtk-media-pause");
 gtk_action_group_add_action_with_accel(yw->action_group, action, "<Ctrl>p");
 g_signal_connect_swapped(action, "activate", G_CALLBACK(yui_window_pause), yw);

 action = gtk_action_new("reset", _("Reset"), _("reset emulation"), ((void*)0));
 gtk_action_group_add_action_with_accel(yw->action_group, action, ((void*)0));
 g_signal_connect_swapped(action, "activate", G_CALLBACK(yui_window_reset), yw);

 taction = gtk_toggle_action_new("fullscreen", _("Fullscreen"), ((void*)0), "gtk-fullscreen");
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), "<Ctrl>f");
 g_signal_connect(taction, "activate", G_CALLBACK(yui_window_toggle_fullscreen), yw);

 taction = gtk_toggle_action_new("frameskip", _("Frame Skip/Limiter"), ((void*)0), ((void*)0));
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(yui_window_toggle_frameskip), yw);

 action = gtk_action_new("quit", _("Quit"), ((void*)0), "gtk-quit");
 gtk_action_group_add_action_with_accel(yw->action_group, action, "<Ctrl>q");
 g_signal_connect(action, "activate", G_CALLBACK(gtk_main_quit), yw);

 taction = gtk_toggle_action_new("toggle_vdp1", _("VDP1"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleVDP1), ((void*)0));

 taction = gtk_toggle_action_new("toggle_nbg0", _("NBG0"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleNBG0), ((void*)0));

 taction = gtk_toggle_action_new("toggle_nbg1", _("NBG1"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleNBG1), ((void*)0));

 taction = gtk_toggle_action_new("toggle_nbg2", _("NBG2"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleNBG2), ((void*)0));

 taction = gtk_toggle_action_new("toggle_nbg3", _("NBG3"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleNBG3), ((void*)0));

 taction = gtk_toggle_action_new("toggle_rbg0", _("RBG0"), ((void*)0), ((void*)0));
 gtk_toggle_action_set_active(taction, TRUE);
 gtk_action_group_add_action_with_accel(yw->action_group, GTK_ACTION(taction), ((void*)0));
 g_signal_connect(taction, "activate", G_CALLBACK(ToggleRBG0), ((void*)0));
}
