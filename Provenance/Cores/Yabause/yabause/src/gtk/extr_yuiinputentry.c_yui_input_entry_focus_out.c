
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GdkEventFocus ;


 int FALSE ;
 int is_watching ;

gboolean yui_input_entry_focus_out(GtkWidget * widget, GdkEventFocus * event, gpointer name) {
 is_watching = FALSE;

 return FALSE;
}
