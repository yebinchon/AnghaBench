
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdouble ;
typedef int GhbValue ;


 scalar_t__ HB_INVALID_AUDIO_QUALITY ;
 scalar_t__ get_quality (int,scalar_t__) ;
 scalar_t__ ghb_dict_get_double (int *,char*) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;

__attribute__((used)) static gdouble get_ui_quality(GhbValue *settings)
{
    int codec = ghb_settings_audio_encoder_codec(settings, "Encoder");
    gdouble quality = ghb_dict_get_double(settings, "Quality");
    if (quality == HB_INVALID_AUDIO_QUALITY)
    {
        return quality;
    }
    return get_quality(codec, quality);
}
