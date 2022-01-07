
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;


 int subtitle_exclusive_default_settings (int ,int ) ;
 int subtitle_refresh_list_ui (TYPE_1__*) ;

__attribute__((used)) static void
subtitle_exclusive_default(signal_user_data_t *ud, gint index)
{
    subtitle_exclusive_default_settings(ud->settings, index);
    subtitle_refresh_list_ui(ud);
}
