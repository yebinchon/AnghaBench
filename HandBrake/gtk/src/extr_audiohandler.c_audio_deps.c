
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int builder; int * settings; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef int hb_title_t ;
struct TYPE_10__ {int samplerate; int codec_param; int codec; } ;
struct TYPE_12__ {TYPE_1__ in; } ;
typedef TYPE_3__ hb_audio_config_t ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int HB_ACODEC_PASS_FLAG ;
 int TRUE ;
 int enable_quality_widgets (TYPE_2__*,int,int,int,int) ;
 int ghb_adjust_audio_rate_combos (TYPE_2__*,int *) ;
 int ghb_check_dependency (TYPE_2__*,int *,int *) ;
 int ghb_dict_get_bool (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 TYPE_3__* ghb_get_audio_info (int const*,int) ;
 int ghb_grey_combo_options (TYPE_2__*) ;
 int * ghb_lookup_title (int,int *) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;
 int ghb_settings_mixdown_mix (int *,char*) ;
 int gtk_widget_set_sensitive (int *,int) ;
 scalar_t__ hb_audio_can_apply_drc (int ,int ,int) ;

__attribute__((used)) static void
audio_deps(signal_user_data_t *ud, GhbValue *asettings, GtkWidget *widget)
{
    ghb_adjust_audio_rate_combos(ud, asettings);
    ghb_grey_combo_options(ud);
    if (widget != ((void*)0))
        ghb_check_dependency(ud, widget, ((void*)0));

    int track = -1, title_id, mix = 0, acodec = 0, sr = 0;
    hb_audio_config_t *aconfig = ((void*)0);
    const hb_title_t *title;
    gboolean qe;

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, ((void*)0));

    if (asettings != ((void*)0))
    {
        track = ghb_dict_get_int(asettings, "Track");
        acodec = ghb_settings_audio_encoder_codec(asettings, "Encoder");
        aconfig = ghb_get_audio_info(title, track);
        mix = ghb_settings_mixdown_mix(asettings, "Mixdown");
        sr = ghb_dict_get_int(asettings, "Samplerate");
        if (sr == 0 && aconfig != ((void*)0))
        {
            sr = aconfig->in.samplerate;
        }
    }

    gboolean is_passthru = (acodec & HB_ACODEC_PASS_FLAG);
    gboolean enable_drc = TRUE;
    if (aconfig != ((void*)0))
    {
        enable_drc = hb_audio_can_apply_drc(aconfig->in.codec,
                                            aconfig->in.codec_param, acodec) &&
                     !is_passthru;
    }

    widget = GHB_WIDGET(ud->builder, "AudioTrackDRCSlider");
    gtk_widget_set_sensitive(widget, enable_drc);
    widget = GHB_WIDGET(ud->builder, "AudioTrackDRCSliderLabel");
    gtk_widget_set_sensitive(widget, enable_drc);
    widget = GHB_WIDGET(ud->builder, "AudioTrackDRCValue");
    gtk_widget_set_sensitive(widget, enable_drc);

    qe = ghb_dict_get_bool(ud->settings, "AudioTrackQualityEnable");
    enable_quality_widgets(ud, qe, acodec, sr, mix);

    widget = GHB_WIDGET(ud->builder, "AudioMixdown");
    gtk_widget_set_sensitive(widget, !is_passthru);
    widget = GHB_WIDGET(ud->builder, "AudioSamplerate");
    gtk_widget_set_sensitive(widget, !is_passthru);
    widget = GHB_WIDGET(ud->builder, "AudioTrackGainSlider");
    gtk_widget_set_sensitive(widget, !is_passthru);
    widget = GHB_WIDGET(ud->builder, "AudioTrackGainValue");
    gtk_widget_set_sensitive(widget, !is_passthru);
}
