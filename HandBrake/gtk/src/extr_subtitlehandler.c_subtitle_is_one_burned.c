
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int TRUE ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int * ghb_get_job_subtitle_list (int *) ;

__attribute__((used)) static gboolean subtitle_is_one_burned(GhbValue *settings)
{
    GhbValue *subtitle_list, *subsettings;
    int count, ii;

    subtitle_list = ghb_get_job_subtitle_list(settings);
    if (subtitle_list == ((void*)0))
        return FALSE;

    count = ghb_array_len(subtitle_list);
    for (ii = 0; ii < count; ii++)
    {
        subsettings = ghb_array_get(subtitle_list, ii);
        if (ghb_dict_get_bool(subsettings, "Burn"))
        {
            return TRUE;
        }
    }
    return FALSE;
}
