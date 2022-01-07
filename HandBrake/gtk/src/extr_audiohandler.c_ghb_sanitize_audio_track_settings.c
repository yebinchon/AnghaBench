
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int * ghb_get_job_audio_list (int *) ;
 int ghb_sanitize_audio_settings (int *,int *) ;

void ghb_sanitize_audio_track_settings(GhbValue *settings)
{
    int ii;
    GhbValue *alist = ghb_get_job_audio_list(settings);
    int count = ghb_array_len(alist);

    for (ii = 0; ii < count; ii++)
    {
        GhbValue *asettings = ghb_array_get(alist, ii);
        ghb_sanitize_audio_settings(settings, asettings);
    }
}
