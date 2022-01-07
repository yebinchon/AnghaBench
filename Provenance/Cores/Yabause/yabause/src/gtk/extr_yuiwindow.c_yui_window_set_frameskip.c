
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkAction ;


 int GTK_TOGGLE_ACTION (int *) ;
 int * gtk_action_group_get_action (int ,char*) ;
 int gtk_toggle_action_set_active (int ,int ) ;

void yui_window_set_frameskip(YuiWindow * yui, gboolean f) {
 GtkAction * action = gtk_action_group_get_action(yui->action_group, "frameskip");
 gtk_toggle_action_set_active(GTK_TOGGLE_ACTION(action), f);
}
