
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int GhbValue ;


 int ghb_dict_remove (int *,char const*) ;
 int ghb_dict_set (int *,char const*,int *) ;
 int ghb_live_reset (int *) ;
 int ghb_update_summary_info (int *) ;
 int ghb_value_free (int **) ;
 int * subtitle_get_selected_settings (int *,int *) ;
 int subtitle_list_refresh_selected (int *,int *) ;

__attribute__((used)) static GhbValue*
subtitle_update_setting(GhbValue *val, const char *name, signal_user_data_t *ud)
{
    GhbValue *subsettings;

    subsettings = subtitle_get_selected_settings(ud, ((void*)0));
    if (subsettings != ((void*)0))
    {
        if (val != ((void*)0))
            ghb_dict_set(subsettings, name, val);
        else
            ghb_dict_remove(subsettings, name);
        subtitle_list_refresh_selected(ud, subsettings);
        ghb_update_summary_info(ud);
        ghb_live_reset(ud);
    }
    else
    {
        ghb_value_free(&val);
    }
    return subsettings;
}
