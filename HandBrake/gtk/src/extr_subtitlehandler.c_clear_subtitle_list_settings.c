
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int ghb_array_reset (int *) ;
 int ghb_dict_set_bool (int *,char*,int ) ;
 int * ghb_get_job_subtitle_list (int *) ;
 int * ghb_get_job_subtitle_search (int *) ;

__attribute__((used)) static void
clear_subtitle_list_settings(GhbValue *settings)
{
    GhbValue *subtitle_list, *subtitle_search;

    subtitle_list = ghb_get_job_subtitle_list(settings);
    subtitle_search = ghb_get_job_subtitle_search(settings);
    ghb_array_reset(subtitle_list);
    ghb_dict_set_bool(subtitle_search, "Enable", 0);
}
