
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_new () ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_audio_settings (int *) ;

GhbValue *ghb_get_job_audio_list(GhbValue *settings)
{
    GhbValue *audio_dict = ghb_get_job_audio_settings(settings);
    GhbValue *audio_list = ghb_dict_get(audio_dict, "AudioList");
    if (audio_list == ((void*)0))
    {
        audio_list = ghb_array_new();
        ghb_dict_set(audio_dict, "AudioList", audio_list);
    }
    return audio_list;
}
