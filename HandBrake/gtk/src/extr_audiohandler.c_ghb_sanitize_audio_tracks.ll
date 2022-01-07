; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_sanitize_audio_tracks.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_sanitize_audio_tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"AudioTrackQualityX\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_sanitize_audio_tracks(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @ghb_get_job_audio_list(i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ghb_array_len(i32* %13)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @ghb_array_get(i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ghb_sanitize_audio_settings(i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32* @audio_get_selected_settings(%struct.TYPE_5__* %32, i32* null)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ghb_dict_get_value(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ghb_ui_update(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ghb_dict_get_value(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @ghb_ui_update(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @get_ui_quality(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ghb_double_value(i32 %48)
  %50 = call i32 @ghb_ui_update(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ghb_dict_get_value(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %54 = call i32 @ghb_ui_update(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @ghb_dict_get_value(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %58 = call i32 @ghb_ui_update(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ghb_dict_get_value(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %62 = call i32 @ghb_ui_update(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32* @ghb_get_job_audio_list(i32) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32 @ghb_sanitize_audio_settings(i32, i32*) #1

declare dso_local i32* @audio_get_selected_settings(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ghb_ui_update(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @get_ui_quality(i32*) #1

declare dso_local i32 @ghb_double_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
