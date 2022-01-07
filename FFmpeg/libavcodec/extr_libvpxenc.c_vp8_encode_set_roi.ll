; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vp8_encode_set_roi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vp8_encode_set_roi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to set_roi_map.\0A\00", align 1
@VP8E_SET_ROI_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to set VP8E_SET_ROI_MAP codec control.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32*)* @vp8_encode_set_roi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_encode_set_roi(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 4, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @set_roi_map(%struct.TYPE_11__* %18, i32* %19, i32 %20, i32 %21, %struct.TYPE_9__* %10, i32 16, i32 4)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = call i32 @log_encoder_error(%struct.TYPE_11__* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* @VP8E_SET_ROI_MAP, align 4
  %33 = call i64 @vpx_codec_control(i32* %31, i32 %32, %struct.TYPE_9__* %10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = call i32 @log_encoder_error(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %41 = call i32 @av_freep(i32* %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @set_roi_map(%struct.TYPE_11__*, i32*, i32, i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @log_encoder_error(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @vpx_codec_control(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
