
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * pixbuf; } ;
typedef TYPE_1__ YuiViewer ;
typedef TYPE_1__ GtkWidget ;


 int GDK_BUTTON_PRESS_MASK ;
 int GDK_BUTTON_RELEASE_MASK ;
 int GTK_MENU_SHELL (TYPE_1__*) ;
 int GTK_STOCK_SAVE ;
 int GTK_WIDGET (TYPE_1__*) ;
 int G_CALLBACK (int ) ;
 int g_signal_connect (TYPE_1__*,char*,int ,int *) ;
 int g_signal_connect_swapped (TYPE_1__*,char*,int ,TYPE_1__*) ;
 TYPE_1__* gtk_image_menu_item_new_from_stock (int ,int *) ;
 TYPE_1__* gtk_menu_new () ;
 int gtk_menu_shell_append (int ,TYPE_1__*) ;
 int gtk_widget_set_events (int ,int) ;
 int gtk_widget_show_all (TYPE_1__*) ;
 int my_popup_handler ;
 int yui_viewer_expose ;
 int yui_viewer_save ;

__attribute__((used)) static void yui_viewer_init (YuiViewer * yv) {
 GtkWidget * menu;
 GtkWidget * item;

 gtk_widget_set_events(GTK_WIDGET(yv), GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK);

 menu = gtk_menu_new();
 item = gtk_image_menu_item_new_from_stock(GTK_STOCK_SAVE, ((void*)0));

 gtk_menu_shell_append(GTK_MENU_SHELL(menu), item);

 gtk_widget_show_all(menu);

 g_signal_connect_swapped(yv, "button-press-event", G_CALLBACK(my_popup_handler), menu);
 g_signal_connect(yv, "expose-event", G_CALLBACK(yui_viewer_expose), ((void*)0));
 g_signal_connect_swapped(item, "activate", G_CALLBACK(yui_viewer_save), yv);

 yv->pixbuf = ((void*)0);
}
