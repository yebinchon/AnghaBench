; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_init_output_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_init_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_7__* }

@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Only video and audio filters are supported currently.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [138 x i8] c"Streamcopy requested for output stream %d:%d, which is fed from a complex filtergraph. Filtering and streamcopy cannot be used together.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"-vf/-af/-filter\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"-filter_script\00", align 1
@.str.4 = private unnamed_addr constant [179 x i8] c"%s '%s' was specified through the %s option for output stream %d:%d, which is fed from a complex filtergraph.\0A%s and -filter_complex cannot be used together for the same stream.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Filtergraph\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Filtergraph script\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*)* @init_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_output_filter(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_6__* @new_video_stream(i32* %13, i32* %14, i32 -1)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  br label %24

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_6__* @new_audio_stream(i32* %17, i32* %18, i32 -1)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @AV_LOG_FATAL, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit_program(i32 1)
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %24
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %40, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = call i32 @exit_program(i32 1)
  br label %49

49:                                               ; preds = %39, %24
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)
  store i8* %70, i8** %8, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  br label %90

86:                                               ; preds = %64
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i64 [ %85, %82 ], [ %89, %86 ]
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %71, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.4, i64 0, i64 0), i8* %77, i64 %91, i8* %92, i32 %95, i32 %98, i8* %99)
  %101 = call i32 @exit_program(i32 1)
  br label %102

102:                                              ; preds = %90, %59, %49
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = call i32 @avfilter_inout_free(i32* %104)
  ret void
}

declare dso_local %struct.TYPE_6__* @new_video_stream(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @new_audio_stream(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @avfilter_inout_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
