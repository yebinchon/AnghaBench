; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_request.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64* }
%struct.TYPE_14__ = type { i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Parsing[%d]: %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected Sequence number %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i8*)* @rtsp_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_read_request(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  br label %15

15:                                               ; preds = %40, %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %18 = call i32 @read_line(%struct.TYPE_15__* %16, i8* %17, i32 1024, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = load i32, i32* @AV_LOG_TRACE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %32 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %27, i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %30, i8* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @ff_rtsp_parse_line(%struct.TYPE_15__* %33, %struct.TYPE_14__* %34, i8* %35, %struct.TYPE_13__* %36, i8* %37)
  br label %39

39:                                               ; preds = %26, %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %15, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %53, i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %4, align 4
  br label %82

61:                                               ; preds = %43
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = call i32 @check_sessionid(%struct.TYPE_15__* %73, %struct.TYPE_14__* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %68, %61
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %52, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @read_line(%struct.TYPE_15__*, i8*, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i64, ...) #1

declare dso_local i32 @ff_rtsp_parse_line(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_sessionid(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
