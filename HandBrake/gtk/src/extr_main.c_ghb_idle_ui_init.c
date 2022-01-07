
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int globals; int prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gboolean ;
typedef int GhbValue ;
typedef int GSourceFunc ;


 int FALSE ;
 int HB_PRESET_TYPE_ALL ;
 int * arg_preset ;
 int * dvd_device ;
 int g_idle_add (int ,TYPE_1__*) ;
 int ghb_check_all_depencencies (TYPE_1__*) ;
 int * ghb_dict_get_value (int ,char*) ;
 int ghb_dict_set (int ,char*,int ) ;
 int ghb_dict_set_string (int ,char*,int *) ;
 scalar_t__ ghb_idle_scan ;
 int ghb_select_default_preset (TYPE_1__*) ;
 int ghb_select_preset (TYPE_1__*,int *,int ) ;
 int ghb_settings_to_ui (TYPE_1__*,int ) ;
 int ghb_value_dup (int *) ;

gboolean
ghb_idle_ui_init(signal_user_data_t *ud)
{
    ghb_settings_to_ui(ud, ud->globals);
    ghb_settings_to_ui(ud, ud->prefs);




    if (dvd_device != ((void*)0))
    {

        ghb_dict_set_string(ud->globals, "scan_source", dvd_device);
        g_idle_add((GSourceFunc)ghb_idle_scan, ud);
    }
    else
    {
        GhbValue *gval = ghb_dict_get_value(ud->prefs, "default_source");
        ghb_dict_set(ud->globals, "scan_source", ghb_value_dup(gval));
    }

    if (arg_preset != ((void*)0))
    {
        ghb_select_preset(ud, arg_preset, HB_PRESET_TYPE_ALL);
    }
    else
    {
        ghb_select_default_preset(ud);
    }


    ghb_check_all_depencencies(ud);

    return FALSE;
}
