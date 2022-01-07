; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_init_convert_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_init_convert_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__**, %struct.video_data* }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.video_data = type { i64, i32 }

@V4L_TS_ABS = common dso_local global i64 0, align 8
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Detected absolute timestamps\0A\00", align 1
@V4L_TS_CONVERT_READY = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown timestamps\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L_TS_MONO2ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @init_convert_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_convert_timestamp(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.video_data*, %struct.video_data** %9, align 8
  store %struct.video_data* %10, %struct.video_data** %6, align 8
  %11 = call i32 (...) @av_gettime()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.video_data*, %struct.video_data** %6, align 8
  %13 = getelementptr inbounds %struct.video_data, %struct.video_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L_TS_ABS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AV_TIME_BASE, align 4
  %21 = mul nsw i32 1, %20
  %22 = add nsw i32 %19, %21
  %23 = icmp sle i32 %18, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AV_TIME_BASE, align 4
  %28 = mul nsw i32 10, %27
  %29 = sub nsw i32 %26, %28
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i32, i32* @AV_LOG_INFO, align 4
  %34 = call i32 @av_log(%struct.TYPE_10__* %32, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** @V4L_TS_CONVERT_READY, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.video_data*, %struct.video_data** %6, align 8
  %38 = getelementptr inbounds %struct.video_data, %struct.video_data* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %45

39:                                               ; preds = %24, %17, %2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(%struct.TYPE_10__* %40, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @av_gettime(...) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
