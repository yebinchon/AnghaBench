; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_check_sessionid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_check_sessionid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"There is no session-id at the moment\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected session-id %s\0A\00", align 1
@RTSP_STATUS_SESSION = common dso_local global i32 0, align 4
@AVERROR_STREAM_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @check_sessionid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sessionid(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load i32, i32* @AV_LOG_WARNING, align 4
  %21 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %19, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load i32, i32* @RTSP_STATUS_SESSION, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rtsp_send_reply(%struct.TYPE_10__* %36, i32 %37, i32* null, i32 %40)
  %42 = load i32, i32* @AVERROR_STREAM_NOT_FOUND, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %29, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @rtsp_send_reply(%struct.TYPE_10__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
