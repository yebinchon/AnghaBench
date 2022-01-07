; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_rtsp_write_record.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_rtsp_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Range: npt=0.000-\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RECORD\00", align 1
@RTSP_STATUS_OK = common dso_local global i64 0, align 8
@RTSP_STATE_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @rtsp_write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_write_record(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [1024 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %12 = call i32 @snprintf(i8* %11, i32 1024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_9__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %17, %struct.TYPE_8__* %18, i32* null)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTSP_STATUS_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ff_rtsp_averror(i64 %28, i32 -1)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @RTSP_STATE_STREAMING, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @ff_rtsp_send_cmd(%struct.TYPE_9__*, i8*, i32, i8*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ff_rtsp_averror(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
