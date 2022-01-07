
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_encoder_t ;
typedef int GhbValue ;


 char* ghb_dict_get_string (int const*,char const*) ;
 int const* ghb_lookup_audio_encoder (char const*) ;

const hb_encoder_t*
ghb_settings_audio_encoder(const GhbValue *settings, const char *name)
{
    const char *encoder_id = ghb_dict_get_string(settings, name);
    return ghb_lookup_audio_encoder(encoder_id);
}
