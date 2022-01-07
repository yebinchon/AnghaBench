; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flicvideo.c_flic_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flicvideo.c_flic_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }

@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB555 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unknown FLC format, my science cannot explain how this happened.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_9__*)* @flic_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_decode_frame(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @flic_decode_frame_8BPP(%struct.TYPE_10__* %24, i8* %25, i32* %26, i32* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %69

30:                                               ; preds = %4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_PIX_FMT_RGB555, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_PIX_FMT_RGB565, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @flic_decode_frame_15_16BPP(%struct.TYPE_10__* %43, i8* %44, i32* %45, i32* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %69

49:                                               ; preds = %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @flic_decode_frame_24BPP(%struct.TYPE_10__* %56, i8* %57, i32* %58, i32* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %69

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 @av_log(%struct.TYPE_10__* %65, i32 %66, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %55, %42, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @flic_decode_frame_8BPP(%struct.TYPE_10__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @flic_decode_frame_15_16BPP(%struct.TYPE_10__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @flic_decode_frame_24BPP(%struct.TYPE_10__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
