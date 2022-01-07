; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_update_dialog_widgets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_update_dialog_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@block_updates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"AudioTrack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"AudioTrackName\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"AudioTrackDRCValue\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"AudioTrackGainSlider\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"AudioTrackGainValue\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"AudioTrackQualityX\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"AudioTrackQualityValue\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"AudioTrackBitrateEnable\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @audio_update_dialog_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_update_dialog_widgets(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %117

17:                                               ; preds = %2
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* @block_updates, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @ghb_dict_get_value(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @ghb_ui_update(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @ghb_dict_get_value(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @ghb_ui_update(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @ghb_dict_get_value(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @ghb_ui_update(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @ghb_dict_get_value(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @ghb_ui_update(i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %37)
  br label %43

39:                                               ; preds = %17
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @ghb_string_value(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %42 = call i32 @ghb_ui_update(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @ghb_dict_get_value(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %47 = call i32 @ghb_ui_update(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @ghb_dict_get_value(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %51 = call i32 @ghb_ui_update(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @ghb_dict_get_value(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %55 = call i32 @ghb_ui_update(i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call double @ghb_dict_get_double(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store double %57, double* %6, align 8
  %58 = load double, double* %6, align 8
  %59 = call i8* @get_drc_string(double %58)
  store i8* %59, i8** %10, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32* @ghb_string_value(i8* %61)
  %63 = call i32 @ghb_ui_update(i32* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32* @ghb_dict_get_value(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %69 = call i32 @ghb_ui_update(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call double @ghb_dict_get_double(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store double %71, double* %5, align 8
  %72 = load double, double* %5, align 8
  %73 = call i8* @get_gain_string(double %72)
  store i8* %73, i8** %9, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32* @ghb_string_value(i8* %75)
  %77 = call i32 @ghb_ui_update(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ghb_settings_audio_encoder_codec(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call double @ghb_dict_get_double(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  store double %81, double* %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load double, double* %7, align 8
  %84 = call double @get_quality(i32 %82, double %83)
  store double %84, double* %8, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = load double, double* %8, align 8
  %87 = call i32* @ghb_double_value(double %86)
  %88 = call i32 @ghb_ui_update(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32* %87)
  %89 = load i32, i32* %14, align 4
  %90 = load double, double* %7, align 8
  %91 = call i8* @get_quality_string(i32 %89, double %90)
  store i8* %91, i8** %11, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i32* @ghb_string_value(i8* %93)
  %95 = call i32 @ghb_ui_update(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32* %94)
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @ghb_audio_quality_enabled(i32* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %43
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32* @ghb_bool_value_new(i32 %104)
  %106 = call i32 @ghb_ui_update(i32* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32* %105)
  br label %115

107:                                              ; preds = %43
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32* @ghb_bool_value_new(i32 %112)
  %114 = call i32 @ghb_ui_update(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32* %113)
  br label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* @block_updates, align 4
  br label %117

117:                                              ; preds = %115, %2
  %118 = load i32*, i32** %3, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @audio_deps(i32* %118, i32* %119, i32* null)
  ret void
}

declare dso_local i32 @ghb_ui_update(i32*, i8*, i32*) #1

declare dso_local i32* @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32* @ghb_string_value(i8*) #1

declare dso_local double @ghb_dict_get_double(i32*, i8*) #1

declare dso_local i8* @get_drc_string(double) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @get_gain_string(double) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local double @get_quality(i32, double) #1

declare dso_local i32* @ghb_double_value(double) #1

declare dso_local i8* @get_quality_string(i32, double) #1

declare dso_local i32 @ghb_audio_quality_enabled(i32*) #1

declare dso_local i32* @ghb_bool_value_new(i32) #1

declare dso_local i32 @audio_deps(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
