
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int GTK_TOGGLE_BUTTON (int *) ;
 int g_key_file_set_integer (int ,char*,char*,int ) ;
 int gtk_toggle_button_get_active (int ) ;
 int keyfile ;

__attribute__((used)) static void frameskip_toggled(GtkWidget * widget, gpointer data) {
 g_key_file_set_integer(keyfile, "General", "Frameskip", gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(widget)));
}
