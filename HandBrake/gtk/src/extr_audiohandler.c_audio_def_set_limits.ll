; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_set_limits.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_set_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"AudioEncoderFallback\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AudioTrackQuality\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global i64 0, align 8
@HB_ACODEC_AUTO_PASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"AudioTrackQualityX\00", align 1
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_def_set_limits(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @audio_settings_get_row(i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @gtk_list_box_row_get_index(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32* @ghb_dict_get_value(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @ghb_array_len(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %3
  br label %134

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32* @ghb_array_get(i32* %40, i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @ghb_settings_audio_encoder_codec(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ghb_settings_audio_encoder_codec(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ghb_dict_get_double(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @hb_audio_quality_get_default(i32 %51)
  %53 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @HB_ACODEC_AUTO_PASS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @hb_audio_quality_get_default(i32 %60)
  %62 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %63 = icmp ne i64 %61, %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br label %66

66:                                               ; preds = %64, %39
  %67 = phi i1 [ true, %39 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @GTK_WIDGET(i32* %69)
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @audio_def_settings_quality_set_sensitive(i32 %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @hb_audio_quality_get_default(i32 %77)
  %79 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @GTK_WIDGET(i32* %84)
  %86 = call i32* @find_widget(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @audio_quality_update_limits(i32* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %66
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @ghb_select_fallback(i32* %100, i32 %101)
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ghb_settings_audio_samplerate_rate(i32* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %105, i32* %17, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @ghb_settings_mixdown_mix(i32* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @hb_audio_bitrate_get_limits(i32 %108, i32 %109, i32 %110, i32* %19, i32* %20)
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @GTK_WIDGET(i32* %112)
  %114 = call i32* @find_widget(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %114, i32** %21, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @GTK_COMBO_BOX(i32* %115)
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @ghb_audio_bitrate_opts_filter(i32 %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @GTK_WIDGET(i32* %120)
  %122 = call i32* @find_widget(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %122, i32** %21, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = call i32 @GTK_COMBO_BOX(i32* %123)
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @ghb_mix_opts_filter(i32 %124, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @GTK_WIDGET(i32* %127)
  %129 = call i32* @find_widget(i32 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32* %129, i32** %21, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = call i32 @GTK_COMBO_BOX(i32* %130)
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @ghb_audio_samplerate_opts_filter(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %103, %38
  ret void
}

declare dso_local i32* @audio_settings_get_row(i32*) #1

declare dso_local i32 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i32* @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_double(i32*, i8*) #1

declare dso_local i64 @hb_audio_quality_get_default(i32) #1

declare dso_local i32 @audio_def_settings_quality_set_sensitive(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @audio_quality_update_limits(i32*, i32, i32, i32) #1

declare dso_local i32* @find_widget(i32, i8*) #1

declare dso_local i32 @ghb_select_fallback(i32*, i32) #1

declare dso_local i32 @ghb_settings_audio_samplerate_rate(i32*, i8*) #1

declare dso_local i32 @ghb_settings_mixdown_mix(i32*, i8*) #1

declare dso_local i32 @hb_audio_bitrate_get_limits(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ghb_audio_bitrate_opts_filter(i32, i32, i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local i32 @ghb_mix_opts_filter(i32, i32) #1

declare dso_local i32 @ghb_audio_samplerate_opts_filter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
