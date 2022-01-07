
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int ghb_dict_set_bool (int *,char*,int ) ;
 int * ghb_get_job_subtitle_settings (int *) ;

GhbValue *ghb_get_job_subtitle_search(GhbValue *settings)
{
    GhbValue *sub_dict = ghb_get_job_subtitle_settings(settings);
    GhbValue *sub_search = ghb_dict_get(sub_dict, "Search");
    if (sub_search == ((void*)0))
    {
        sub_search = ghb_dict_new();
        ghb_dict_set(sub_dict, "Search", sub_search);
        ghb_dict_set_bool(sub_search, "Enable", 0);
    }
    return sub_search;
}
