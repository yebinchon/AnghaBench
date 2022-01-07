; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_select_and_add_track.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_select_and_add_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"AudioTrackGainSlider\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"AudioTrackQuality\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i32*, i8*, i32, i32)* @audio_select_and_add_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @audio_select_and_add_track(%struct.TYPE_10__* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_11__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i8* @ghb_dict_get_string(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %26, align 8
  %32 = load i8*, i8** %26, align 8
  %33 = call %struct.TYPE_11__* @ghb_lookup_container_by_name(i8* %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %27, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @ghb_get_copy_mask(i32* %34)
  store i64 %35, i64* %28, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32* @ghb_array_get(i32* %36, i32 %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i64 @ghb_settings_audio_encoder_codec(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 %40, i64* %20, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %20, align 8
  %43 = call i64 @ghb_select_fallback(i32* %41, i64 %42)
  store i64 %43, i64* %25, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @ghb_settings_audio_bitrate_rate(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i64 %45, i64* %21, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 @ghb_settings_audio_samplerate_rate(i32* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i64 %47, i64* %22, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @ghb_settings_mixdown_mix(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i64 %49, i64* %23, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @ghb_dict_get_double(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @ghb_dict_get_double(i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i64 @ghb_dict_get_bool(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i64 %55, i64* %18, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @ghb_dict_get_double(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32 %57, i32* %17, align 4
  %58 = load i64, i64* %18, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %6
  store i64 -1, i64* %21, align 8
  br label %63

61:                                               ; preds = %6
  %62 = load i32, i32* @HB_INVALID_AUDIO_QUALITY, align 4
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @ghb_find_audio_track(%struct.TYPE_10__* %64, i8* %65, i32 %66)
  store i64 %67, i64* %19, align 8
  %68 = load i64, i64* %19, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %19, align 8
  %75 = call %struct.TYPE_12__* @hb_list_audio_config_item(i32 %73, i64 %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %29, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %25, align 8
  %85 = load i64, i64* %28, align 8
  %86 = call i64 @ghb_select_audio_codec(i32 %78, i32 %82, i64 %83, i64 %84, i64 %85)
  store i64 %86, i64* %24, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %24, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %22, align 8
  %93 = load i64, i64* %23, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32* @audio_add_track(i32* %87, i64 %88, i64 %89, i32 %90, i64 %91, i64 %92, i64 %93, i32 %94, i32 %95)
  store i32* %96, i32** %14, align 8
  br label %97

97:                                               ; preds = %70, %63
  %98 = load i32*, i32** %14, align 8
  ret i32* %98
}

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i64 @ghb_get_copy_mask(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i64 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local i64 @ghb_select_fallback(i32*, i64) #1

declare dso_local i64 @ghb_settings_audio_bitrate_rate(i32*, i8*) #1

declare dso_local i64 @ghb_settings_audio_samplerate_rate(i32*, i8*) #1

declare dso_local i64 @ghb_settings_mixdown_mix(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_double(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i64 @ghb_find_audio_track(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @hb_list_audio_config_item(i32, i64) #1

declare dso_local i64 @ghb_select_audio_codec(i32, i32, i64, i64, i64) #1

declare dso_local i32* @audio_add_track(i32*, i64, i64, i32, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
