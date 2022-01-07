
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int state; int action_group; } ;
typedef TYPE_1__ YuiWindow ;
struct TYPE_18__ {TYPE_1__* yui; void* running_handler; void* paused_handler; int toolbar; } ;
typedef TYPE_2__ YuiVdp1 ;
typedef int GtkWidget ;
typedef TYPE_2__ GtkToolItem ;


 int GTK_TOOLBAR (int ) ;
 int GTK_TOOL_ITEM (TYPE_2__*) ;
 int * GTK_WIDGET (TYPE_2__*) ;
 int G_CALLBACK (int (*) (TYPE_2__*)) ;
 int YUI_IS_INIT ;
 int YUI_IS_RUNNING ;
 TYPE_2__* YUI_VDP1 (int *) ;
 TYPE_2__* g_object_new (int ,int *) ;
 void* g_signal_connect_swapped (TYPE_1__*,char*,int ,TYPE_2__*) ;
 int gtk_action_connect_proxy (int ,int *) ;
 int gtk_action_group_get_action (int ,char*) ;
 TYPE_2__* gtk_tool_button_new_from_stock (char*) ;
 int gtk_toolbar_insert (int ,int ,int) ;
 int gtk_widget_show_all (int *) ;
 int yui_vdp1_clear (TYPE_2__*) ;
 int yui_vdp1_get_type () ;
 int yui_vdp1_update (TYPE_2__*) ;
 int yui_window_pause (TYPE_1__*) ;
 int yui_window_run (TYPE_1__*) ;

GtkWidget * yui_vdp1_new(YuiWindow * y) {
 GtkWidget * dialog;
 YuiVdp1 * yv;

 dialog = GTK_WIDGET(g_object_new(yui_vdp1_get_type(), ((void*)0)));
 yv = YUI_VDP1(dialog);

 yv->yui = y;

 if (!( yv->yui->state & YUI_IS_INIT )) {
   yui_window_run(yv->yui);
   yui_window_pause(yv->yui);
 }

 {
  GtkToolItem * play_button, * pause_button;

  play_button = gtk_tool_button_new_from_stock("run");
  gtk_action_connect_proxy(gtk_action_group_get_action(yv->yui->action_group, "run"), GTK_WIDGET(play_button));
  gtk_toolbar_insert(GTK_TOOLBAR(yv->toolbar), GTK_TOOL_ITEM(play_button), -1);

  pause_button = gtk_tool_button_new_from_stock("pause");
  gtk_action_connect_proxy(gtk_action_group_get_action(yv->yui->action_group, "pause"), GTK_WIDGET(pause_button));
  gtk_toolbar_insert(GTK_TOOLBAR(yv->toolbar), GTK_TOOL_ITEM(pause_button), -1);
 }
 yv->paused_handler = g_signal_connect_swapped(yv->yui, "paused", G_CALLBACK(yui_vdp1_update), yv);
 yv->running_handler = g_signal_connect_swapped(yv->yui, "running", G_CALLBACK(yui_vdp1_clear), yv);

 if ((yv->yui->state & (YUI_IS_RUNNING | YUI_IS_INIT)) == YUI_IS_INIT)
  yui_vdp1_update(yv);

 gtk_widget_show_all(GTK_WIDGET(yv));

 return dialog;
}
