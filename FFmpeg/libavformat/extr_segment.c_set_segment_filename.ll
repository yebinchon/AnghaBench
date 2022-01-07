; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_set_segment_filename.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_set_segment_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i8*, %struct.TYPE_7__, i64, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.tm = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not get segment filename with strftime\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid segment filename template '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @set_segment_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_segment_filename(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.tm, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = call i32 @time(i32* %10)
  %38 = call %struct.tm* @localtime_r(i32* %10, %struct.tm* %12)
  store %struct.tm* %38, %struct.tm** %11, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tm*, %struct.tm** %11, align 8
  %44 = call i32 @strftime(i8* %39, i32 1024, i32 %42, %struct.tm* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %47, i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %133

52:                                               ; preds = %36
  br label %73

53:                                               ; preds = %31
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @av_get_frame_filename(i8* %54, i32 1024, i32 %57, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %64, i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %133

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %52
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %75 = call i8* @av_strdup(i8* %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @ff_format_set_url(%struct.TYPE_9__* %82, i8* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @av_basename(i32 %87)
  %89 = call i64 @strlen(i8* %88)
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %95, %81
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @av_reallocp(i32* %105, i64 %106)
  store i32 %107, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %133

111:                                              ; preds = %102
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  br label %126

125:                                              ; preds = %111
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i8* [ %124, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %125 ]
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @av_basename(i32 %130)
  %132 = call i32 @snprintf(i32 %115, i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %127, i8* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %126, %109, %78, %63, %46
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i32, %struct.tm*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_get_frame_filename(i8*, i32, i32, i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @ff_format_set_url(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @av_basename(i32) #1

declare dso_local i32 @av_reallocp(i32*, i64) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
