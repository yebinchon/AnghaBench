
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int state; int hbox; int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef TYPE_1__ YuiScsp ;
typedef TYPE_1__ GtkWidget ;


 int FALSE ;
 int GTK_BOX (int ) ;
 TYPE_1__* GTK_WIDGET (TYPE_1__*) ;
 int G_CALLBACK (int (*) (TYPE_1__*)) ;
 int YUI_IS_INIT ;
 int YUI_IS_RUNNING ;
 TYPE_1__* YUI_SCSP (TYPE_1__*) ;
 TYPE_1__* g_object_new (int ,int *) ;
 void* g_signal_connect_swapped (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int gtk_action_connect_proxy (int ,TYPE_1__*) ;
 int gtk_action_group_get_action (int ,char*) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int) ;
 TYPE_1__* gtk_button_new () ;
 TYPE_1__* gtk_button_new_from_stock (char*) ;
 int gtk_widget_show_all (TYPE_1__*) ;
 void* paused_handler ;
 void* running_handler ;
 TYPE_1__* yui ;
 int yui_scsp_clear (TYPE_1__*) ;
 int yui_scsp_destroy (TYPE_1__*) ;
 int yui_scsp_get_type () ;
 int yui_scsp_update (TYPE_1__*) ;

GtkWidget * yui_scsp_new(YuiWindow * y) {
 GtkWidget * dialog;
 YuiScsp * yv;

 yui = y;

 dialog = GTK_WIDGET(g_object_new(yui_scsp_get_type(), ((void*)0)));
 yv = YUI_SCSP(dialog);

 {
  GtkWidget * but2, * but3, * but4;
  but2 = gtk_button_new();
  gtk_action_connect_proxy(gtk_action_group_get_action(yui->action_group, "run"), but2);
  gtk_box_pack_start(GTK_BOX(yv->hbox), but2, FALSE, FALSE, 2);

  but3 = gtk_button_new();
  gtk_action_connect_proxy(gtk_action_group_get_action(yui->action_group, "pause"), but3);
  gtk_box_pack_start(GTK_BOX(yv->hbox), but3, FALSE, FALSE, 2);

  but4 = gtk_button_new_from_stock("gtk-close");
  g_signal_connect_swapped(but4, "clicked", G_CALLBACK(yui_scsp_destroy), dialog);
  gtk_box_pack_start(GTK_BOX(yv->hbox), but4, FALSE, FALSE, 2);
 }
 paused_handler = g_signal_connect_swapped(yui, "paused", G_CALLBACK(yui_scsp_update), yv);
 running_handler = g_signal_connect_swapped(yui, "running", G_CALLBACK(yui_scsp_clear), yv);

 if ((yui->state & (YUI_IS_RUNNING | YUI_IS_INIT)) == YUI_IS_INIT)
  yui_scsp_update(yv);

 gtk_widget_show_all(GTK_WIDGET(yv));

 return dialog;
}
