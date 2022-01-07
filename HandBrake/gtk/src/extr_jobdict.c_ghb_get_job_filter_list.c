
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_filter_settings (int *) ;

GhbValue* ghb_get_job_filter_list(GhbValue *settings)
{
    GhbValue *filter = ghb_get_job_filter_settings(settings);
    GhbValue *list = ghb_dict_get(filter, "FilterList");
    if (list == ((void*)0))
    {
        list = ghb_dict_new();
        ghb_dict_set(filter, "FilterList", list);
    }
    return list;
}
