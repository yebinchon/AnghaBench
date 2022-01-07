; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_checkbw\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"releaseStream\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FCSubscribe\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"FCPublish\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"getStreamLength\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Server error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @handle_invoke_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_invoke_error(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = call i32 @find_tracked_method(%struct.TYPE_10__* %24, %struct.TYPE_11__* %25, i32 9, i8** %8)
  store i32 %26, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 9
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %37 = call i32 @ff_amf_get_field_value(i32* %34, i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %36, i32 1024)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %105, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %50, %46, %42
  %59 = load i32, i32* @AV_LOG_WARNING, align 4
  store i32 %59, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %100

60:                                               ; preds = %54, %39
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @AV_LOG_DEBUG, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @AV_LOG_WARNING, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %99

78:                                               ; preds = %63, %60
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %88 = call i32 @handle_connect_error(%struct.TYPE_10__* %86, i32* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* @AV_LOG_VERBOSE, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %85
  br label %98

96:                                               ; preds = %81, %78
  %97 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99, %58
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %104 = call i32 @av_log(%struct.TYPE_10__* %101, i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %103)
  br label %105

105:                                              ; preds = %100, %30
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @av_free(i8* %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %28
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @find_tracked_method(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i8**) #1

declare dso_local i32 @ff_amf_get_field_value(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_connect_error(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
