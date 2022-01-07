; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_dxva2_h264_end_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_dxva2_h264_end_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.dxva2_picture_context* }
%struct.dxva2_picture_context = type { i64, i64, i32, i32 }

@commit_bitstream_and_slice_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @dxva2_h264_end_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_h264_end_frame(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dxva2_picture_context*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %18, align 8
  store %struct.dxva2_picture_context* %19, %struct.dxva2_picture_context** %6, align 8
  %20 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %6, align 8
  %21 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %6, align 8
  %26 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %1
  store i32 -1, i32* %2, align 4
  br label %56

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %6, align 8
  %38 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %37, i32 0, i32 3
  %39 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %6, align 8
  %40 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %39, i32 0, i32 2
  %41 = load i32, i32* @commit_bitstream_and_slice_buffer, align 4
  %42 = call i32 @ff_dxva2_common_end_frame(%struct.TYPE_11__* %31, i32 %36, i32* %38, i32 4, i32* %40, i32 4, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %30
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ff_h264_draw_horiz_band(%struct.TYPE_10__* %46, i32* %47, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %45, %30
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %29
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ff_dxva2_common_end_frame(%struct.TYPE_11__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ff_h264_draw_horiz_band(%struct.TYPE_10__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
