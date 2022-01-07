
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gint ;
typedef int YuiRange ;


 int gtk_widget_hide (int ) ;
 int gtk_widget_show (int ) ;
 int yui_range_get_active (int *) ;

__attribute__((used)) static void hide_show_netlink(YuiRange * instance, gpointer data) {
 gint i = yui_range_get_active(instance);

 if (i != 8) {
  gtk_widget_hide(data);
 } else {
  gtk_widget_show(data);
 }
}
