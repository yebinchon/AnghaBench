
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int GhbValue ;


 int audio_deps (int *,int *,int *) ;
 int * audio_get_selected_settings (int *,int *) ;
 scalar_t__ block_updates ;
 int ghb_audio_list_refresh_selected (int *) ;
 int ghb_dict_remove (int *,char const*) ;
 int ghb_dict_set (int *,char const*,int *) ;
 int ghb_live_reset (int *) ;
 int ghb_update_summary_info (int *) ;
 int ghb_value_free (int **) ;

void
audio_update_setting(
    GhbValue *val,
    const char *name,
    signal_user_data_t *ud)
{
    GhbValue *asettings;

    if (block_updates)
    {
        ghb_value_free(&val);
        return;
    }

    asettings = audio_get_selected_settings(ud, ((void*)0));
    if (asettings != ((void*)0))
    {
        if (val != ((void*)0))
            ghb_dict_set(asettings, name, val);
        else
            ghb_dict_remove(asettings, name);
        audio_deps(ud, asettings, ((void*)0));
        ghb_update_summary_info(ud);
        ghb_audio_list_refresh_selected(ud);
        ghb_live_reset(ud);
    }
    else
    {
        ghb_value_free(&val);
    }
}
