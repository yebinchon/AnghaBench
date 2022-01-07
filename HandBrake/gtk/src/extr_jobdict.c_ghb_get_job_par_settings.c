
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_settings (int *) ;

GhbValue* ghb_get_job_par_settings(GhbValue *settings)
{
    GhbValue *job = ghb_get_job_settings(settings);
    GhbValue *par = ghb_dict_get(job, "PAR");
    if (par == ((void*)0))
    {
        par = ghb_dict_new();
        ghb_dict_set(job, "PAR", par);
    }
    return par;
}
