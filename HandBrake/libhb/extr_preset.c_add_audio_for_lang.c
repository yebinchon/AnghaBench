
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int key ;
typedef int hb_value_t ;
typedef int hb_value_array_t ;
struct TYPE_9__ {int list_audio; } ;
typedef TYPE_2__ hb_title_t ;
typedef int const hb_dict_t ;
struct TYPE_8__ {scalar_t__* name; int codec; } ;
struct TYPE_10__ {TYPE_1__ in; } ;
typedef TYPE_3__ hb_audio_config_t ;


 scalar_t__ HB_ACODEC_INVALID ;
 int HB_ACODEC_NONE ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_VALUE_TYPE_DOUBLE ;
 int HB_VALUE_TYPE_INT ;
 scalar_t__ HB_VALUE_TYPE_STRING ;
 int find_audio_track (TYPE_2__*,char const*,int,int) ;
 int hb_audio_encoder_get_from_name (int ) ;
 int hb_audio_encoder_get_short_name (int) ;
 int hb_audio_samplerate_get_from_name (char const*) ;
 int * hb_dict_get (int const*,char*) ;
 char* hb_dict_get_string (int const*,char*) ;
 int const* hb_dict_init () ;
 int hb_dict_set (int const*,char*,int ) ;
 int hb_dict_set_string (int const*,char*,char const*) ;
 TYPE_3__* hb_list_audio_config_item (int ,int) ;
 int hb_sanitize_audio_settings (TYPE_2__*,int const*) ;
 int hb_value_array_append (int *,int const*) ;
 int const* hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_bool (int) ;
 int hb_value_dup (int *) ;
 int hb_value_free (int const**) ;
 scalar_t__ hb_value_get_bool (int *) ;
 int hb_value_get_int (int *) ;
 int hb_value_get_string (int *) ;
 int hb_value_int (int) ;
 int hb_value_string (int ) ;
 scalar_t__ hb_value_type (int *) ;
 int hb_value_xform (int *,int ) ;
 int sanitize_audio_codec (int ,int,int,int,int) ;
 int snprintf (char*,int,char*,int) ;
 int const* source_audio_track_used (int const*,int) ;

__attribute__((used)) static void add_audio_for_lang(hb_value_array_t *list, const hb_dict_t *preset,
                               hb_title_t *title, int mux, int copy_mask,
                               int fallback, const char *lang,
                               int behavior, int mode, hb_dict_t *track_dict)
{
    hb_value_array_t * encoder_list = hb_dict_get(preset, "AudioList");
    int count = hb_value_array_len(encoder_list);
    int track = find_audio_track(title, lang, 0, behavior);
    while (track >= 0)
    {
        int track_count = hb_value_array_len(list);
        char key[8];
        snprintf(key, sizeof(key), "%d", track);

        count = mode && track_count ? 1 : count;
        int ii;
        for (ii = 0; ii < count; ii++)
        {


            hb_dict_t *used = source_audio_track_used(track_dict, ii);
            if (hb_value_get_bool(hb_dict_get(used, key)))
                continue;


            hb_dict_t *audio_dict = hb_dict_init();
            hb_value_t *acodec_value;
            hb_dict_t *encoder_dict = hb_value_array_get(encoder_list, ii);
            int out_codec;

            acodec_value = hb_dict_get(encoder_dict, "AudioEncoder");
            if (hb_value_type(acodec_value) == HB_VALUE_TYPE_STRING)
            {
                out_codec = hb_audio_encoder_get_from_name(
                                hb_value_get_string(acodec_value));
            }
            else
            {
                out_codec = hb_value_get_int(acodec_value);
            }


            hb_dict_set(audio_dict, "PresetEncoder",
                hb_value_string(hb_audio_encoder_get_short_name(out_codec)));

            hb_audio_config_t *aconfig;
            aconfig = hb_list_audio_config_item(title->list_audio, track);
            out_codec = sanitize_audio_codec(aconfig->in.codec, out_codec,
                                             copy_mask, fallback, mux);
            if (out_codec == HB_ACODEC_NONE || HB_ACODEC_INVALID)
            {
                hb_value_free(&audio_dict);
                continue;
            }
            hb_dict_set(audio_dict, "Track", hb_value_int(track));
            hb_dict_set(audio_dict, "Encoder", hb_value_string(
                        hb_audio_encoder_get_short_name(out_codec)));
            const char * name = hb_dict_get_string(encoder_dict, "AudioTrackName");
            if (name != ((void*)0) && name[0] != 0)
            {
                hb_dict_set_string(audio_dict, "Name", name);
            }
            else if (aconfig->in.name != ((void*)0) && aconfig->in.name[0] != 0)
            {
                hb_dict_set_string(audio_dict, "Name", aconfig->in.name);
            }
            if (!(out_codec & HB_ACODEC_PASS_FLAG))
            {
                if (hb_dict_get(encoder_dict, "AudioTrackGainSlider") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "Gain", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioTrackGainSlider")));
                }
                if (hb_dict_get(encoder_dict, "AudioTrackDRCSlider") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "DRC", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioTrackDRCSlider")));
                }
                if (hb_dict_get(encoder_dict, "AudioMixdown") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "Mixdown", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioMixdown")));
                }
                if (hb_dict_get(encoder_dict, "AudioNormalizeMixLevel") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "NormalizeMixLevel", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioNormalizeMixLevel")));
                }
                if (hb_dict_get(encoder_dict, "AudioDitherMethod") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "DitherMethod", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioDitherMethod")));
                }
                if (hb_dict_get(encoder_dict, "AudioSamplerate") != ((void*)0))
                {
                    const char * sr_name;
                    int sr;

                    sr_name = hb_dict_get_string(encoder_dict,
                                                 "AudioSamplerate");
                    sr = hb_audio_samplerate_get_from_name(sr_name);
                    if (sr < 0)
                    {
                        sr = 0;
                    }
                    hb_dict_set(audio_dict, "Samplerate", hb_value_int(sr));
                }
                if (hb_dict_get(encoder_dict, "AudioCompressionLevel") != ((void*)0))
                {
                    hb_dict_set(audio_dict, "CompressionLevel", hb_value_dup(
                        hb_dict_get(encoder_dict, "AudioCompressionLevel")));
                }
                if (hb_value_get_bool(hb_dict_get(encoder_dict,
                                                  "AudioTrackQualityEnable")))
                {
                    hb_dict_set(audio_dict, "Quality", hb_value_xform(
                            hb_dict_get(encoder_dict, "AudioTrackQuality"),
                            HB_VALUE_TYPE_DOUBLE));
                }
                else
                {
                    hb_dict_set(audio_dict, "Bitrate", hb_value_xform(
                        hb_dict_get(encoder_dict, "AudioBitrate"),
                        HB_VALUE_TYPE_INT));
                }
            }


            hb_sanitize_audio_settings(title, audio_dict);

            hb_value_array_append(list, audio_dict);
            hb_dict_set(used, key, hb_value_bool(1));
        }
        if (behavior == 2)
            track = find_audio_track(title, lang, track + 1, behavior);
        else
            break;
    }
}
