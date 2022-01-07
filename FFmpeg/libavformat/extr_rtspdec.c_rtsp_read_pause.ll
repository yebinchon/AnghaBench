; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_pause.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64 }

@RTSP_STATE_STREAMING = common dso_local global i64 0, align 8
@RTSP_SERVER_REAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@RTSP_STATUS_OK = common dso_local global i64 0, align 8
@RTSP_STATE_PAUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @rtsp_read_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_read_pause(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RTSP_STATE_STREAMING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTSP_SERVER_REAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31, i32* null, %struct.TYPE_8__* %32, i32* null)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RTSP_STATUS_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ff_rtsp_averror(i64 %42, i32 -1)
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* @RTSP_STATE_PAUSED, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %39, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ff_rtsp_send_cmd(%struct.TYPE_9__*, i8*, i32, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ff_rtsp_averror(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
