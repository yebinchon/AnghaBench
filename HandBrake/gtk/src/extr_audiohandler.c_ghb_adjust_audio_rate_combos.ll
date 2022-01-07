; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_adjust_audio_rate_combos.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_adjust_audio_rate_combos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SampleRate\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ChannelLayout\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"AudioTrackQualityX\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @ghb_adjust_audio_rate_combos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghb_adjust_audio_rate_combos(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %108

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ghb_sanitize_audio_settings(i32 %20, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @ghb_dict_get_int(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ghb_settings_audio_encoder_codec(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ghb_settings_mixdown_mix(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @ghb_dict_get_int(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @ghb_get_title_audio_track(i32 %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %17
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @ghb_dict_get_int(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i32*, i32** %8, align 8
  %46 = call i8* @ghb_dict_get_int(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ghb_get_best_mix(i8* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @hb_audio_bitrate_get_limits(i32 %51, i32 %52, i32 %53, i32* %10, i32* %11)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @GHB_WIDGET(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @GTK_COMBO_BOX(i32* %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ghb_audio_bitrate_opts_filter(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @GHB_WIDGET(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %67, i32** %13, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @GTK_COMBO_BOX(i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ghb_mix_opts_filter(i32 %69, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @GHB_WIDGET(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @GTK_COMBO_BOX(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ghb_audio_samplerate_opts_filter(i32 %77, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ghb_dict_get_value(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 @ghb_ui_update(%struct.TYPE_5__* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ghb_dict_get_value(i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %87 = call i32 @ghb_ui_update(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @get_ui_quality(i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @ghb_double_value(i32 %91)
  %93 = call i32 @ghb_ui_update(%struct.TYPE_5__* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @ghb_dict_get_value(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 @ghb_ui_update(%struct.TYPE_5__* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @ghb_dict_get_value(i32* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @ghb_ui_update(%struct.TYPE_5__* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ghb_dict_get_value(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %105 = call i32 @ghb_ui_update(%struct.TYPE_5__* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = call i32 @ghb_audio_list_refresh_selected(%struct.TYPE_5__* %106)
  br label %108

108:                                              ; preds = %44, %2
  ret void
}

declare dso_local i32 @ghb_sanitize_audio_settings(i32, i32*) #1

declare dso_local i8* @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local i32 @ghb_settings_mixdown_mix(i32*, i8*) #1

declare dso_local i32* @ghb_get_title_audio_track(i32, i32) #1

declare dso_local i32 @ghb_get_best_mix(i8*, i32, i32) #1

declare dso_local i32 @hb_audio_bitrate_get_limits(i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @ghb_audio_bitrate_opts_filter(i32, i32, i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local i32 @ghb_mix_opts_filter(i32, i32) #1

declare dso_local i32 @ghb_audio_samplerate_opts_filter(i32, i32) #1

declare dso_local i32 @ghb_ui_update(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @get_ui_quality(i32*) #1

declare dso_local i32 @ghb_double_value(i32) #1

declare dso_local i32 @ghb_audio_list_refresh_selected(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
