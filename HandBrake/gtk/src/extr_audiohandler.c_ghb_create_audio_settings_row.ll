; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_create_audio_settings_row.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_create_audio_settings_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GTK_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Add an audio encoder.\0AEach selected source track will be encoded with all selected encoders.\00", align 1
@GTK_ALIGN_CENTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"add_button\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@audio_def_setting_add_cb = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GTK_ALIGN_FILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"settings_box\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Set the audio codec to encode this track with.\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@audio_def_encoder_changed_cb = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"br_q_box\00", align 1
@GTK_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"AudioTrackBitrateEnable\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@audio_def_quality_enable_changed_cb = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [43 x i8] c"Set the bitrate to encode this track with.\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@audio_def_encode_setting_changed_cb = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"AudioTrackQualityBox\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"weather-storm\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"weather-clear\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"weather-showers-scattered\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"weather-showers\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"weather-overcast\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"weather-few-clouds\00", align 1
@__const.ghb_create_audio_settings_row.quality_icons = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str.23 = private unnamed_addr constant [86 x i8] c"<b>Audio Quality:</b>\0AFor encoders that support it, adjust the quality of the output.\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"AudioTrackQualityX\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@audio_def_quality_changed_cb = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"0.00\00", align 1
@GTK_ALIGN_START = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [23 x i8] c"AudioTrackQualityValue\00", align 1
@HB_AMIXDOWN_5POINT1 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [43 x i8] c"Set the mixdown of the output audio track.\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"Set the sample rate of the output audio track.\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"gain_box\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"audio-volume-muted\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"audio-volume-high\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"audio-volume-low\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"audio-volume-medium\00", align 1
@.str.37 = private unnamed_addr constant [86 x i8] c"<b>Audio Gain:</b> Adjust the amplification or attenuation of the output audio track.\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"AudioTrackGainSlider\00", align 1
@audio_def_gain_changed_cb = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"0dB\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"AudioTrackGainValue\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"drc_box\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"audio-input-microphone\00", align 1
@__const.ghb_create_audio_settings_row.drc_icons = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16
@.str.43 = private unnamed_addr constant [263 x i8] c"<b>Dynamic Range Compression:</b> Adjust the dynamic range of the output audio track.\0A\0AFor source audio that has a wide dynamic range (very loud and very soft sequences),\0ADRC allows you to 'compress' the range by making loud sounds softer and soft sounds louder.\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@audio_def_drc_changed_cb = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"AudioTrackDRCValue\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"hb-remove\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Remove this audio encoder\00", align 1
@GTK_RELIEF_NONE = common dso_local global i32 0, align 4
@GTK_ALIGN_END = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [14 x i8] c"remove_button\00", align 1
@audio_def_setting_remove_cb = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [29 x i8] c"audio_defaults_encoder_label\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"audio_defaults_bitrate_label\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"audio_defaults_mixdown_label\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"audio_defaults_samplerate_label\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"audio_defaults_gain_label\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"audio_defaults_drc_label\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ghb_create_audio_settings_row(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [9 x i8*], align 16
  %15 = alloca [5 x i8*], align 16
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %19 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %20 = call i32 @gtk_box_new(i32 %19, i32 0)
  %21 = call i32* @GTK_BOX(i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @gtk_button_new_with_label(i8* %22)
  %24 = call i32* @GTK_BUTTON(i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @GTK_WIDGET(i32* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @gtk_widget_set_tooltip_markup(i32* %26, i8* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @GTK_WIDGET(i32* %29)
  %31 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %32 = call i32 @gtk_widget_set_valign(i32* %30, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @GTK_WIDGET(i32* %33)
  %35 = call i32 @gtk_widget_set_name(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @GTK_WIDGET(i32* %36)
  %38 = call i32 @gtk_widget_hide(i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* @audio_def_setting_add_cb, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = call i32 @g_signal_connect(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41, %struct.TYPE_6__* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @GTK_WIDGET(i32* %45)
  %47 = call i32 @ghb_box_append_child(i32* %44, i32* %46)
  %48 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %49 = call i32 @gtk_box_new(i32 %48, i32 0)
  %50 = call i32* @GTK_BOX(i32 %49)
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @GTK_WIDGET(i32* %51)
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @gtk_widget_set_hexpand(i32* %52, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32* @GTK_WIDGET(i32* %55)
  %57 = load i32, i32* @GTK_ALIGN_FILL, align 4
  %58 = call i32 @gtk_widget_set_halign(i32* %56, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @GTK_WIDGET(i32* %59)
  %61 = call i32 @gtk_widget_set_name(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 (...) @gtk_combo_box_new()
  %63 = call i32* @GTK_COMBO_BOX(i32 %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @ghb_init_combo_box(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ghb_audio_encoder_opts_set(i32* %66)
  %68 = call %struct.TYPE_7__* @hb_audio_encoder_get_next(i32* null)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %11, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32* @GTK_WIDGET(i32* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ghb_int_value(i32 %73)
  %75 = call i32 @ghb_update_widget(i32* %70, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32* @GTK_WIDGET(i32* %76)
  %78 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %79 = call i32 @gtk_widget_set_tooltip_markup(i32* %77, i8* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @GTK_WIDGET(i32* %80)
  %82 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %83 = call i32 @gtk_widget_set_valign(i32* %81, i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32* @GTK_WIDGET(i32* %84)
  %86 = call i32 @gtk_widget_set_name(i32* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32*, i32** %6, align 8
  %88 = call i32* @GTK_WIDGET(i32* %87)
  %89 = call i32 @gtk_widget_show(i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i64, i64* @audio_def_encoder_changed_cb, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = call i32 @g_signal_connect(i32* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %92, %struct.TYPE_6__* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32* @GTK_WIDGET(i32* %96)
  %98 = call i32 @ghb_box_append_child(i32* %95, i32* %97)
  %99 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %100 = call i32 @gtk_box_new(i32 %99, i32 0)
  %101 = call i32* @GTK_BOX(i32 %100)
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i32* @GTK_WIDGET(i32* %102)
  %104 = call i32 @gtk_widget_set_name(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %105 = load i32*, i32** %5, align 8
  %106 = call i32* @GTK_WIDGET(i32* %105)
  %107 = call i32 @gtk_widget_show(i32* %106)
  %108 = load i32, i32* @GTK_ORIENTATION_VERTICAL, align 4
  %109 = call i32 @gtk_box_new(i32 %108, i32 0)
  %110 = call i32* @GTK_BOX(i32 %109)
  store i32* %110, i32** %12, align 8
  %111 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %112 = call i32 @gtk_radio_button_new_with_label(i32* null, i8* %111)
  %113 = call i32* @GTK_RADIO_BUTTON(i32 %112)
  store i32* %113, i32** %9, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i32* @GTK_WIDGET(i32* %114)
  %116 = call i32 @gtk_widget_set_name(i32* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %117 = load i32*, i32** %9, align 8
  %118 = call i32* @GTK_WIDGET(i32* %117)
  %119 = call i32 @gtk_widget_show(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i32* @GTK_WIDGET(i32* %121)
  %123 = call i32 @ghb_box_append_child(i32* %120, i32* %122)
  %124 = load i32*, i32** %9, align 8
  %125 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %126 = call i32 @gtk_radio_button_new_with_label_from_widget(i32* %124, i8* %125)
  %127 = call i32* @GTK_RADIO_BUTTON(i32 %126)
  store i32* %127, i32** %9, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = call i32* @GTK_WIDGET(i32* %128)
  %130 = call i32 @gtk_widget_set_name(i32* %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %131 = load i32*, i32** %9, align 8
  %132 = load i64, i64* @audio_def_quality_enable_changed_cb, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = call i32 @g_signal_connect(i32* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %133, %struct.TYPE_6__* %134)
  %136 = load i32*, i32** %9, align 8
  %137 = call i32* @GTK_WIDGET(i32* %136)
  %138 = call i32 @gtk_widget_show(i32* %137)
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32* @GTK_WIDGET(i32* %140)
  %142 = call i32 @ghb_box_append_child(i32* %139, i32* %141)
  %143 = load i32*, i32** %12, align 8
  %144 = call i32* @GTK_WIDGET(i32* %143)
  %145 = call i32 @gtk_widget_show(i32* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = call i32* @GTK_WIDGET(i32* %147)
  %149 = call i32 @ghb_box_append_child(i32* %146, i32* %148)
  %150 = call i32 (...) @gtk_combo_box_new()
  %151 = call i32* @GTK_COMBO_BOX(i32 %150)
  store i32* %151, i32** %6, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @ghb_init_combo_box(i32* %152)
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @ghb_audio_bitrate_opts_set(i32* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = call i32* @GTK_WIDGET(i32* %156)
  %158 = call i32 @ghb_int_value(i32 192)
  %159 = call i32 @ghb_update_widget(i32* %157, i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = call i32* @GTK_WIDGET(i32* %160)
  %162 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %163 = call i32 @gtk_widget_set_tooltip_markup(i32* %161, i8* %162)
  %164 = load i32*, i32** %6, align 8
  %165 = call i32* @GTK_WIDGET(i32* %164)
  %166 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %167 = call i32 @gtk_widget_set_valign(i32* %165, i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i32* @GTK_WIDGET(i32* %168)
  %170 = call i32 @gtk_widget_set_name(i32* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %171 = load i32*, i32** %6, align 8
  %172 = call i32* @GTK_WIDGET(i32* %171)
  %173 = call i32 @gtk_widget_show(i32* %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load i64, i64* @audio_def_encode_setting_changed_cb, align 8
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %178 = call i32 @g_signal_connect(i32* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %176, %struct.TYPE_6__* %177)
  %179 = load i32*, i32** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = call i32* @GTK_WIDGET(i32* %180)
  %182 = call i32 @ghb_box_append_child(i32* %179, i32* %181)
  %183 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %184 = call i32 @gtk_box_new(i32 %183, i32 0)
  %185 = call i32* @GTK_BOX(i32 %184)
  store i32* %185, i32** %13, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = call i32* @GTK_WIDGET(i32* %186)
  %188 = call i32 @gtk_widget_set_name(i32* %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %189 = bitcast [9 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %189, i8* align 16 bitcast ([9 x i8*]* @__const.ghb_create_audio_settings_row.quality_icons to i8*), i64 72, i1 false)
  %190 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 0
  %191 = call i32 @ghb_scale_button_new(double 0.000000e+00, i32 10, double 1.000000e-01, i8** %190)
  %192 = call i32* @GTK_SCALE_BUTTON(i32 %191)
  store i32* %192, i32** %7, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32* @GTK_WIDGET(i32* %193)
  %195 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.23, i64 0, i64 0))
  %196 = call i32 @gtk_widget_set_tooltip_markup(i32* %194, i8* %195)
  %197 = load i32*, i32** %7, align 8
  %198 = call i32* @GTK_WIDGET(i32* %197)
  %199 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %200 = call i32 @gtk_widget_set_valign(i32* %198, i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = call i32* @GTK_WIDGET(i32* %201)
  %203 = call i32 @gtk_widget_set_name(i32* %202, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %204 = load i32*, i32** %7, align 8
  %205 = call i32* @GTK_WIDGET(i32* %204)
  %206 = call i32 @gtk_widget_show(i32* %205)
  %207 = load i32*, i32** %7, align 8
  %208 = load i64, i64* @audio_def_quality_changed_cb, align 8
  %209 = trunc i64 %208 to i32
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %211 = call i32 @g_signal_connect(i32* %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %209, %struct.TYPE_6__* %210)
  %212 = load i32*, i32** %13, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = call i32* @GTK_WIDGET(i32* %213)
  %215 = call i32 @ghb_box_append_child(i32* %212, i32* %214)
  %216 = call i32 @gtk_label_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %217 = call i32* @GTK_LABEL(i32 %216)
  store i32* %217, i32** %8, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = call i32 @gtk_label_set_width_chars(i32* %218, i32 4)
  %220 = load i32*, i32** %8, align 8
  %221 = call i32* @GTK_WIDGET(i32* %220)
  %222 = load i32, i32* @GTK_ALIGN_START, align 4
  %223 = call i32 @gtk_widget_set_halign(i32* %221, i32 %222)
  %224 = load i32*, i32** %8, align 8
  %225 = call i32* @GTK_WIDGET(i32* %224)
  %226 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %227 = call i32 @gtk_widget_set_valign(i32* %225, i32 %226)
  %228 = load i32*, i32** %8, align 8
  %229 = call i32* @GTK_WIDGET(i32* %228)
  %230 = call i32 @gtk_widget_set_name(i32* %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %231 = load i32*, i32** %8, align 8
  %232 = call i32* @GTK_WIDGET(i32* %231)
  %233 = call i32 @gtk_widget_show(i32* %232)
  %234 = load i32*, i32** %13, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = call i32* @GTK_WIDGET(i32* %235)
  %237 = call i32 @ghb_box_append_child(i32* %234, i32* %236)
  %238 = load i32*, i32** %13, align 8
  %239 = call i32* @GTK_WIDGET(i32* %238)
  %240 = call i32 @gtk_widget_hide(i32* %239)
  %241 = load i32*, i32** %5, align 8
  %242 = load i32*, i32** %13, align 8
  %243 = call i32* @GTK_WIDGET(i32* %242)
  %244 = call i32 @ghb_box_append_child(i32* %241, i32* %243)
  %245 = load i32*, i32** %4, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = call i32* @GTK_WIDGET(i32* %246)
  %248 = call i32 @ghb_box_append_child(i32* %245, i32* %247)
  %249 = call i32 (...) @gtk_combo_box_new()
  %250 = call i32* @GTK_COMBO_BOX(i32 %249)
  store i32* %250, i32** %6, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = call i32 @ghb_init_combo_box(i32* %251)
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 @ghb_mix_opts_set(i32* %253)
  %255 = load i32*, i32** %6, align 8
  %256 = call i32* @GTK_WIDGET(i32* %255)
  %257 = load i32, i32* @HB_AMIXDOWN_5POINT1, align 4
  %258 = call i32 @ghb_int_value(i32 %257)
  %259 = call i32 @ghb_update_widget(i32* %256, i32 %258)
  %260 = load i32*, i32** %6, align 8
  %261 = call i32* @GTK_WIDGET(i32* %260)
  %262 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0))
  %263 = call i32 @gtk_widget_set_tooltip_markup(i32* %261, i8* %262)
  %264 = load i32*, i32** %6, align 8
  %265 = call i32* @GTK_WIDGET(i32* %264)
  %266 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %267 = call i32 @gtk_widget_set_valign(i32* %265, i32 %266)
  %268 = load i32*, i32** %6, align 8
  %269 = call i32* @GTK_WIDGET(i32* %268)
  %270 = call i32 @gtk_widget_set_name(i32* %269, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %271 = load i32*, i32** %6, align 8
  %272 = call i32* @GTK_WIDGET(i32* %271)
  %273 = call i32 @gtk_widget_show(i32* %272)
  %274 = load i32*, i32** %6, align 8
  %275 = load i64, i64* @audio_def_encode_setting_changed_cb, align 8
  %276 = trunc i64 %275 to i32
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %278 = call i32 @g_signal_connect(i32* %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %276, %struct.TYPE_6__* %277)
  %279 = load i32*, i32** %4, align 8
  %280 = load i32*, i32** %6, align 8
  %281 = call i32* @GTK_WIDGET(i32* %280)
  %282 = call i32 @ghb_box_append_child(i32* %279, i32* %281)
  %283 = call i32 (...) @gtk_combo_box_new()
  %284 = call i32* @GTK_COMBO_BOX(i32 %283)
  store i32* %284, i32** %6, align 8
  %285 = load i32*, i32** %6, align 8
  %286 = call i32 @ghb_init_combo_box(i32* %285)
  %287 = load i32*, i32** %6, align 8
  %288 = call i32 @ghb_audio_samplerate_opts_set(i32* %287)
  %289 = load i32*, i32** %6, align 8
  %290 = call i32* @GTK_WIDGET(i32* %289)
  %291 = call i32 @ghb_int_value(i32 0)
  %292 = call i32 @ghb_update_widget(i32* %290, i32 %291)
  %293 = load i32*, i32** %6, align 8
  %294 = call i32* @GTK_WIDGET(i32* %293)
  %295 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0))
  %296 = call i32 @gtk_widget_set_tooltip_markup(i32* %294, i8* %295)
  %297 = load i32*, i32** %6, align 8
  %298 = call i32* @GTK_WIDGET(i32* %297)
  %299 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %300 = call i32 @gtk_widget_set_valign(i32* %298, i32 %299)
  %301 = load i32*, i32** %6, align 8
  %302 = call i32* @GTK_WIDGET(i32* %301)
  %303 = call i32 @gtk_widget_set_name(i32* %302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %304 = load i32*, i32** %6, align 8
  %305 = call i32* @GTK_WIDGET(i32* %304)
  %306 = call i32 @gtk_widget_show(i32* %305)
  %307 = load i32*, i32** %6, align 8
  %308 = load i64, i64* @audio_def_encode_setting_changed_cb, align 8
  %309 = trunc i64 %308 to i32
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %311 = call i32 @g_signal_connect(i32* %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %309, %struct.TYPE_6__* %310)
  %312 = load i32*, i32** %4, align 8
  %313 = load i32*, i32** %6, align 8
  %314 = call i32* @GTK_WIDGET(i32* %313)
  %315 = call i32 @ghb_box_append_child(i32* %312, i32* %314)
  %316 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %317 = call i32 @gtk_box_new(i32 %316, i32 0)
  %318 = call i32* @GTK_BOX(i32 %317)
  store i32* %318, i32** %5, align 8
  %319 = load i32*, i32** %5, align 8
  %320 = call i32* @GTK_WIDGET(i32* %319)
  %321 = call i32 @gtk_widget_set_name(i32* %320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %322 = load i32*, i32** %5, align 8
  %323 = call i32* @GTK_WIDGET(i32* %322)
  %324 = call i32 @gtk_widget_show(i32* %323)
  %325 = bitcast [5 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %325, i8 0, i64 40, i1 false)
  %326 = bitcast i8* %325 to [5 x i8*]*
  %327 = getelementptr inbounds [5 x i8*], [5 x i8*]* %326, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8** %327, align 16
  %328 = getelementptr inbounds [5 x i8*], [5 x i8*]* %326, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8** %328, align 8
  %329 = getelementptr inbounds [5 x i8*], [5 x i8*]* %326, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8** %329, align 16
  %330 = getelementptr inbounds [5 x i8*], [5 x i8*]* %326, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8** %330, align 8
  %331 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %332 = call i32 @ghb_scale_button_new(double -2.000000e+01, i32 21, double 1.000000e+00, i8** %331)
  %333 = call i32* @GTK_SCALE_BUTTON(i32 %332)
  store i32* %333, i32** %7, align 8
  %334 = load i32*, i32** %7, align 8
  %335 = call i32* @GTK_WIDGET(i32* %334)
  %336 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.37, i64 0, i64 0))
  %337 = call i32 @gtk_widget_set_tooltip_markup(i32* %335, i8* %336)
  %338 = load i32*, i32** %7, align 8
  %339 = call i32* @GTK_WIDGET(i32* %338)
  %340 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %341 = call i32 @gtk_widget_set_valign(i32* %339, i32 %340)
  %342 = load i32*, i32** %7, align 8
  %343 = call i32* @GTK_WIDGET(i32* %342)
  %344 = call i32 @gtk_widget_set_name(i32* %343, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %345 = load i32*, i32** %7, align 8
  %346 = call i32* @GTK_WIDGET(i32* %345)
  %347 = call i32 @gtk_widget_show(i32* %346)
  %348 = load i32*, i32** %7, align 8
  %349 = load i64, i64* @audio_def_gain_changed_cb, align 8
  %350 = trunc i64 %349 to i32
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %352 = call i32 @g_signal_connect(i32* %348, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %350, %struct.TYPE_6__* %351)
  %353 = load i32*, i32** %5, align 8
  %354 = load i32*, i32** %7, align 8
  %355 = call i32* @GTK_WIDGET(i32* %354)
  %356 = call i32 @ghb_box_append_child(i32* %353, i32* %355)
  %357 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %358 = call i32 @gtk_label_new(i8* %357)
  %359 = call i32* @GTK_LABEL(i32 %358)
  store i32* %359, i32** %8, align 8
  %360 = load i32*, i32** %8, align 8
  %361 = call i32 @gtk_label_set_width_chars(i32* %360, i32 6)
  %362 = load i32*, i32** %8, align 8
  %363 = call i32* @GTK_WIDGET(i32* %362)
  %364 = load i32, i32* @GTK_ALIGN_START, align 4
  %365 = call i32 @gtk_widget_set_halign(i32* %363, i32 %364)
  %366 = load i32*, i32** %8, align 8
  %367 = call i32* @GTK_WIDGET(i32* %366)
  %368 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %369 = call i32 @gtk_widget_set_valign(i32* %367, i32 %368)
  %370 = load i32*, i32** %8, align 8
  %371 = call i32* @GTK_WIDGET(i32* %370)
  %372 = call i32 @gtk_widget_set_name(i32* %371, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %373 = load i32*, i32** %8, align 8
  %374 = call i32* @GTK_WIDGET(i32* %373)
  %375 = call i32 @gtk_widget_show(i32* %374)
  %376 = load i32*, i32** %5, align 8
  %377 = load i32*, i32** %8, align 8
  %378 = call i32* @GTK_WIDGET(i32* %377)
  %379 = call i32 @ghb_box_append_child(i32* %376, i32* %378)
  %380 = load i32*, i32** %4, align 8
  %381 = load i32*, i32** %5, align 8
  %382 = call i32* @GTK_WIDGET(i32* %381)
  %383 = call i32 @ghb_box_append_child(i32* %380, i32* %382)
  %384 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %385 = call i32 @gtk_box_new(i32 %384, i32 0)
  %386 = call i32* @GTK_BOX(i32 %385)
  store i32* %386, i32** %5, align 8
  %387 = load i32*, i32** %5, align 8
  %388 = call i32* @GTK_WIDGET(i32* %387)
  %389 = call i32 @gtk_widget_set_name(i32* %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %390 = load i32*, i32** %5, align 8
  %391 = call i32* @GTK_WIDGET(i32* %390)
  %392 = call i32 @gtk_widget_show(i32* %391)
  %393 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %393, i8* align 16 bitcast ([2 x i8*]* @__const.ghb_create_audio_settings_row.drc_icons to i8*), i64 16, i1 false)
  %394 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %395 = call i32 @ghb_scale_button_new(double 9.000000e-01, i32 4, double 1.000000e-01, i8** %394)
  %396 = call i32* @GTK_SCALE_BUTTON(i32 %395)
  store i32* %396, i32** %7, align 8
  %397 = load i32*, i32** %7, align 8
  %398 = call i32* @GTK_WIDGET(i32* %397)
  %399 = call i8* @_(i8* getelementptr inbounds ([263 x i8], [263 x i8]* @.str.43, i64 0, i64 0))
  %400 = call i32 @gtk_widget_set_tooltip_markup(i32* %398, i8* %399)
  %401 = load i32*, i32** %7, align 8
  %402 = call i32* @GTK_WIDGET(i32* %401)
  %403 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %404 = call i32 @gtk_widget_set_valign(i32* %402, i32 %403)
  %405 = load i32*, i32** %7, align 8
  %406 = call i32* @GTK_WIDGET(i32* %405)
  %407 = call i32 @gtk_widget_set_name(i32* %406, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0))
  %408 = load i32*, i32** %7, align 8
  %409 = call i32* @GTK_WIDGET(i32* %408)
  %410 = call i32 @gtk_widget_show(i32* %409)
  %411 = load i32*, i32** %7, align 8
  %412 = load i64, i64* @audio_def_drc_changed_cb, align 8
  %413 = trunc i64 %412 to i32
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %415 = call i32 @g_signal_connect(i32* %411, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %413, %struct.TYPE_6__* %414)
  %416 = load i32*, i32** %5, align 8
  %417 = load i32*, i32** %7, align 8
  %418 = call i32* @GTK_WIDGET(i32* %417)
  %419 = call i32 @ghb_box_append_child(i32* %416, i32* %418)
  %420 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %421 = call i32 @gtk_label_new(i8* %420)
  %422 = call i32* @GTK_LABEL(i32 %421)
  store i32* %422, i32** %8, align 8
  %423 = load i32*, i32** %8, align 8
  %424 = call i32 @gtk_label_set_width_chars(i32* %423, i32 4)
  %425 = load i32*, i32** %8, align 8
  %426 = call i32* @GTK_WIDGET(i32* %425)
  %427 = load i32, i32* @GTK_ALIGN_START, align 4
  %428 = call i32 @gtk_widget_set_halign(i32* %426, i32 %427)
  %429 = load i32*, i32** %8, align 8
  %430 = call i32* @GTK_WIDGET(i32* %429)
  %431 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %432 = call i32 @gtk_widget_set_valign(i32* %430, i32 %431)
  %433 = load i32*, i32** %8, align 8
  %434 = call i32* @GTK_WIDGET(i32* %433)
  %435 = call i32 @gtk_widget_set_name(i32* %434, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0))
  %436 = load i32*, i32** %8, align 8
  %437 = call i32* @GTK_WIDGET(i32* %436)
  %438 = call i32 @gtk_widget_show(i32* %437)
  %439 = load i32*, i32** %5, align 8
  %440 = load i32*, i32** %8, align 8
  %441 = call i32* @GTK_WIDGET(i32* %440)
  %442 = call i32 @ghb_box_append_child(i32* %439, i32* %441)
  %443 = load i32*, i32** %4, align 8
  %444 = load i32*, i32** %5, align 8
  %445 = call i32* @GTK_WIDGET(i32* %444)
  %446 = call i32 @ghb_box_append_child(i32* %443, i32* %445)
  %447 = call i32 (...) @gtk_button_new()
  %448 = call i32* @GTK_BUTTON(i32 %447)
  store i32* %448, i32** %10, align 8
  %449 = load i32*, i32** %10, align 8
  %450 = call i32* @GTK_WIDGET(i32* %449)
  %451 = load i32, i32* @TRUE, align 4
  %452 = call i32 @gtk_widget_set_hexpand(i32* %450, i32 %451)
  %453 = load i32*, i32** %10, align 8
  %454 = call i32* @GTK_WIDGET(i32* %453)
  %455 = load i32, i32* @GTK_ALIGN_FILL, align 4
  %456 = call i32 @gtk_widget_set_halign(i32* %454, i32 %455)
  %457 = load i32*, i32** %10, align 8
  %458 = call i32 @ghb_button_set_icon_name(i32* %457, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  %459 = load i32*, i32** %10, align 8
  %460 = call i32* @GTK_WIDGET(i32* %459)
  %461 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
  %462 = call i32 @gtk_widget_set_tooltip_markup(i32* %460, i8* %461)
  %463 = load i32*, i32** %10, align 8
  %464 = load i32, i32* @GTK_RELIEF_NONE, align 4
  %465 = call i32 @gtk_button_set_relief(i32* %463, i32 %464)
  %466 = load i32*, i32** %10, align 8
  %467 = call i32* @GTK_WIDGET(i32* %466)
  %468 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %469 = call i32 @gtk_widget_set_valign(i32* %467, i32 %468)
  %470 = load i32*, i32** %10, align 8
  %471 = call i32* @GTK_WIDGET(i32* %470)
  %472 = load i32, i32* @GTK_ALIGN_END, align 4
  %473 = call i32 @gtk_widget_set_halign(i32* %471, i32 %472)
  %474 = load i32*, i32** %10, align 8
  %475 = call i32* @GTK_WIDGET(i32* %474)
  %476 = call i32 @gtk_widget_set_name(i32* %475, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %477 = load i32*, i32** %10, align 8
  %478 = call i32* @GTK_WIDGET(i32* %477)
  %479 = call i32 @gtk_widget_show(i32* %478)
  %480 = load i32*, i32** %10, align 8
  %481 = load i64, i64* @audio_def_setting_remove_cb, align 8
  %482 = trunc i64 %481 to i32
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %484 = call i32 @g_signal_connect(i32* %480, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %482, %struct.TYPE_6__* %483)
  %485 = load i32*, i32** %4, align 8
  %486 = load i32*, i32** %10, align 8
  %487 = call i32* @GTK_WIDGET(i32* %486)
  %488 = call i32 @ghb_box_append_child(i32* %485, i32* %487)
  %489 = load i32*, i32** %4, align 8
  %490 = call i32* @GTK_WIDGET(i32* %489)
  %491 = call i32 @gtk_widget_show(i32* %490)
  %492 = load i32*, i32** %3, align 8
  %493 = load i32*, i32** %4, align 8
  %494 = call i32* @GTK_WIDGET(i32* %493)
  %495 = call i32 @ghb_box_append_child(i32* %492, i32* %494)
  %496 = load i32*, i32** %3, align 8
  %497 = call i32* @GTK_WIDGET(i32* %496)
  %498 = call i32 @gtk_widget_show(i32* %497)
  %499 = load i32*, i32** %3, align 8
  %500 = call i32* @GTK_WIDGET(i32* %499)
  %501 = call i32* @find_widget(i32* %500, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %501, i32** %17, align 8
  %502 = load i32*, i32** %17, align 8
  %503 = call i32 @ghb_widget_get_preferred_width(i32* %502, i32* null, i32* %18)
  %504 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = call i32* @GHB_WIDGET(i32 %506, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0))
  store i32* %507, i32** %17, align 8
  %508 = load i32*, i32** %17, align 8
  %509 = load i32, i32* %18, align 4
  %510 = call i32 @gtk_widget_set_size_request(i32* %508, i32 %509, i32 -1)
  %511 = load i32*, i32** %3, align 8
  %512 = call i32* @GTK_WIDGET(i32* %511)
  %513 = call i32* @find_widget(i32* %512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32* %513, i32** %17, align 8
  %514 = load i32*, i32** %17, align 8
  %515 = call i32 @ghb_widget_get_preferred_width(i32* %514, i32* null, i32* %18)
  %516 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = call i32* @GHB_WIDGET(i32 %518, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0))
  store i32* %519, i32** %17, align 8
  %520 = load i32*, i32** %17, align 8
  %521 = load i32, i32* %18, align 4
  %522 = call i32 @gtk_widget_set_size_request(i32* %520, i32 %521, i32 -1)
  %523 = load i32*, i32** %3, align 8
  %524 = call i32* @GTK_WIDGET(i32* %523)
  %525 = call i32* @find_widget(i32* %524, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  store i32* %525, i32** %17, align 8
  %526 = load i32*, i32** %17, align 8
  %527 = call i32 @ghb_widget_get_preferred_width(i32* %526, i32* null, i32* %18)
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = call i32* @GHB_WIDGET(i32 %530, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0))
  store i32* %531, i32** %17, align 8
  %532 = load i32*, i32** %17, align 8
  %533 = load i32, i32* %18, align 4
  %534 = call i32 @gtk_widget_set_size_request(i32* %532, i32 %533, i32 -1)
  %535 = load i32*, i32** %3, align 8
  %536 = call i32* @GTK_WIDGET(i32* %535)
  %537 = call i32* @find_widget(i32* %536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  store i32* %537, i32** %17, align 8
  %538 = load i32*, i32** %17, align 8
  %539 = call i32 @ghb_widget_get_preferred_width(i32* %538, i32* null, i32* %18)
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = call i32* @GHB_WIDGET(i32 %542, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0))
  store i32* %543, i32** %17, align 8
  %544 = load i32*, i32** %17, align 8
  %545 = load i32, i32* %18, align 4
  %546 = call i32 @gtk_widget_set_size_request(i32* %544, i32 %545, i32 -1)
  %547 = load i32*, i32** %3, align 8
  %548 = call i32* @GTK_WIDGET(i32* %547)
  %549 = call i32* @find_widget(i32* %548, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  store i32* %549, i32** %17, align 8
  %550 = load i32*, i32** %17, align 8
  %551 = call i32 @ghb_widget_get_preferred_width(i32* %550, i32* null, i32* %18)
  %552 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = call i32* @GHB_WIDGET(i32 %554, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i64 0, i64 0))
  store i32* %555, i32** %17, align 8
  %556 = load i32*, i32** %17, align 8
  %557 = load i32, i32* %18, align 4
  %558 = call i32 @gtk_widget_set_size_request(i32* %556, i32 %557, i32 -1)
  %559 = load i32*, i32** %3, align 8
  %560 = call i32* @GTK_WIDGET(i32* %559)
  %561 = call i32* @find_widget(i32* %560, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  store i32* %561, i32** %17, align 8
  %562 = load i32*, i32** %17, align 8
  %563 = call i32 @ghb_widget_get_preferred_width(i32* %562, i32* null, i32* %18)
  %564 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %565 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = call i32* @GHB_WIDGET(i32 %566, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i64 0, i64 0))
  store i32* %567, i32** %17, align 8
  %568 = load i32*, i32** %17, align 8
  %569 = load i32, i32* %18, align 4
  %570 = call i32 @gtk_widget_set_size_request(i32* %568, i32 %569, i32 -1)
  %571 = load i32*, i32** %3, align 8
  %572 = call i32* @GTK_WIDGET(i32* %571)
  ret i32* %572
}

declare dso_local i32* @GTK_BOX(i32) #1

declare dso_local i32 @gtk_box_new(i32, i32) #1

declare dso_local i32* @GTK_BUTTON(i32) #1

declare dso_local i32 @gtk_button_new_with_label(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @gtk_widget_set_tooltip_markup(i32*, i8*) #1

declare dso_local i32* @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_widget_set_valign(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_name(i32*, i8*) #1

declare dso_local i32 @gtk_widget_hide(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ghb_box_append_child(i32*, i32*) #1

declare dso_local i32 @gtk_widget_set_hexpand(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32*, i32) #1

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @gtk_combo_box_new(...) #1

declare dso_local i32 @ghb_init_combo_box(i32*) #1

declare dso_local i32 @ghb_audio_encoder_opts_set(i32*) #1

declare dso_local %struct.TYPE_7__* @hb_audio_encoder_get_next(i32*) #1

declare dso_local i32 @ghb_update_widget(i32*, i32) #1

declare dso_local i32 @ghb_int_value(i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32* @GTK_RADIO_BUTTON(i32) #1

declare dso_local i32 @gtk_radio_button_new_with_label(i32*, i8*) #1

declare dso_local i32 @gtk_radio_button_new_with_label_from_widget(i32*, i8*) #1

declare dso_local i32 @ghb_audio_bitrate_opts_set(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @GTK_SCALE_BUTTON(i32) #1

declare dso_local i32 @ghb_scale_button_new(double, i32, double, i8**) #1

declare dso_local i32* @GTK_LABEL(i32) #1

declare dso_local i32 @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_label_set_width_chars(i32*, i32) #1

declare dso_local i32 @ghb_mix_opts_set(i32*) #1

declare dso_local i32 @ghb_audio_samplerate_opts_set(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gtk_button_new(...) #1

declare dso_local i32 @ghb_button_set_icon_name(i32*, i8*) #1

declare dso_local i32 @gtk_button_set_relief(i32*, i32) #1

declare dso_local i32* @find_widget(i32*, i8*) #1

declare dso_local i32 @ghb_widget_get_preferred_width(i32*, i32*, i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_size_request(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
