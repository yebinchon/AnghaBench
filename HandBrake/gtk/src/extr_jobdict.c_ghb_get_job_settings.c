
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;

GhbValue *ghb_get_job_settings(GhbValue *settings)
{
    GhbValue *job;
    job = ghb_dict_get(settings, "Job");
    if (job == ((void*)0))
    {
        job = ghb_dict_new();
        ghb_dict_set(settings, "Job", job);
    }
    return job;
}
