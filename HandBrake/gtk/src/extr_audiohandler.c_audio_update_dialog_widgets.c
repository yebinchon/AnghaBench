
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int TRUE ;
 int audio_deps (int *,int *,int *) ;
 int block_updates ;
 int free (char*) ;
 char* get_drc_string (double) ;
 char* get_gain_string (double) ;
 double get_quality (int,double) ;
 char* get_quality_string (int,double) ;
 int ghb_audio_quality_enabled (int *) ;
 int * ghb_bool_value_new (int) ;
 double ghb_dict_get_double (int *,char*) ;
 int * ghb_dict_get_value (int *,char*) ;
 int * ghb_double_value (double) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;
 int * ghb_string_value (char*) ;
 int ghb_ui_update (int *,char*,int *) ;

__attribute__((used)) static void
audio_update_dialog_widgets(signal_user_data_t *ud, GhbValue *asettings)
{
    if (asettings != ((void*)0))
    {
        double gain, drc, quality, qualityx;
        char *s_gain, *s_drc, *s_quality;
        gboolean qe;

        block_updates = TRUE;
        ghb_ui_update(ud, "AudioTrack",
                      ghb_dict_get_value(asettings, "Track"));
        ghb_ui_update(ud, "AudioEncoder",
                      ghb_dict_get_value(asettings, "Encoder"));
        ghb_ui_update(ud, "AudioBitrate",
                      ghb_dict_get_value(asettings, "Bitrate"));
        GhbValue *val = ghb_dict_get_value(asettings, "Name");
        if (val != ((void*)0))
        {
            ghb_ui_update(ud, "AudioTrackName", val);
        }
        else
        {
            ghb_ui_update(ud, "AudioTrackName", ghb_string_value(""));
        }
        ghb_ui_update(ud, "AudioSamplerate",
                      ghb_dict_get_value(asettings, "Samplerate"));
        ghb_ui_update(ud, "AudioMixdown",
                      ghb_dict_get_value(asettings, "Mixdown"));
        ghb_ui_update(ud, "AudioTrackDRCSlider",
                      ghb_dict_get_value(asettings, "DRC"));
        drc = ghb_dict_get_double(asettings, "DRC");
        s_drc = get_drc_string(drc);
        ghb_ui_update(ud, "AudioTrackDRCValue", ghb_string_value(s_drc));
        free(s_drc);
        ghb_ui_update(ud, "AudioTrackGainSlider",
                      ghb_dict_get_value(asettings, "Gain"));
        gain = ghb_dict_get_double(asettings, "Gain");
        s_gain = get_gain_string(gain);
        ghb_ui_update(ud, "AudioTrackGainValue", ghb_string_value(s_gain));

        int codec = ghb_settings_audio_encoder_codec(asettings, "Encoder");
        quality = ghb_dict_get_double(asettings, "Quality");
        qualityx = get_quality(codec, quality);
        ghb_ui_update(ud, "AudioTrackQualityX", ghb_double_value(qualityx));
        s_quality = get_quality_string(codec, quality);
        ghb_ui_update(ud, "AudioTrackQualityValue", ghb_string_value(s_quality));
        free(s_quality);


        qe = ghb_audio_quality_enabled(asettings);
        if (qe)
        {
            ghb_ui_update(ud, "AudioTrackQualityEnable",
                          ghb_bool_value_new(qe));
        }
        else
        {
            ghb_ui_update(ud, "AudioTrackBitrateEnable",
                          ghb_bool_value_new(!qe));
        }
        block_updates = FALSE;
    }
    audio_deps(ud, asettings, ((void*)0));
}
