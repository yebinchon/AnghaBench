
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_audio_encoder_get_from_name (char const*) ;
 char const* hb_audio_encoder_get_name (int ) ;

const char* hb_audio_encoder_sanitize_name(const char *name)
{
    return hb_audio_encoder_get_name(hb_audio_encoder_get_from_name(name));
}
