
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int g_signal_emit_by_name (int ,char*) ;

__attribute__((used)) static void yui_sh_button_bp_add(GtkWidget * widget, gpointer user_data) {
 g_signal_emit_by_name(user_data, "activate");
}
