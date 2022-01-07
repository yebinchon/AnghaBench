
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_get (int *,int) ;
 int * ghb_get_title_subtitle_list (int *) ;

GhbValue *ghb_get_title_subtitle_track(GhbValue *settings, int track)
{
    GhbValue *subtitle_list = ghb_get_title_subtitle_list(settings);
    GhbValue *subtitle_track = ghb_array_get(subtitle_list, track);
    return subtitle_track;
}
