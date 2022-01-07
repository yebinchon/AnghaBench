; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_release_buffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_release_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.V4L2Plane_info* }
%struct.V4L2Plane_info = type { i64, i64 }
%struct.v4l2_requestbuffers = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s unmap plane (%s))\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@VIDIOC_REQBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @v4l2_release_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_release_buffers(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.v4l2_requestbuffers, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.V4L2Plane_info*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %3, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %3, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %3, i32 0, i32 2
  %14 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %76, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %72, %21
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.V4L2Plane_info*, %struct.V4L2Plane_info** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.V4L2Plane_info, %struct.V4L2Plane_info* %37, i64 %39
  store %struct.V4L2Plane_info* %40, %struct.V4L2Plane_info** %7, align 8
  %41 = load %struct.V4L2Plane_info*, %struct.V4L2Plane_info** %7, align 8
  %42 = getelementptr inbounds %struct.V4L2Plane_info, %struct.V4L2Plane_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %34
  %46 = load %struct.V4L2Plane_info*, %struct.V4L2Plane_info** %7, align 8
  %47 = getelementptr inbounds %struct.V4L2Plane_info, %struct.V4L2Plane_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.V4L2Plane_info*, %struct.V4L2Plane_info** %7, align 8
  %52 = getelementptr inbounds %struct.V4L2Plane_info, %struct.V4L2Plane_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.V4L2Plane_info*, %struct.V4L2Plane_info** %7, align 8
  %55 = getelementptr inbounds %struct.V4L2Plane_info, %struct.V4L2Plane_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @munmap(i64 %53, i64 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = call i32 @logger(%struct.TYPE_7__* %60)
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @AVERROR(i32 %66)
  %68 = call i32 @av_err2str(i32 %67)
  %69 = call i32 @av_log(i32 %61, i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %50
  br label %71

71:                                               ; preds = %70, %45, %34
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %28

75:                                               ; preds = %28
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %15

79:                                               ; preds = %15
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = call %struct.TYPE_9__* @ctx_to_m2mctx(%struct.TYPE_7__* %80)
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VIDIOC_REQBUFS, align 4
  %85 = call i32 @ioctl(i32 %83, i32 %84, %struct.v4l2_requestbuffers* %3)
  ret i32 %85
}

declare dso_local i64 @munmap(i64, i64) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @logger(%struct.TYPE_7__*) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_requestbuffers*) #1

declare dso_local %struct.TYPE_9__* @ctx_to_m2mctx(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
