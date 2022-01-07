
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int YuiCheckButton ;


 int GTK_TOGGLE_BUTTON (int *) ;
 int gtk_toggle_button_get_active (int ) ;

gboolean yui_check_button_get_active(YuiCheckButton * ycb) {
 return gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(ycb));
}
