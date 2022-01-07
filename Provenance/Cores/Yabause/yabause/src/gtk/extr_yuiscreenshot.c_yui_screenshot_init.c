
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {struct TYPE_16__* image; } ;
typedef TYPE_1__ YuiScreenshot ;
typedef TYPE_1__ GtkWidget ;


 int FALSE ;
 int GTK_BOX (TYPE_1__*) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_STOCK_CLOSE ;
 int GTK_STOCK_REFRESH ;
 int GTK_STOCK_SAVE ;
 int GTK_WIDGET (TYPE_1__*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int G_CALLBACK (int ) ;
 int g_signal_connect_swapped (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* gtk_button_new_from_stock (int ) ;
 int gtk_container_add (int ,TYPE_1__*) ;
 int gtk_container_set_border_width (int ,int) ;
 TYPE_1__* gtk_hbutton_box_new () ;
 TYPE_1__* gtk_vbox_new (int ,int) ;
 int gtk_widget_destroy ;
 int gtk_widget_set_size_request (int ,int,int) ;
 int gtk_window_set_title (int ,char*) ;
 int yui_screenshot_update ;
 TYPE_1__* yui_viewer_new () ;
 int yui_viewer_save ;

__attribute__((used)) static void yui_screenshot_init (YuiScreenshot * yv) {
 GtkWidget * box;
 GtkWidget * button_box;
 GtkWidget * button;

 gtk_window_set_title(GTK_WINDOW(yv), "Screenshot");
 gtk_container_set_border_width(GTK_CONTAINER(yv), 4);

 box = gtk_vbox_new(FALSE, 4);
 gtk_container_add(GTK_CONTAINER(yv), box);

 yv->image = yui_viewer_new();
 gtk_box_pack_start(GTK_BOX(box), yv->image, FALSE, FALSE, 0);
 gtk_widget_set_size_request(GTK_WIDGET(yv->image), 320, 224);

 button_box = gtk_hbutton_box_new();
 gtk_box_pack_start(GTK_BOX(box), button_box, FALSE, FALSE, 0);

 button = gtk_button_new_from_stock(GTK_STOCK_REFRESH);
 gtk_box_pack_start(GTK_BOX(button_box), button, FALSE, FALSE, 0);
 g_signal_connect_swapped(button, "clicked", G_CALLBACK(yui_screenshot_update), yv);

 button = gtk_button_new_from_stock(GTK_STOCK_SAVE);
 gtk_box_pack_start(GTK_BOX(button_box), button, FALSE, FALSE, 0);
 g_signal_connect_swapped(button, "clicked", G_CALLBACK(yui_viewer_save), yv->image);

 button = gtk_button_new_from_stock(GTK_STOCK_CLOSE);
 gtk_box_pack_start(GTK_BOX(button_box), button, FALSE, FALSE, 0);
 g_signal_connect_swapped(button, "clicked", G_CALLBACK(gtk_widget_destroy), yv);
}
