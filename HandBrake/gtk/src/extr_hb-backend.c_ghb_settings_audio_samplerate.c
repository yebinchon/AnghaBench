
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_rate_t ;
typedef int GhbValue ;


 int g_free (char*) ;
 char* ghb_dict_get_string_xform (int const*,char const*) ;
 int * ghb_lookup_audio_samplerate (char*) ;

const hb_rate_t*
ghb_settings_audio_samplerate(const GhbValue *settings, const char *name)
{
    const hb_rate_t *result;
    char *rate_id = ghb_dict_get_string_xform(settings, name);
    result = ghb_lookup_audio_samplerate(rate_id);
    g_free(rate_id);
    return result;
}
