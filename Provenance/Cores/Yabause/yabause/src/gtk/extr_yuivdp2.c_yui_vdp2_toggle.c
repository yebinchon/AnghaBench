
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_5__ {TYPE_1__* yui; } ;
typedef TYPE_2__ YuiVdp2 ;
struct TYPE_4__ {int action_group; } ;
typedef int GtkCellRendererToggle ;
typedef int GtkAction ;


 int GTK_TOGGLE_ACTION (int *) ;
 int * gtk_action_group_get_action (int ,int ) ;
 int gtk_toggle_action_get_active (int ) ;
 int gtk_toggle_action_set_active (int ,int) ;
 int sscanf (int const*,char*,int*) ;
 int * yui_vdp2_action_names ;

__attribute__((used)) static void yui_vdp2_toggle(GtkCellRendererToggle * crt, const gchar * path, YuiVdp2 * yv) {
 int val;
 GtkAction * action = ((void*)0);

 sscanf(path, "%d", &val);
 if (! yui_vdp2_action_names[val]) return;

 action = gtk_action_group_get_action(yv->yui->action_group, yui_vdp2_action_names[val]);
 gtk_toggle_action_set_active(GTK_TOGGLE_ACTION(action), ! gtk_toggle_action_get_active(GTK_TOGGLE_ACTION(action)));
}
