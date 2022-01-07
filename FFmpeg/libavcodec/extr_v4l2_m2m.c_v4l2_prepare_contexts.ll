; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_v4l2_prepare_contexts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_v4l2_prepare_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i8*, i32, i64 }
%struct.TYPE_5__ = type { i8*, i32, i64 }
%struct.v4l2_capability = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"driver '%s' on card '%s' in %s mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mplane\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"splane\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @v4l2_prepare_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_prepare_contexts(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_capability, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = call i32 @atomic_init(i32* %25, i32 0)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = call i32 @sem_init(i32* %28, i32 0, i32 0)
  %30 = call i32 @memset(%struct.v4l2_capability* %6, i32 0, i32 8)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.v4l2_capability* %6)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %91

40:                                               ; preds = %2
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @AV_LOG_DEBUG, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @AV_LOG_INFO, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @v4l2_mplane_video(%struct.v4l2_capability* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  %58 = call i64 @v4l2_splane_video(%struct.v4l2_capability* %6)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %62

62:                                               ; preds = %57, %56
  %63 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %56 ], [ %61, %57 ]
  %64 = call i32 @av_log(i8* %41, i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53, i8* %63)
  %65 = call i64 @v4l2_mplane_video(%struct.v4l2_capability* %6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %91

76:                                               ; preds = %62
  %77 = call i64 @v4l2_splane_video(%struct.v4l2_capability* %6)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @EINVAL, align 4
  %90 = call i32 @AVERROR(i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %79, %67, %38
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.v4l2_capability*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_capability*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @v4l2_mplane_video(%struct.v4l2_capability*) #1

declare dso_local i64 @v4l2_splane_video(%struct.v4l2_capability*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
