; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_check_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_check_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid packet stream index: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_ATTACHMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Received a packet for an attachment stream.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @check_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

9:                                                ; preds = %2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %14, %9
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %23, i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %14
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AVMEDIA_TYPE_ATTACHMENT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %47, i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %22, %8
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
