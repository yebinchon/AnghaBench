
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_5__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gdouble ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_COMBO_BOX (int *) ;
 int get_ui_quality (int *) ;
 int ghb_audio_bitrate_opts_filter (int ,int,int) ;
 int ghb_audio_list_refresh_selected (TYPE_1__*) ;
 int ghb_audio_samplerate_opts_filter (int ,int) ;
 void* ghb_dict_get_int (int *,char*) ;
 int ghb_dict_get_value (int *,char*) ;
 int ghb_double_value (int ) ;
 int ghb_get_best_mix (void*,int,int) ;
 int * ghb_get_title_audio_track (int ,int) ;
 int ghb_mix_opts_filter (int ,int) ;
 int ghb_sanitize_audio_settings (int ,int *) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;
 int ghb_settings_mixdown_mix (int *,char*) ;
 int ghb_ui_update (TYPE_1__*,char*,int ) ;
 int hb_audio_bitrate_get_limits (int,int,int,int*,int*) ;

__attribute__((used)) static void
ghb_adjust_audio_rate_combos(signal_user_data_t *ud, GhbValue *asettings)
{
    if (asettings != ((void*)0))
    {
        ghb_sanitize_audio_settings(ud->settings, asettings);

        int track, mix, acodec;
        GhbValue * atrack;
        uint64_t layout;

        track = ghb_dict_get_int(asettings, "Track");

        acodec = ghb_settings_audio_encoder_codec(asettings, "Encoder");
        mix = ghb_settings_mixdown_mix(asettings, "Mixdown");

        int low, high, sr;
        sr = ghb_dict_get_int(asettings, "Samplerate");
        atrack = ghb_get_title_audio_track(ud->settings, track);
        if (sr == 0)
        {
            sr = ghb_dict_get_int(atrack, "SampleRate");
        }
        layout = ghb_dict_get_int(atrack, "ChannelLayout");
        mix = ghb_get_best_mix(layout, acodec, mix);
        hb_audio_bitrate_get_limits(acodec, sr, mix, &low, &high);

        GtkWidget *w = GHB_WIDGET(ud->builder, "AudioBitrate");
        ghb_audio_bitrate_opts_filter(GTK_COMBO_BOX(w), low, high);
        w = GHB_WIDGET(ud->builder, "AudioMixdown");
        ghb_mix_opts_filter(GTK_COMBO_BOX(w), acodec);
        w = GHB_WIDGET(ud->builder, "AudioSamplerate");
        ghb_audio_samplerate_opts_filter(GTK_COMBO_BOX(w), acodec);

        ghb_ui_update(ud, "AudioEncoder",
                      ghb_dict_get_value(asettings, "Encoder"));
        ghb_ui_update(ud, "AudioBitrate",
                      ghb_dict_get_value(asettings, "Bitrate"));
        gdouble quality = get_ui_quality(asettings);
        ghb_ui_update(ud, "AudioTrackQualityX", ghb_double_value(quality));
        ghb_ui_update(ud, "AudioSamplerate",
                      ghb_dict_get_value(asettings, "Samplerate"));
        ghb_ui_update(ud, "AudioMixdown",
                      ghb_dict_get_value(asettings, "Mixdown"));
        ghb_ui_update(ud, "AudioTrackDRCSlider",
                      ghb_dict_get_value(asettings, "DRC"));
        ghb_audio_list_refresh_selected(ud);
    }
}
