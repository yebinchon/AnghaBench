
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GhbValue ;


 double HB_INVALID_AUDIO_QUALITY ;
 int * ghb_dict_get (int const*,char*) ;
 double ghb_dict_get_double (int const*,char*) ;
 int ghb_dict_get_int (int const*,char*) ;

gboolean ghb_audio_quality_enabled(const GhbValue *asettings)
{
    int bitrate;
    double quality;
    GhbValue * val;

    bitrate = ghb_dict_get_int(asettings, "Bitrate");
    quality = ghb_dict_get_double(asettings, "Quality");
    val = ghb_dict_get(asettings, "Quality");

    return !(bitrate > 0 || val == ((void*)0) || quality == HB_INVALID_AUDIO_QUALITY);
}
