; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_new_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_new_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.ogg* }
%struct.ogg = type { i32, %struct.ogg_stream*, i64 }
%struct.ogg_stream = type { i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"New streams are not supposed to be added in between Ogg context save/restore operations.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DECODER_BUFFER_SIZE = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@OGG_NOGRANULE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ogg_new_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_new_stream(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.ogg_stream*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.ogg*, %struct.ogg** %12, align 8
  store %struct.ogg* %13, %struct.ogg** %6, align 8
  %14 = load %struct.ogg*, %struct.ogg** %6, align 8
  %15 = getelementptr inbounds %struct.ogg, %struct.ogg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ogg*, %struct.ogg** %6, align 8
  %18 = getelementptr inbounds %struct.ogg, %struct.ogg* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = call i32 @av_log(%struct.TYPE_9__* %22, i32 %23, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %2
  %27 = load %struct.ogg*, %struct.ogg** %6, align 8
  %28 = getelementptr inbounds %struct.ogg, %struct.ogg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = call i64 @av_size_mult(i32 %30, i32 32, i64* %10)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.ogg*, %struct.ogg** %6, align 8
  %35 = getelementptr inbounds %struct.ogg, %struct.ogg* %34, i32 0, i32 1
  %36 = load %struct.ogg_stream*, %struct.ogg_stream** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call %struct.ogg_stream* @av_realloc(%struct.ogg_stream* %36, i64 %37)
  store %struct.ogg_stream* %38, %struct.ogg_stream** %9, align 8
  %39 = icmp ne %struct.ogg_stream* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %33
  %44 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %45 = load %struct.ogg*, %struct.ogg** %6, align 8
  %46 = getelementptr inbounds %struct.ogg, %struct.ogg* %45, i32 0, i32 1
  store %struct.ogg_stream* %44, %struct.ogg_stream** %46, align 8
  %47 = load %struct.ogg*, %struct.ogg** %6, align 8
  %48 = getelementptr inbounds %struct.ogg, %struct.ogg* %47, i32 0, i32 1
  %49 = load %struct.ogg_stream*, %struct.ogg_stream** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %49, i64 %51
  store %struct.ogg_stream* %52, %struct.ogg_stream** %9, align 8
  %53 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %54 = call i32 @memset(%struct.ogg_stream* %53, i32 0, i32 32)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %57 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @DECODER_BUFFER_SIZE, align 8
  %59 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %62 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @av_malloc(i64 %65)
  %67 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %68 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load i32, i32* @OGG_NOGRANULE_VALUE, align 4
  %72 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %75 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %43
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %103

81:                                               ; preds = %43
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = call %struct.TYPE_8__* @avformat_new_stream(%struct.TYPE_9__* %82, i32* null)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %88 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %87, i32 0, i32 1
  %89 = call i32 @av_freep(i32* %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = call i32 @avpriv_set_pts_info(%struct.TYPE_8__* %96, i32 64, i32 1, i32 1000000)
  %98 = load %struct.ogg*, %struct.ogg** %6, align 8
  %99 = getelementptr inbounds %struct.ogg, %struct.ogg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %86, %78, %40, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @av_size_mult(i32, i32, i64*) #1

declare dso_local %struct.ogg_stream* @av_realloc(%struct.ogg_stream*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.ogg_stream*, i32, i32) #1

declare dso_local i32 @av_malloc(i64) #1

declare dso_local %struct.TYPE_8__* @avformat_new_stream(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
