; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_output_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Filter %s has an unconnected output\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configure_output_filter(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AV_LOG_FATAL, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @av_log(i32* null, i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit_program(i32 1)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @avfilter_pad_get_type(i32 %24, i32 %27)
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 129, label %34
  ]

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = call i32 @configure_output_video_filter(i32* %30, %struct.TYPE_11__* %31, %struct.TYPE_12__* %32)
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %19
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = call i32 @configure_output_audio_filter(i32* %35, %struct.TYPE_11__* %36, %struct.TYPE_12__* %37)
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %19
  %40 = call i32 @av_assert0(i32 0)
  br label %41

41:                                               ; preds = %29, %34, %39
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @avfilter_pad_get_type(i32, i32) #1

declare dso_local i32 @configure_output_video_filter(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @configure_output_audio_filter(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
