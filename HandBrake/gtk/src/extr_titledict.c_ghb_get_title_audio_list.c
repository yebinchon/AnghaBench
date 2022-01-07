
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;
 int * ghb_get_title_settings (int *) ;

GhbValue *ghb_get_title_audio_list(GhbValue *settings)
{
    GhbValue *title_dict = ghb_get_title_settings(settings);
    GhbValue *audio_list = ghb_dict_get(title_dict, "AudioList");
    return audio_list;
}
