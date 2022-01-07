; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libopenmpt.c_read_packet_openmpt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libopenmpt.c_read_packet_openmpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@AUDIO_PKT_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unsupported number of channels: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @read_packet_openmpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet_openmpt(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load i32, i32* @AUDIO_PKT_SIZE, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 4, %22 ]
  %25 = sdiv i32 %12, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @AUDIO_PKT_SIZE, align 4
  %28 = call i32 @av_new_packet(%struct.TYPE_9__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %75 [
    i32 1, label %36
    i32 2, label %49
    i32 4, label %62
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to float*
  %48 = call i32 @openmpt_module_read_float_mono(i32 %39, i32 %42, i32 %43, float* %47)
  store i32 %48, i32* %8, align 4
  br label %84

49:                                               ; preds = %32
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to float*
  %61 = call i32 @openmpt_module_read_interleaved_float_stereo(i32 %52, i32 %55, i32 %56, float* %60)
  store i32 %61, i32* %8, align 4
  br label %84

62:                                               ; preds = %32
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to float*
  %74 = call i32 @openmpt_module_read_interleaved_float_quad(i32 %65, i32 %68, i32 %69, float* %73)
  store i32 %74, i32* %8, align 4
  br label %84

75:                                               ; preds = %32
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @av_log(%struct.TYPE_10__* %76, i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %100

84:                                               ; preds = %62, %49, %36
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %90, i32* %3, align 4
  br label %100

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 4
  %97 = mul nsw i32 %92, %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %87, %75, %30
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @openmpt_module_read_float_mono(i32, i32, i32, float*) #1

declare dso_local i32 @openmpt_module_read_interleaved_float_stereo(i32, i32, i32, float*) #1

declare dso_local i32 @openmpt_module_read_interleaved_float_quad(i32, i32, i32, float*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
