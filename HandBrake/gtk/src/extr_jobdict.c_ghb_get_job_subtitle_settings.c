
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_settings (int *) ;

GhbValue *ghb_get_job_subtitle_settings(GhbValue *settings)
{
    GhbValue *job = ghb_get_job_settings(settings);
    GhbValue *sub = ghb_dict_get(job, "Subtitle");
    if (sub == ((void*)0))
    {
        sub = ghb_dict_new();
        ghb_dict_set(job, "Subtitle", sub);
    }
    return sub;
}
