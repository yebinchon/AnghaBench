
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;


 int subtitle_def_lang_list_init (int *) ;

void ghb_subtitle_defaults_to_ui(signal_user_data_t *ud)
{
    subtitle_def_lang_list_init(ud);
}
