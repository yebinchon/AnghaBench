; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_loopfilter.c_ff_h264_filter_mb_fast.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_loopfilter.c_ff_h264_filter_mb_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_filter_mb_fast(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = call i32 @FRAME_MBAFF(%struct.TYPE_12__* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @av_assert2(i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %9
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %30, %9
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @ff_h264_filter_mb(%struct.TYPE_12__* %39, i32* %40, i32 %41, i32 %42, i32* %43, i32* %44, i32* %45, i32 %46, i32 %47)
  br label %76

49:                                               ; preds = %30
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @h264_filter_mb_fast_internal(%struct.TYPE_12__* %55, i32* %56, i32 %57, i32 %58, i32* %59, i32* %60, i32* %61, i32 %62, i32 %63, i32 1)
  br label %76

65:                                               ; preds = %49
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @h264_filter_mb_fast_internal(%struct.TYPE_12__* %66, i32* %67, i32 %68, i32 %69, i32* %70, i32* %71, i32* %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %38, %65, %54
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @FRAME_MBAFF(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_h264_filter_mb(%struct.TYPE_12__*, i32*, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @h264_filter_mb_fast_internal(%struct.TYPE_12__*, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
