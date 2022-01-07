
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int hb_title_t ;
struct TYPE_4__ {int codec; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
typedef TYPE_2__ hb_audio_config_t ;
typedef int GhbValue ;


 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_string (int *,char*,int ) ;
 TYPE_2__* ghb_get_audio_info (int const*,int) ;
 int ghb_get_copy_mask (int *) ;
 int * ghb_lookup_title (int,int *) ;
 int ghb_select_audio_codec (int,int ,int,int,int) ;
 int ghb_select_fallback (int *,int) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;
 int hb_audio_encoder_get_short_name (int) ;
 int hb_container_get_from_name (char const*) ;
 int hb_sanitize_audio_settings (int const*,int *) ;

__attribute__((used)) static void
ghb_sanitize_audio_settings(GhbValue *settings, GhbValue *asettings)
{

    const char * mux_name;
    int title_id, mux, acodec, fallback, copy_mask, track;
    uint32_t in_codec = 0;
    hb_audio_config_t * aconfig;
    const hb_title_t * title;

    title_id = ghb_dict_get_int(settings, "title");
    title = ghb_lookup_title(title_id, ((void*)0));

    mux_name = ghb_dict_get_string(settings, "FileFormat");
    mux = hb_container_get_from_name(mux_name);

    acodec = ghb_settings_audio_encoder_codec(asettings, "Encoder");
    fallback = ghb_select_fallback(settings, acodec);
    copy_mask = ghb_get_copy_mask(settings);
    track = ghb_dict_get_int(asettings, "Track");
    aconfig = ghb_get_audio_info(title, track);
    if (aconfig != ((void*)0))
    {
        in_codec = aconfig->in.codec;
    }
    acodec = ghb_select_audio_codec(mux, in_codec, acodec,
                                       fallback, copy_mask);
    ghb_dict_set_string(asettings, "Encoder",
                        hb_audio_encoder_get_short_name(acodec));


    hb_sanitize_audio_settings(title, asettings);
}
