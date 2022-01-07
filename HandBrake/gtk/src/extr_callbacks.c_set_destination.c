
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;


 int ghb_dict_get_value (int ,char*) ;
 int ghb_ui_update (TYPE_1__*,char*,int ) ;
 int set_destination_settings (TYPE_1__*,int ) ;

__attribute__((used)) static void
set_destination(signal_user_data_t *ud)
{
    set_destination_settings(ud, ud->settings);
    ghb_ui_update(ud, "dest_file",
        ghb_dict_get_value(ud->settings, "dest_file"));
}
