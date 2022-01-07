; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_flite.c_select_voice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_flite.c_select_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voice_entry = type { i32, i64, i64 (i32*)*, i32 }

@voice_entries = common dso_local global %struct.voice_entry* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not register voice '%s'\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not find voice '%s'\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Choose between the voices: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.voice_entry**, i8*, i8*)* @select_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_voice(%struct.voice_entry** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.voice_entry**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.voice_entry*, align 8
  store %struct.voice_entry** %0, %struct.voice_entry*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %57, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.voice_entry*, %struct.voice_entry** @voice_entries, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(%struct.voice_entry* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %10
  %16 = load %struct.voice_entry*, %struct.voice_entry** @voice_entries, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %16, i64 %18
  store %struct.voice_entry* %19, %struct.voice_entry** %9, align 8
  %20 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %21 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %15
  %27 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %28 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %33 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %32, i32 0, i32 2
  %34 = load i64 (i32*)*, i64 (i32*)** %33, align 8
  %35 = call i64 %34(i32* null)
  %36 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %37 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %40 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %44, i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %48, i32* %4, align 4
  br label %72

49:                                               ; preds = %38
  %50 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %51 = getelementptr inbounds %struct.voice_entry, %struct.voice_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.voice_entry*, %struct.voice_entry** %9, align 8
  %55 = load %struct.voice_entry**, %struct.voice_entry*** %5, align 8
  store %struct.voice_entry* %54, %struct.voice_entry** %55, align 8
  store i32 0, i32* %4, align 4
  br label %72

56:                                               ; preds = %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %10

60:                                               ; preds = %10
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @AV_LOG_INFO, align 4
  %67 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %65, i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @list_voices(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %60, %49, %43
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.voice_entry*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @list_voices(i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
