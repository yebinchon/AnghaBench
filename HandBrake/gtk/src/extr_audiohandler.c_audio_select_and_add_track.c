
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int list_audio; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_11__ {int format; } ;
typedef TYPE_3__ hb_container_t ;
struct TYPE_9__ {int codec; } ;
struct TYPE_12__ {TYPE_1__ in; } ;
typedef TYPE_4__ hb_audio_config_t ;
typedef scalar_t__ gint ;
typedef int gdouble ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;


 int HB_INVALID_AUDIO_QUALITY ;
 int * audio_add_track (int *,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int * ghb_array_get (int *,int) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int ghb_dict_get_double (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 scalar_t__ ghb_find_audio_track (TYPE_2__ const*,char const*,int) ;
 scalar_t__ ghb_get_copy_mask (int *) ;
 TYPE_3__* ghb_lookup_container_by_name (char const*) ;
 scalar_t__ ghb_select_audio_codec (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ghb_select_fallback (int *,scalar_t__) ;
 scalar_t__ ghb_settings_audio_bitrate_rate (int *,char*) ;
 scalar_t__ ghb_settings_audio_encoder_codec (int *,char*) ;
 scalar_t__ ghb_settings_audio_samplerate_rate (int *,char*) ;
 scalar_t__ ghb_settings_mixdown_mix (int *,char*) ;
 TYPE_4__* hb_list_audio_config_item (int ,scalar_t__) ;

__attribute__((used)) static GhbValue*
audio_select_and_add_track(
    const hb_title_t *title,
    GhbValue *settings,
    GhbValue *pref_audio,
    const char *lang,
    int pref_index,
    int start_track)
{
    GhbValue *audio, *asettings = ((void*)0);
    gdouble drc, gain, quality;
    gboolean enable_quality;
    gint track, acodec, bitrate, samplerate, mix;

    gint select_acodec;
    gint fallback;

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    gint copy_mask = ghb_get_copy_mask(settings);

    audio = ghb_array_get(pref_audio, pref_index);

    acodec = ghb_settings_audio_encoder_codec(audio, "AudioEncoder");
    fallback = ghb_select_fallback(settings, acodec);

    bitrate = ghb_settings_audio_bitrate_rate(audio, "AudioBitrate");
    samplerate = ghb_settings_audio_samplerate_rate(audio, "AudioSamplerate");
    mix = ghb_settings_mixdown_mix(audio, "AudioMixdown");
    drc = ghb_dict_get_double(audio, "AudioTrackDRCSlider");
    gain = ghb_dict_get_double(audio, "AudioTrackGainSlider");
    enable_quality = ghb_dict_get_bool(audio, "AudioTrackQualityEnable");
    quality = ghb_dict_get_double(audio, "AudioTrackQuality");
    if (enable_quality)
    {
        bitrate = -1;
    }
    else
    {
        quality = HB_INVALID_AUDIO_QUALITY;
    }

    track = ghb_find_audio_track(title, lang, start_track);
    if (track >= 0)
    {




        hb_audio_config_t *aconfig;
        aconfig = hb_list_audio_config_item(title->list_audio, track);
        select_acodec = ghb_select_audio_codec(
                            mux->format, aconfig->in.codec, acodec, fallback, copy_mask);

        asettings = audio_add_track(settings, track, select_acodec,
                                    quality, bitrate,
                                    samplerate, mix, drc, gain);
    }
    return asettings;
}
