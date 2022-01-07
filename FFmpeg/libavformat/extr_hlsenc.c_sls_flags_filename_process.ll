; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_sls_flags_filename_process.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_sls_flags_filename_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@HLS_SECOND_LEVEL_SEGMENT_SIZE = common dso_local global i32 0, align 4
@HLS_SECOND_LEVEL_SEGMENT_DURATION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"Invalid second level segment filename template '%s', you can try to remove second_level_segment_size flag\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HLS_MICROSECOND_UNIT = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [107 x i8] c"Invalid second level segment filename template '%s', you can try to remove second_level_segment_time flag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, double, i64, i64)* @sls_flags_filename_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sls_flags_filename_process(%struct.AVFormatContext* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32* %3, double %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.AVFormatContext*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i32* %3, i32** %12, align 8
  store double %4, double* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HLS_SECOND_LEVEL_SEGMENT_SIZE, align 4
  %23 = load i32, i32* @HLS_SECOND_LEVEL_SEGMENT_DURATION, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %122

27:                                               ; preds = %7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strlen(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @av_strdup(i32 %36)
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %123

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @ff_format_set_url(%struct.TYPE_9__* %46, i8* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HLS_SECOND_LEVEL_SEGMENT_SIZE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %43
  store i8* null, i8** %17, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @replace_int_data_in_filename(i8** %17, i32 %60, i8 signext 115, i64 %63)
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %78

66:                                               ; preds = %55
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_log(%struct.TYPE_8__* %67, i32 %68, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32 @av_freep(i8** %17)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %123

78:                                               ; preds = %55
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @ff_format_set_url(%struct.TYPE_9__* %81, i8* %82)
  br label %84

84:                                               ; preds = %78, %43
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HLS_SECOND_LEVEL_SEGMENT_DURATION, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %84
  store i8* null, i8** %18, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load double, double* %13, align 8
  %98 = load double, double* @HLS_MICROSECOND_UNIT, align 8
  %99 = fmul double %97, %98
  %100 = call i64 @round(double %99)
  %101 = call i32 @replace_int_data_in_filename(i8** %18, i32 %96, i8 signext 116, i64 %100)
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %115

103:                                              ; preds = %91
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @av_log(%struct.TYPE_8__* %104, i32 %105, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = call i32 @av_freep(i8** %18)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %8, align 4
  br label %123

115:                                              ; preds = %91
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = call i32 @ff_format_set_url(%struct.TYPE_9__* %118, i8* %119)
  br label %121

121:                                              ; preds = %115, %84
  br label %122

122:                                              ; preds = %121, %27, %7
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %103, %66, %40
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_format_set_url(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @replace_int_data_in_filename(i8**, i32, i8 signext, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i64 @round(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
