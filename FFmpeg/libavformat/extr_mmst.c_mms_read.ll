; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_mms_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_mms_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@SC_PKT_ASF_MEDIA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Incoming pktlen %d is larger than ASF pktsize %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Read ASF media packet size is zero!\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"read packet error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mms_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_read(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %85, %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ff_mms_read_header(%struct.TYPE_11__* %25, i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %84

29:                                               ; preds = %16
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ff_mms_read_data(%struct.TYPE_11__* %35, i32* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %83

39:                                               ; preds = %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i32, i32* @SC_PKT_ASF_MEDIA, align 4
  %42 = call i32 @mms_safe_send_recv(%struct.TYPE_10__* %40, i32* null, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %54, i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %77

65:                                               ; preds = %45
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ff_mms_read_data(%struct.TYPE_11__* %66, i32* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = load i32, i32* @AV_LOG_TRACE, align 4
  %75 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %73, i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %89

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %53
  br label %82

78:                                               ; preds = %39
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = load i32, i32* @AV_LOG_TRACE, align 4
  %81 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %79, i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %89

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %34
  br label %84

84:                                               ; preds = %83, %24
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %16, label %89

89:                                               ; preds = %85, %78, %72
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @ff_mms_read_header(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ff_mms_read_data(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @mms_safe_send_recv(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
