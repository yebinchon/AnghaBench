
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int gint ;
typedef char gchar ;
typedef int GhbValue ;


 int * ghb_array_get (int *,int ) ;
 int ghb_array_len (int *) ;
 int ghb_dict_get_int (int *,char*) ;
 int * ghb_get_job_audio_list (int *) ;
 char* ghb_get_source_audio_lang (int const*,int ) ;

const gchar*
ghb_get_user_audio_lang(GhbValue *settings, const hb_title_t *title, gint track)
{
    GhbValue *audio_list, *asettings;
    const gchar *lang;

    audio_list = ghb_get_job_audio_list(settings);
    if (ghb_array_len(audio_list) <= track)
        return "und";
    asettings = ghb_array_get(audio_list, track);
    track = ghb_dict_get_int(asettings, "Track");
    lang = ghb_get_source_audio_lang(title, track);
    return lang;
}
