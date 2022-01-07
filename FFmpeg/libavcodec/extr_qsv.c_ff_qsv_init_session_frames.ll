; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_ff_qsv_init_session_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_ff_qsv_init_session_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@qsv_frame_free = common dso_local global i32 0, align 4
@qsv_frame_get_hdl = common dso_local global i32 0, align 4
@qsv_frame_unlock = common dso_local global i32 0, align 4
@qsv_frame_lock = common dso_local global i32 0, align 4
@qsv_frame_alloc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error setting a frame allocator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsv_init_session_frames(i32* %0, i32* %1, %struct.TYPE_11__* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %21 = load i32, i32* @qsv_frame_free, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %23 = load i32, i32* @qsv_frame_get_hdl, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %25 = load i32, i32* @qsv_frame_unlock, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %27 = load i32, i32* @qsv_frame_lock, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %29 = load i32, i32* @qsv_frame_alloc, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %15, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %16, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ff_qsv_init_session_device(i32* %41, i32* %17, i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %6
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %7, align 4
  br label %102

52:                                               ; preds = %6
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = call i32 @av_buffer_unref(%struct.TYPE_14__** %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = call %struct.TYPE_14__* @qsv_create_mids(%struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %55
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %7, align 4
  br label %102

75:                                               ; preds = %55
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @MFXVideoCORE_SetFrameAllocator(i32 %89, %struct.TYPE_10__* %14)
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @MFX_ERR_NONE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %75
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i32 @ff_qsv_print_error(i32* %95, i64 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %97, i32* %7, align 4
  br label %102

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %52
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %94, %72, %50
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @ff_qsv_init_session_device(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_14__**) #1

declare dso_local %struct.TYPE_14__* @qsv_create_mids(%struct.TYPE_15__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @MFXVideoCORE_SetFrameAllocator(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ff_qsv_print_error(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
