
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkWidget ;


 int GTK_WINDOW (int *) ;
 int g_file_set_contents (int ,int ,int,int ) ;
 int g_key_file_set_value (int ,char*,char*,char*) ;
 int g_key_file_to_data (int ,int ,int ) ;
 int gtk_main_quit () ;
 int gtk_window_get_position (int ,int*,int*) ;
 int inifile ;
 int keyfile ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void yui_window_destroy(GtkWidget * window) {
 gint x, y;
 char buffer[512];

 gtk_window_get_position(GTK_WINDOW(window), &x, &y);

 sprintf(buffer, "%d", x);
 g_key_file_set_value(keyfile, "Gtk", "X", buffer);
 sprintf(buffer, "%d", y);
 g_key_file_set_value(keyfile, "Gtk", "Y", buffer);

 g_file_set_contents(inifile, g_key_file_to_data(keyfile, 0, 0), -1, 0);
 gtk_main_quit();
}
