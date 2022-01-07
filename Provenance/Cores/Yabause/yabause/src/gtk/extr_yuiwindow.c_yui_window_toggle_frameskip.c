
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_3__ {int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkWidget ;
typedef int GtkAction ;


 int DisableAutoFrameSkip () ;
 int EnableAutoFrameSkip () ;
 int GTK_TOGGLE_ACTION (int *) ;
 int * gtk_action_group_get_action (int ,char*) ;
 scalar_t__ gtk_toggle_action_get_active (int ) ;

void yui_window_toggle_frameskip(GtkWidget * w, YuiWindow * yui) {
 GtkAction * action = gtk_action_group_get_action(yui->action_group, "frameskip");
 gboolean active = gtk_toggle_action_get_active(GTK_TOGGLE_ACTION(action));

 if (active)
  EnableAutoFrameSkip ();
 else
  DisableAutoFrameSkip ();
}
