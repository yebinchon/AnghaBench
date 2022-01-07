
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int g_object_new (int ,int *) ;
 int yui_viewer_get_type () ;

GtkWidget * yui_viewer_new(void) {
 GtkWidget * dialog;

 dialog = GTK_WIDGET(g_object_new(yui_viewer_get_type(), ((void*)0)));

 return dialog;
}
