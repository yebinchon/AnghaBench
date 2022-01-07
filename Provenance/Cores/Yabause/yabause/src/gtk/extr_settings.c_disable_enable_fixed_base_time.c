
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiCheckButton ;


 int GTK_WIDGET (int *) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int yui_check_button_get_active (int *) ;

__attribute__((used)) static void disable_enable_fixed_base_time(YuiCheckButton *clocksync, YuiCheckButton *fixedbasetime) {
 gtk_widget_set_sensitive(GTK_WIDGET(fixedbasetime),
                          yui_check_button_get_active(clocksync));
}
