
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; } ;
typedef TYPE_1__ hb_container_t ;
typedef scalar_t__ gint ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int g_warning (char*) ;
 scalar_t__ get_sub_source (int *,int *) ;
 int ghb_array_append (int *,int *) ;
 scalar_t__ ghb_array_len (int *) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_bool (int *,char*,scalar_t__) ;
 int * ghb_get_job_subtitle_list (int *) ;
 TYPE_1__* ghb_lookup_container_by_name (char const*) ;
 int hb_subtitle_can_burn (scalar_t__) ;
 int hb_subtitle_can_force (scalar_t__) ;
 int hb_subtitle_can_pass (scalar_t__,int ) ;
 int subtitle_exclusive_burn_settings (int *,scalar_t__) ;
 int subtitle_exclusive_default_settings (int *,scalar_t__) ;

__attribute__((used)) static void
subtitle_add_to_settings(GhbValue *settings, GhbValue *subsettings)
{

    GhbValue *subtitle_list;
    gint count;
    gboolean burn, forced, def;
    gint source;

    subtitle_list = ghb_get_job_subtitle_list(settings);
    if (subtitle_list == ((void*)0))
    {
        g_warning("No subtitle list!");
        return;
    }


    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    source = get_sub_source(settings, subsettings);
    burn = ghb_dict_get_bool(subsettings, "Burn");
    if (burn && !hb_subtitle_can_burn(source))
    {
        burn = FALSE;
        ghb_dict_set_bool(subsettings, "Burn", burn);
    }
    if (!burn && !hb_subtitle_can_pass(source, mux->format))
    {
        burn = TRUE;
        ghb_dict_set_bool(subsettings, "Burn", burn);
        ghb_dict_set_bool(subsettings, "Default", FALSE);
    }
    def = ghb_dict_get_bool(subsettings, "Default");
    forced = ghb_dict_get_bool(subsettings, "Forced");
    if (forced && !hb_subtitle_can_force(source))
    {
        forced = FALSE;
        ghb_dict_set_bool(subsettings, "Forced", forced);
    }

    ghb_array_append(subtitle_list, subsettings);


    count = ghb_array_len(subtitle_list);
    if (burn)
        subtitle_exclusive_burn_settings(settings, count-1);
    if (def)
        subtitle_exclusive_default_settings(settings, count-1);
}
