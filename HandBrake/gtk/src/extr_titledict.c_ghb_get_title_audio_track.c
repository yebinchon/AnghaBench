
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_get (int *,int) ;
 int * ghb_get_title_audio_list (int *) ;

GhbValue *ghb_get_title_audio_track(GhbValue *settings, int track)
{
    GhbValue *audio_list = ghb_get_title_audio_list(settings);
    GhbValue *audio_track = ghb_array_get(audio_list, track);
    return audio_track;
}
