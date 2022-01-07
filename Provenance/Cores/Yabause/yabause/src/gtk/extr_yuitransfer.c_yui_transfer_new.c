
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiWindow ;
typedef int YuiTransfer ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int * YUI_TRANSFERT (int *) ;
 int g_object_new (int ,int *) ;
 int gtk_widget_show_all (int *) ;
 int yui_transfer_check (int *) ;
 int yui_transfer_get_type () ;
 int yui_window_start (int *) ;

GtkWidget * yui_transfer_new(YuiWindow * yw) {
 GtkWidget * entry;
 YuiTransfer * yfe;

 entry = GTK_WIDGET(g_object_new(yui_transfer_get_type(), ((void*)0)));
 yfe = YUI_TRANSFERT(entry);

 gtk_widget_show_all(entry);

 yui_transfer_check(yfe);

 yui_window_start(yw);

 return entry;
}
