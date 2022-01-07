; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_add_track.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_add_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ChannelLayout\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @audio_add_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @audio_add_track(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = call i32* (...) @ghb_dict_new()
  store i32* %23, i32** %19, align 8
  %24 = load i32*, i32** %19, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ghb_dict_set_int(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %19, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i8* @hb_audio_encoder_get_short_name(i32 %28)
  %30 = call i32 @ghb_dict_set_string(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %19, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @ghb_dict_set_double(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %19, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @ghb_dict_set_int(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %19, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @ghb_dict_set_int(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32* @ghb_get_title_audio_track(i32* %40, i32 %41)
  store i32* %42, i32** %20, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %9
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @ghb_dict_get_int(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %47, i32* %21, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = call i8* @ghb_dict_get_string(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %49, i8** %22, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @ghb_get_best_mix(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i8*, i8** %22, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32*, i32** %19, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = call i32 @ghb_dict_set_string(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %45
  br label %61

61:                                               ; preds = %60, %9
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i8* @hb_mixdown_get_short_name(i32 %63)
  %65 = call i32 @ghb_dict_set_string(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @ghb_dict_set_double(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @ghb_dict_set_double(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @ghb_sanitize_audio_settings(i32* %72, i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @audio_add_to_settings(i32* %75, i32* %76)
  %78 = load i32*, i32** %19, align 8
  ret i32* %78
}

declare dso_local i32* @ghb_dict_new(...) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i8* @hb_audio_encoder_get_short_name(i32) #1

declare dso_local i32 @ghb_dict_set_double(i32*, i8*, i32) #1

declare dso_local i32* @ghb_get_title_audio_track(i32*, i32) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @ghb_get_best_mix(i32, i32, i32) #1

declare dso_local i8* @hb_mixdown_get_short_name(i32) #1

declare dso_local i32 @ghb_sanitize_audio_settings(i32*, i32*) #1

declare dso_local i32 @audio_add_to_settings(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
