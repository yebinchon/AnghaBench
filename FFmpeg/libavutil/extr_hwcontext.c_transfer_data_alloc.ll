; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_transfer_data_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_transfer_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_HWFRAME_TRANSFER_DIRECTION_FROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i32)* @transfer_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_data_alloc(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = call %struct.TYPE_14__* (...) @av_frame_alloc()
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %93

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %52

35:                                               ; preds = %24
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i32, i32* @AV_HWFRAME_TRANSFER_DIRECTION_FROM, align 4
  %40 = call i32 @av_hwframe_transfer_get_formats(%struct.TYPE_15__* %38, i32 %39, i32** %11, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %90

44:                                               ; preds = %35
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = call i32 @av_freep(i32** %11)
  br label %52

52:                                               ; preds = %44, %29
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = call i32 @av_frame_get_buffer(%struct.TYPE_14__* %63, i32 32)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %90

68:                                               ; preds = %52
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @av_hwframe_transfer_data(%struct.TYPE_14__* %69, %struct.TYPE_14__* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %90

76:                                               ; preds = %68
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = call i32 @av_frame_move_ref(%struct.TYPE_14__* %87, %struct.TYPE_14__* %88)
  br label %90

90:                                               ; preds = %76, %75, %67, %43
  %91 = call i32 @av_frame_free(%struct.TYPE_14__** %9)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_14__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwframe_transfer_get_formats(%struct.TYPE_15__*, i32, i32**, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_frame_move_ref(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
