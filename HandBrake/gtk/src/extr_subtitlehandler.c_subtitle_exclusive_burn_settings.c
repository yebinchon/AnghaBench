
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int GhbValue ;


 int FALSE ;
 int * ghb_array_get (int *,scalar_t__) ;
 scalar_t__ ghb_array_len (int *) ;
 int ghb_dict_set_bool (int *,char*,int ) ;
 int * ghb_get_job_subtitle_list (int *) ;

__attribute__((used)) static void
subtitle_exclusive_burn_settings(GhbValue *settings, gint index)
{
    GhbValue *subtitle_list;
    GhbValue *subsettings;
    gint ii, count;

    subtitle_list = ghb_get_job_subtitle_list(settings);
    count = ghb_array_len(subtitle_list);
    for (ii = 0; ii < count; ii++)
    {
        if (ii != index)
        {
            subsettings = ghb_array_get(subtitle_list, ii);
            ghb_dict_set_bool(subsettings, "Burn", FALSE);
        }
    }
}
