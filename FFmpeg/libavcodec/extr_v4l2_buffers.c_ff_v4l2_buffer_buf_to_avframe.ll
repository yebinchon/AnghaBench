; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_ff_v4l2_buffer_buf_to_avframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_ff_v4l2_buffer_buf_to_avframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_ERROR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: driver decode error\0A\00", align 1
@FF_DECODE_ERROR_INVALID_BITSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_buffer_buf_to_avframe(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = call i32 @av_frame_unref(%struct.TYPE_19__* %7)
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = call i32 @v4l2_buffer_buf_to_swframe(%struct.TYPE_19__* %9, %struct.TYPE_18__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = call i32 @v4l2_get_color_primaries(%struct.TYPE_18__* %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = call i32 @v4l2_get_color_space(%struct.TYPE_18__* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = call i32 @v4l2_get_color_range(%struct.TYPE_18__* %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = call i32 @v4l2_get_color_trc(%struct.TYPE_18__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = call i32 @v4l2_get_pts(%struct.TYPE_18__* %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_BUF_FLAG_ERROR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %16
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = call i32 @logger(%struct.TYPE_18__* %81)
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @av_log(i32 %82, i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @FF_DECODE_ERROR_INVALID_BITSTREAM, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %80, %16
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @av_frame_unref(%struct.TYPE_19__*) #1

declare dso_local i32 @v4l2_buffer_buf_to_swframe(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_get_color_primaries(%struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_get_color_space(%struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_get_color_range(%struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_get_color_trc(%struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_get_pts(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @logger(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
