#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int codec; } ;
typedef  TYPE_2__ hb_encoder_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkScaleButton ;
typedef  int /*<<< orphan*/  GtkRadioButton ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GtkComboBox ;
typedef  int /*<<< orphan*/  GtkButton ;
typedef  int /*<<< orphan*/  GtkBox ;
typedef  int /*<<< orphan*/  GCallback ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GTK_ALIGN_CENTER ; 
 int /*<<< orphan*/  GTK_ALIGN_END ; 
 int /*<<< orphan*/  GTK_ALIGN_FILL ; 
 int /*<<< orphan*/  GTK_ALIGN_START ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  GTK_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_RELIEF_NONE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int HB_AMIXDOWN_5POINT1 ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC8 (char*) ; 
 scalar_t__ audio_def_drc_changed_cb ; 
 scalar_t__ audio_def_encode_setting_changed_cb ; 
 scalar_t__ audio_def_encoder_changed_cb ; 
 scalar_t__ audio_def_gain_changed_cb ; 
 scalar_t__ audio_def_quality_changed_cb ; 
 scalar_t__ audio_def_quality_enable_changed_cb ; 
 scalar_t__ audio_def_setting_add_cb ; 
 scalar_t__ audio_def_setting_remove_cb ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (double,int,double,char const**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC39 (int /*<<< orphan*/ *) ; 

GtkWidget * FUNC40(signal_user_data_t *ud)
{
    GtkBox *box, *box2, *box3;
    GtkComboBox *combo;
    GtkScaleButton *scale;
    GtkLabel *label;
    GtkRadioButton *radio;
    GtkButton *button;

    box = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));

    // Add Button
    button = FUNC2(FUNC24(FUNC8("Add")));
    FUNC36(FUNC7(button),
    FUNC8("Add an audio encoder.\n"
      "Each selected source track will be encoded with all selected encoders."));
    FUNC37(FUNC7(button), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(button), "add_button");
    FUNC31(FUNC7(button));
    FUNC10(button, "clicked", (GCallback)audio_def_setting_add_cb, ud);
    FUNC14(box, FUNC7(button));

    // Hidden widgets box
    box2 = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC33(FUNC7(box2), TRUE);
    FUNC32(FUNC7(box2), GTK_ALIGN_FILL);
    FUNC34(FUNC7(box2), "settings_box");

    // Audio Encoder ComboBox
    combo = FUNC3(FUNC26());
    FUNC16(combo);
    FUNC12(combo);
    // Init to first audio encoder
    const hb_encoder_t *aud_enc = FUNC39(NULL);
    FUNC20(FUNC7(combo), FUNC17(aud_enc->codec));
    FUNC36(FUNC7(combo),
      FUNC8("Set the audio codec to encode this track with."));
    FUNC37(FUNC7(combo), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(combo), "AudioEncoder");
    FUNC38(FUNC7(combo));
    FUNC10(combo, "changed", (GCallback)audio_def_encoder_changed_cb, ud);
    FUNC14(box2, FUNC7(combo));

    box3 = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC34(FUNC7(box3), "br_q_box");
    FUNC38(FUNC7(box3));

    // Bitrate vs Quality RadioButton
    GtkBox *vbox;
    vbox = FUNC1(FUNC22(GTK_ORIENTATION_VERTICAL, 0));
    radio = FUNC5(FUNC29(NULL, FUNC8("Bitrate")));
    FUNC34(FUNC7(radio), "AudioTrackBitrateEnable");
    FUNC38(FUNC7(radio));
    FUNC14(vbox, FUNC7(radio));
    radio = FUNC5(
                FUNC30(radio, FUNC8("Quality")));
    FUNC34(FUNC7(radio), "AudioTrackQualityEnable");
    FUNC10(radio, "toggled", (GCallback)audio_def_quality_enable_changed_cb, ud);
    FUNC38(FUNC7(radio));
    FUNC14(vbox, FUNC7(radio));
    FUNC38(FUNC7(vbox));
    FUNC14(box3, FUNC7(vbox));

    // Audio Bitrate ComboBox
    combo = FUNC3(FUNC26());
    FUNC16(combo);
    FUNC11(combo);
    FUNC20(FUNC7(combo), FUNC17(192));
    FUNC36(FUNC7(combo),
      FUNC8("Set the bitrate to encode this track with."));
    FUNC37(FUNC7(combo), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(combo), "AudioBitrate");
    FUNC38(FUNC7(combo));
    FUNC10(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    FUNC14(box3, FUNC7(combo));

    GtkBox *qbox;
    qbox = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC34(FUNC7(qbox), "AudioTrackQualityBox");

    // Audio Quality ScaleButton
    const gchar *quality_icons[] = {
        "weather-storm",
        "weather-clear",
        "weather-storm",
        "weather-showers-scattered",
        "weather-showers",
        "weather-overcast",
        "weather-few-clouds",
        "weather-clear",
        NULL
    };
    scale = FUNC6(FUNC19(0, 10, 0.1, quality_icons));
    FUNC36(FUNC7(scale),
      FUNC8("<b>Audio Quality:</b>\n"
        "For encoders that support it, adjust the quality of the output."));

    FUNC37(FUNC7(scale), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(scale), "AudioTrackQualityX");
    FUNC38(FUNC7(scale));
    FUNC10(scale, "value-changed", (GCallback)audio_def_quality_changed_cb, ud);
    FUNC14(qbox, FUNC7(scale));

    // Audio Quality Label
    label = FUNC4(FUNC27("0.00"));
    FUNC28(label, 4);
    FUNC32(FUNC7(label), GTK_ALIGN_START);
    FUNC37(FUNC7(label), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(label), "AudioTrackQualityValue");
    FUNC38(FUNC7(label));
    FUNC14(qbox, FUNC7(label));
    FUNC31(FUNC7(qbox));
    FUNC14(box3, FUNC7(qbox));
    FUNC14(box2, FUNC7(box3));

    // Audio Mix ComboBox
    combo = FUNC3(FUNC26());
    FUNC16(combo);
    FUNC18(combo);
    FUNC20(FUNC7(combo), FUNC17(HB_AMIXDOWN_5POINT1));
    FUNC36(FUNC7(combo),
      FUNC8("Set the mixdown of the output audio track."));
    FUNC37(FUNC7(combo), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(combo), "AudioMixdown");
    FUNC38(FUNC7(combo));
    FUNC10(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    FUNC14(box2, FUNC7(combo));

    // Audio Sample Rate ComboBox
    combo = FUNC3(FUNC26());
    FUNC16(combo);
    FUNC13(combo);
    FUNC20(FUNC7(combo), FUNC17(0));
    FUNC36(FUNC7(combo),
      FUNC8("Set the sample rate of the output audio track."));
    FUNC37(FUNC7(combo), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(combo), "AudioSamplerate");
    FUNC38(FUNC7(combo));
    FUNC10(combo, "changed", (GCallback)audio_def_encode_setting_changed_cb, ud);
    FUNC14(box2, FUNC7(combo));

    box3 = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC34(FUNC7(box3), "gain_box");
    FUNC38(FUNC7(box3));

    // Audio Gain ScaleButton
    const gchar *gain_icons[] = {
        "audio-volume-muted",
        "audio-volume-high",
        "audio-volume-low",
        "audio-volume-medium",
        NULL
    };
    scale = FUNC6(FUNC19(-20, 21, 1, gain_icons));
    FUNC36(FUNC7(scale),
      FUNC8("<b>Audio Gain:</b> "
        "Adjust the amplification or attenuation of the output audio track."));

    FUNC37(FUNC7(scale), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(scale), "AudioTrackGainSlider");
    FUNC38(FUNC7(scale));
    FUNC10(scale, "value-changed", (GCallback)audio_def_gain_changed_cb, ud);
    FUNC14(box3, FUNC7(scale));

    // Audio Gain Label
    label = FUNC4(FUNC27(FUNC8("0dB")));
    FUNC28(label, 6);
    FUNC32(FUNC7(label), GTK_ALIGN_START);
    FUNC37(FUNC7(label), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(label), "AudioTrackGainValue");
    FUNC38(FUNC7(label));
    FUNC14(box3, FUNC7(label));
    FUNC14(box2, FUNC7(box3));

    box3 = FUNC1(FUNC22(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC34(FUNC7(box3), "drc_box");
    FUNC38(FUNC7(box3));

    // Audio DRC ComboBox
    const gchar *drc_icons[] = {
        "audio-input-microphone",
        NULL
    };
    scale = FUNC6(FUNC19(0.9, 4, 0.1, drc_icons));
    FUNC36(FUNC7(scale),
      FUNC8("<b>Dynamic Range Compression:</b> "
        "Adjust the dynamic range of the output audio track.\n\n"
        "For source audio that has a wide dynamic range "
        "(very loud and very soft sequences),\n"
        "DRC allows you to 'compress' the range by making "
        "loud sounds softer and soft sounds louder."));

    FUNC37(FUNC7(scale), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(scale), "AudioTrackDRCSlider");
    FUNC38(FUNC7(scale));
    FUNC10(scale, "value-changed", (GCallback)audio_def_drc_changed_cb, ud);
    FUNC14(box3, FUNC7(scale));

    // Audio DRC Label
    label = FUNC4(FUNC27(FUNC8("Off")));
    FUNC28(label, 4);
    FUNC32(FUNC7(label), GTK_ALIGN_START);
    FUNC37(FUNC7(label), GTK_ALIGN_CENTER);
    FUNC34(FUNC7(label), "AudioTrackDRCValue");
    FUNC38(FUNC7(label));
    FUNC14(box3, FUNC7(label));
    FUNC14(box2, FUNC7(box3));

    // Remove button
    button = FUNC2(FUNC23());
    FUNC33(FUNC7(button), TRUE);
    FUNC32(FUNC7(button), GTK_ALIGN_FILL);
    FUNC15(button, "hb-remove");
    FUNC36(FUNC7(button),
    FUNC8("Remove this audio encoder"));
    FUNC25(button, GTK_RELIEF_NONE);
    FUNC37(FUNC7(button), GTK_ALIGN_CENTER);
    FUNC32(FUNC7(button), GTK_ALIGN_END);
    FUNC34(FUNC7(button), "remove_button");
    FUNC38(FUNC7(button));
    FUNC10(button, "clicked", (GCallback)audio_def_setting_remove_cb, ud);
    FUNC14(box2, FUNC7(button));

    FUNC38(FUNC7(box2));
    FUNC14(box, FUNC7(box2));

    FUNC38(FUNC7(box));

    GtkWidget *widget;

    int width;
    widget = FUNC9(FUNC7(box), "AudioEncoder");
    FUNC21(widget, NULL, &width);

    widget = FUNC0(ud->builder, "audio_defaults_encoder_label");
    FUNC35(widget, width, -1);
    widget = FUNC9(FUNC7(box), "br_q_box");
    FUNC21(widget, NULL, &width);
    widget = FUNC0(ud->builder, "audio_defaults_bitrate_label");
    FUNC35(widget, width, -1);
    widget = FUNC9(FUNC7(box), "AudioMixdown");
    FUNC21(widget, NULL, &width);
    widget = FUNC0(ud->builder, "audio_defaults_mixdown_label");
    FUNC35(widget, width, -1);
    widget = FUNC9(FUNC7(box), "AudioSamplerate");
    FUNC21(widget, NULL, &width);
    widget = FUNC0(ud->builder, "audio_defaults_samplerate_label");
    FUNC35(widget, width, -1);
    widget = FUNC9(FUNC7(box), "gain_box");
    FUNC21(widget, NULL, &width);
    widget = FUNC0(ud->builder, "audio_defaults_gain_label");
    FUNC35(widget, width, -1);
    widget = FUNC9(FUNC7(box), "drc_box");
    FUNC21(widget, NULL, &width);
    widget = FUNC0(ud->builder, "audio_defaults_drc_label");
    FUNC35(widget, width, -1);

    return FUNC7(box);
}