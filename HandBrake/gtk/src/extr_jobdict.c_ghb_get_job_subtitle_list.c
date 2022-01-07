
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_new () ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_subtitle_settings (int *) ;

GhbValue *ghb_get_job_subtitle_list(GhbValue *settings)
{
    GhbValue *sub_dict = ghb_get_job_subtitle_settings(settings);
    GhbValue *sub_list = ghb_dict_get(sub_dict, "SubtitleList");
    if (sub_list == ((void*)0))
    {
        sub_list = ghb_array_new();
        ghb_dict_set(sub_dict, "SubtitleList", sub_list);
    }
    return sub_list;
}
