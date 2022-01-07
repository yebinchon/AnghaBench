
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gdouble ;
typedef int GhbValue ;


 int * audio_get_selected_settings (TYPE_1__*,int *) ;
 int get_ui_quality (int *) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int ghb_dict_get_value (int *,char*) ;
 int ghb_double_value (int ) ;
 int * ghb_get_job_audio_list (int ) ;
 int ghb_sanitize_audio_settings (int ,int *) ;
 int ghb_ui_update (TYPE_1__*,char*,int ) ;

void ghb_sanitize_audio_tracks(signal_user_data_t *ud)
{
    int ii;
    GhbValue *alist = ghb_get_job_audio_list(ud->settings);
    int count = ghb_array_len(alist);

    for (ii = 0; ii < count; ii++)
    {
        GhbValue *asettings = ghb_array_get(alist, ii);
        ghb_sanitize_audio_settings(ud->settings, asettings);
    }

    GhbValue *asettings = audio_get_selected_settings(ud, ((void*)0));
    if (asettings != ((void*)0))
    {
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
    }
}
