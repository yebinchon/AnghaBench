
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int g_free (char*) ;
 char* ghb_dict_get_string_xform (int const*,char const*) ;
 int ghb_lookup_audio_bitrate_rate (char*) ;

int
ghb_settings_audio_bitrate_rate(const GhbValue *settings, const char *name)
{
    int result;
    char *rate_id = ghb_dict_get_string_xform(settings, name);
    result = ghb_lookup_audio_bitrate_rate(rate_id);
    g_free(rate_id);
    return result;
}
