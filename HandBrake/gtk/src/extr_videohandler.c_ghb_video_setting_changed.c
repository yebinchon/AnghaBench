
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;


 int ghb_check_dependency (TYPE_1__*,int *,int *) ;
 int ghb_clear_presets_selection (TYPE_1__*) ;
 int ghb_widget_to_setting (int ,int *) ;
 int update_adv_settings_tooltip (TYPE_1__*) ;

void
ghb_video_setting_changed(GtkWidget *widget, signal_user_data_t *ud)
{
    ghb_widget_to_setting(ud->settings, widget);
    update_adv_settings_tooltip(ud);

    ghb_check_dependency(ud, widget, ((void*)0));
    ghb_clear_presets_selection(ud);
}
