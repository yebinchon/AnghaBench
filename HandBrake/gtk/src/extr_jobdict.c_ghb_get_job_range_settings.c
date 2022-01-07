
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_source_settings (int *) ;

GhbValue* ghb_get_job_range_settings(GhbValue *settings)
{
    GhbValue *source = ghb_get_job_source_settings(settings);
    GhbValue *range = ghb_dict_get(source, "Range");
    if (range == ((void*)0))
    {
        range = ghb_dict_new();
        ghb_dict_set(source, "Range", range);
    }
    return range;
}
