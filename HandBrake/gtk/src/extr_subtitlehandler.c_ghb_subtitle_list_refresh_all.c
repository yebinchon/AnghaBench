
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;


 int subtitle_refresh_list_ui (int *) ;

void
ghb_subtitle_list_refresh_all(signal_user_data_t *ud)
{
    subtitle_refresh_list_ui(ud);
}
