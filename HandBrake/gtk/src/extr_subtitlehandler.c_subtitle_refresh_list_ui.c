
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;


 int subtitle_refresh_list_ui_from_settings (TYPE_1__*,int ) ;

__attribute__((used)) static void
subtitle_refresh_list_ui(signal_user_data_t *ud)
{
    subtitle_refresh_list_ui_from_settings(ud, ud->settings);
}
