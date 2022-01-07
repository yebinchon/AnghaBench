
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int codec; } ;
typedef TYPE_2__ hb_encoder_t ;
typedef char gchar ;
typedef int GtkWidget ;
typedef int GtkScaleButton ;
typedef int GtkRadioButton ;
typedef int GtkLabel ;
typedef int GtkComboBox ;
typedef int GtkButton ;
typedef int GtkBox ;
typedef int GCallback ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_ALIGN_CENTER ;
 int GTK_ALIGN_END ;
 int GTK_ALIGN_FILL ;
 int GTK_ALIGN_START ;
 int * GTK_BOX (int ) ;
 int * GTK_BUTTON (int ) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LABEL (int ) ;
 int GTK_ORIENTATION_HORIZONTAL ;
 int GTK_ORIENTATION_VERTICAL ;
 int * GTK_RADIO_BUTTON (int ) ;
 int GTK_RELIEF_NONE ;
 int * GTK_SCALE_BUTTON (int ) ;
 int * GTK_WIDGET (int *) ;
 int HB_AMIXDOWN_5POINT1 ;
 int TRUE ;
 char* _ (char*) ;
 scalar_t__ audio_def_drc_changed_cb ;
 scalar_t__ audio_def_encode_setting_changed_cb ;
 scalar_t__ audio_def_encoder_changed_cb ;
 scalar_t__ audio_def_gain_changed_cb ;
 scalar_t__ audio_def_quality_changed_cb ;
 scalar_t__ audio_def_quality_enable_changed_cb ;
 scalar_t__ audio_def_setting_add_cb ;
 scalar_t__ audio_def_setting_remove_cb ;
 int * find_widget (int *,char*) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int ghb_audio_bitrate_opts_set (int *) ;
 int ghb_audio_encoder_opts_set (int *) ;
 int ghb_audio_samplerate_opts_set (int *) ;
 int ghb_box_append_child (int *,int *) ;
 int ghb_button_set_icon_name (int *,char*) ;
 int ghb_init_combo_box (int *) ;
 int ghb_int_value (int) ;
 int ghb_mix_opts_set (int *) ;
 int ghb_scale_button_new (double,int,double,char const**) ;
 int ghb_update_widget (int *,int ) ;
 int ghb_widget_get_preferred_width (int *,int *,int*) ;
 int gtk_box_new (int ,int ) ;
 int gtk_button_new () ;
 int gtk_button_new_with_label (char*) ;
 int gtk_button_set_relief (int *,int ) ;
 int gtk_combo_box_new () ;
 int gtk_label_new (char*) ;
 int gtk_label_set_width_chars (int *,int) ;
 int gtk_radio_button_new_with_label (int *,char*) ;
 int gtk_radio_button_new_with_label_from_widget (int *,char*) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_set_halign (int *,int ) ;
 int gtk_widget_set_hexpand (int *,int ) ;
 int gtk_widget_set_name (int *,char*) ;
 int gtk_widget_set_size_request (int *,int,int) ;
 int gtk_widget_set_tooltip_markup (int *,char*) ;
 int gtk_widget_set_valign (int *,int ) ;
 int gtk_widget_show (int *) ;
 TYPE_2__* hb_audio_encoder_get_next (int *) ;

GtkWidget * ghb_create_audio_settings_row(signal_user_data_t *ud)
{
    GtkBox *box, *box2, *box3;
    GtkComboBox *combo;
    GtkScaleButton *scale;
    GtkLabel *label;
    GtkRadioButton *radio;
    GtkButton *button;

    box = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));


    button = GTK_BUTTON(gtk_button_new_with_label(_("Add")));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(button),
    _("Add an audio encoder.\n"
      "Each selected source track will be encoded with all selected encoders."));
    gtk_widget_set_valign(GTK_WIDGET(button), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(button), "add_button");
    gtk_widget_hide(GTK_WIDGET(button));
    g_signal_connect(button, "clicked", (GCallback)audio_def_setting_add_cb, ud);
    ghb_box_append_child(box, GTK_WIDGET(button));


    box2 = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));
    gtk_widget_set_hexpand(GTK_WIDGET(box2), TRUE);
    gtk_widget_set_halign(GTK_WIDGET(box2), GTK_ALIGN_FILL);
    gtk_widget_set_name(GTK_WIDGET(box2), "settings_box");


    combo = GTK_COMBO_BOX(gtk_combo_box_new());
    ghb_init_combo_box(combo);
    ghb_audio_encoder_opts_set(combo);

    const hb_encoder_t *aud_enc = hb_audio_encoder_get_next(((void*)0));
    ghb_update_widget(GTK_WIDGET(combo), ghb_int_value(aud_enc->codec));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(combo),
      _("Set the audio codec to encode this track with."));
    gtk_widget_set_valign(GTK_WIDGET(combo), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(combo), "AudioEncoder");
    gtk_widget_show(GTK_WIDGET(combo));
    g_signal_connect(combo, "changed", (GCallback)audio_def_encoder_changed_cb, ud);
    ghb_box_append_child(box2, GTK_WIDGET(combo));

    box3 = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));
    gtk_widget_set_name(GTK_WIDGET(box3), "br_q_box");
    gtk_widget_show(GTK_WIDGET(box3));


    GtkBox *vbox;
    vbox = GTK_BOX(gtk_box_new(GTK_ORIENTATION_VERTICAL, 0));
    radio = GTK_RADIO_BUTTON(gtk_radio_button_new_with_label(((void*)0), _("Bitrate")));
    gtk_widget_set_name(GTK_WIDGET(radio), "AudioTrackBitrateEnable");
    gtk_widget_show(GTK_WIDGET(radio));
    ghb_box_append_child(vbox, GTK_WIDGET(radio));
    radio = GTK_RADIO_BUTTON(
                gtk_radio_button_new_with_label_from_widget(radio, _("Quality")));
    gtk_widget_set_name(GTK_WIDGET(radio), "AudioTrackQualityEnable");
    g_signal_connect(radio, "toggled", (GCallback)audio_def_quality_enable_changed_cb, ud);
    gtk_widget_show(GTK_WIDGET(radio));
    ghb_box_append_child(vbox, GTK_WIDGET(radio));
    gtk_widget_show(GTK_WIDGET(vbox));
    ghb_box_append_child(box3, GTK_WIDGET(vbox));


    combo = GTK_COMBO_BOX(gtk_combo_box_new());
    ghb_init_combo_box(combo);
    ghb_audio_bitrate_opts_set(combo);
    ghb_update_widget(GTK_WIDGET(combo), ghb_int_value(192));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(combo),
      _("Set the bitrate to encode this track with."));
    gtk_widget_set_valign(GTK_WIDGET(combo), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(combo), "AudioBitrate");
    gtk_widget_show(GTK_WIDGET(combo));
    g_signal_connect(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    ghb_box_append_child(box3, GTK_WIDGET(combo));

    GtkBox *qbox;
    qbox = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));
    gtk_widget_set_name(GTK_WIDGET(qbox), "AudioTrackQualityBox");


    const gchar *quality_icons[] = {
        "weather-storm",
        "weather-clear",
        "weather-storm",
        "weather-showers-scattered",
        "weather-showers",
        "weather-overcast",
        "weather-few-clouds",
        "weather-clear",
        ((void*)0)
    };
    scale = GTK_SCALE_BUTTON(ghb_scale_button_new(0, 10, 0.1, quality_icons));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(scale),
      _("<b>Audio Quality:</b>\n"
        "For encoders that support it, adjust the quality of the output."));

    gtk_widget_set_valign(GTK_WIDGET(scale), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(scale), "AudioTrackQualityX");
    gtk_widget_show(GTK_WIDGET(scale));
    g_signal_connect(scale, "value-changed", (GCallback)audio_def_quality_changed_cb, ud);
    ghb_box_append_child(qbox, GTK_WIDGET(scale));


    label = GTK_LABEL(gtk_label_new("0.00"));
    gtk_label_set_width_chars(label, 4);
    gtk_widget_set_halign(GTK_WIDGET(label), GTK_ALIGN_START);
    gtk_widget_set_valign(GTK_WIDGET(label), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(label), "AudioTrackQualityValue");
    gtk_widget_show(GTK_WIDGET(label));
    ghb_box_append_child(qbox, GTK_WIDGET(label));
    gtk_widget_hide(GTK_WIDGET(qbox));
    ghb_box_append_child(box3, GTK_WIDGET(qbox));
    ghb_box_append_child(box2, GTK_WIDGET(box3));


    combo = GTK_COMBO_BOX(gtk_combo_box_new());
    ghb_init_combo_box(combo);
    ghb_mix_opts_set(combo);
    ghb_update_widget(GTK_WIDGET(combo), ghb_int_value(HB_AMIXDOWN_5POINT1));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(combo),
      _("Set the mixdown of the output audio track."));
    gtk_widget_set_valign(GTK_WIDGET(combo), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(combo), "AudioMixdown");
    gtk_widget_show(GTK_WIDGET(combo));
    g_signal_connect(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    ghb_box_append_child(box2, GTK_WIDGET(combo));


    combo = GTK_COMBO_BOX(gtk_combo_box_new());
    ghb_init_combo_box(combo);
    ghb_audio_samplerate_opts_set(combo);
    ghb_update_widget(GTK_WIDGET(combo), ghb_int_value(0));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(combo),
      _("Set the sample rate of the output audio track."));
    gtk_widget_set_valign(GTK_WIDGET(combo), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(combo), "AudioSamplerate");
    gtk_widget_show(GTK_WIDGET(combo));
    g_signal_connect(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    ghb_box_append_child(box2, GTK_WIDGET(combo));

    box3 = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));
    gtk_widget_set_name(GTK_WIDGET(box3), "gain_box");
    gtk_widget_show(GTK_WIDGET(box3));


    const gchar *gain_icons[] = {
        "audio-volume-muted",
        "audio-volume-high",
        "audio-volume-low",
        "audio-volume-medium",
        ((void*)0)
    };
    scale = GTK_SCALE_BUTTON(ghb_scale_button_new(-20, 21, 1, gain_icons));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(scale),
      _("<b>Audio Gain:</b> "
        "Adjust the amplification or attenuation of the output audio track."));

    gtk_widget_set_valign(GTK_WIDGET(scale), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(scale), "AudioTrackGainSlider");
    gtk_widget_show(GTK_WIDGET(scale));
    g_signal_connect(scale, "value-changed", (GCallback)audio_def_gain_changed_cb, ud);
    ghb_box_append_child(box3, GTK_WIDGET(scale));


    label = GTK_LABEL(gtk_label_new(_("0dB")));
    gtk_label_set_width_chars(label, 6);
    gtk_widget_set_halign(GTK_WIDGET(label), GTK_ALIGN_START);
    gtk_widget_set_valign(GTK_WIDGET(label), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(label), "AudioTrackGainValue");
    gtk_widget_show(GTK_WIDGET(label));
    ghb_box_append_child(box3, GTK_WIDGET(label));
    ghb_box_append_child(box2, GTK_WIDGET(box3));

    box3 = GTK_BOX(gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0));
    gtk_widget_set_name(GTK_WIDGET(box3), "drc_box");
    gtk_widget_show(GTK_WIDGET(box3));


    const gchar *drc_icons[] = {
        "audio-input-microphone",
        ((void*)0)
    };
    scale = GTK_SCALE_BUTTON(ghb_scale_button_new(0.9, 4, 0.1, drc_icons));
    gtk_widget_set_tooltip_markup(GTK_WIDGET(scale),
      _("<b>Dynamic Range Compression:</b> "
        "Adjust the dynamic range of the output audio track.\n\n"
        "For source audio that has a wide dynamic range "
        "(very loud and very soft sequences),\n"
        "DRC allows you to 'compress' the range by making "
        "loud sounds softer and soft sounds louder."));

    gtk_widget_set_valign(GTK_WIDGET(scale), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(scale), "AudioTrackDRCSlider");
    gtk_widget_show(GTK_WIDGET(scale));
    g_signal_connect(scale, "value-changed", (GCallback)audio_def_drc_changed_cb, ud);
    ghb_box_append_child(box3, GTK_WIDGET(scale));


    label = GTK_LABEL(gtk_label_new(_("Off")));
    gtk_label_set_width_chars(label, 4);
    gtk_widget_set_halign(GTK_WIDGET(label), GTK_ALIGN_START);
    gtk_widget_set_valign(GTK_WIDGET(label), GTK_ALIGN_CENTER);
    gtk_widget_set_name(GTK_WIDGET(label), "AudioTrackDRCValue");
    gtk_widget_show(GTK_WIDGET(label));
    ghb_box_append_child(box3, GTK_WIDGET(label));
    ghb_box_append_child(box2, GTK_WIDGET(box3));


    button = GTK_BUTTON(gtk_button_new());
    gtk_widget_set_hexpand(GTK_WIDGET(button), TRUE);
    gtk_widget_set_halign(GTK_WIDGET(button), GTK_ALIGN_FILL);
    ghb_button_set_icon_name(button, "hb-remove");
    gtk_widget_set_tooltip_markup(GTK_WIDGET(button),
    _("Remove this audio encoder"));
    gtk_button_set_relief(button, GTK_RELIEF_NONE);
    gtk_widget_set_valign(GTK_WIDGET(button), GTK_ALIGN_CENTER);
    gtk_widget_set_halign(GTK_WIDGET(button), GTK_ALIGN_END);
    gtk_widget_set_name(GTK_WIDGET(button), "remove_button");
    gtk_widget_show(GTK_WIDGET(button));
    g_signal_connect(button, "clicked", (GCallback)audio_def_setting_remove_cb, ud);
    ghb_box_append_child(box2, GTK_WIDGET(button));

    gtk_widget_show(GTK_WIDGET(box2));
    ghb_box_append_child(box, GTK_WIDGET(box2));

    gtk_widget_show(GTK_WIDGET(box));

    GtkWidget *widget;

    int width;
    widget = find_widget(GTK_WIDGET(box), "AudioEncoder");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);

    widget = GHB_WIDGET(ud->builder, "audio_defaults_encoder_label");
    gtk_widget_set_size_request(widget, width, -1);
    widget = find_widget(GTK_WIDGET(box), "br_q_box");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);
    widget = GHB_WIDGET(ud->builder, "audio_defaults_bitrate_label");
    gtk_widget_set_size_request(widget, width, -1);
    widget = find_widget(GTK_WIDGET(box), "AudioMixdown");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);
    widget = GHB_WIDGET(ud->builder, "audio_defaults_mixdown_label");
    gtk_widget_set_size_request(widget, width, -1);
    widget = find_widget(GTK_WIDGET(box), "AudioSamplerate");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);
    widget = GHB_WIDGET(ud->builder, "audio_defaults_samplerate_label");
    gtk_widget_set_size_request(widget, width, -1);
    widget = find_widget(GTK_WIDGET(box), "gain_box");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);
    widget = GHB_WIDGET(ud->builder, "audio_defaults_gain_label");
    gtk_widget_set_size_request(widget, width, -1);
    widget = find_widget(GTK_WIDGET(box), "drc_box");
    ghb_widget_get_preferred_width(widget, ((void*)0), &width);
    widget = GHB_WIDGET(ud->builder, "audio_defaults_drc_label");
    gtk_widget_set_size_request(widget, width, -1);

    return GTK_WIDGET(box);
}
