
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_dest_settings (int *) ;

GhbValue* ghb_get_job_mp4_settings(GhbValue *settings)
{
    GhbValue *dest = ghb_get_job_dest_settings(settings);
    GhbValue *mp4 = ghb_dict_get(dest, "Mp4Options");
    if (mp4 == ((void*)0))
    {
        mp4 = ghb_dict_new();
        ghb_dict_set(dest, "Mp4Options", mp4);
    }
    return mp4;
}
