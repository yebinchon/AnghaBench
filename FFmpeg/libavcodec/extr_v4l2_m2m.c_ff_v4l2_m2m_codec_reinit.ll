; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_reinit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i8* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reinit context\0A\00", align 1
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"capture VIDIOC_STREAMOFF\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"waiting for user to release AVBufferRefs\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"query the new capture format\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"setting capture format\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_m2m_codec_reinit(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @AV_LOG_DEBUG, align 4
  %11 = call i32 @av_log(i8* %9, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %15 = call i32 @ff_v4l2_context_set_status(i32* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 @av_log(i8* %19, i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @AV_LOG_DEBUG, align 4
  %25 = call i32 @av_log(i8* %23, i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = call i64 @atomic_load(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %42, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = call i32 @sem_wait(i32* %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ false, %31 ], [ %39, %36 ]
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %31

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = call i32 @ff_v4l2_context_release(i32* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = call i32 @ff_v4l2_context_get_format(i32* %49, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(i8* %54, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %74

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = call i32 @ff_v4l2_context_set_format(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 @av_log(i8* %65, i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %64, %53
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @ff_v4l2_context_set_status(i32*, i32) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @ff_v4l2_context_release(i32*) #1

declare dso_local i32 @ff_v4l2_context_get_format(i32*, i32) #1

declare dso_local i32 @ff_v4l2_context_set_format(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
