; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_interval.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }

@SPACES = common dso_local global i32 0, align 4
@DELIMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid interval specification '%s' in interval #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Invalid start time specification '%s' in interval #%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Invalid end time specification '%s' in interval #%d\0A\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [78 x i8] c"Invalid end time '%s' in interval #%d: cannot be lesser than start time '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"No interval specified for interval #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8**, i8*)* @parse_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_interval(%struct.TYPE_4__* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @SPACES, align 4
  %17 = call i32 @strspn(i8* %15, i32 %16)
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %18, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %127

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i32 @memset(%struct.TYPE_4__* %28, i32 0, i32 32)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* @DELIMS, align 4
  %35 = call i8* @av_get_token(i8** %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %107

38:                                               ; preds = %27
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @av_strtok(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %52, i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  br label %123

57:                                               ; preds = %44
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @av_parse_time(i64* %59, i8* %60, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %64, i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67)
  br label %123

69:                                               ; preds = %57
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @av_parse_time(i64* %74, i8* %75, i32 1)
  store i32 %76, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %79, i32 %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %81, i32 %82)
  br label %123

84:                                               ; preds = %72
  br label %89

85:                                               ; preds = %69
  %86 = load i64, i64* @INT64_MAX, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %98, i32 %99, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %100, i32 %101, i8* %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %11, align 4
  br label %123

106:                                              ; preds = %89
  br label %114

107:                                              ; preds = %38, %27
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %108, i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %11, align 4
  br label %123

114:                                              ; preds = %106
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %7, align 4
  %120 = load i8**, i8*** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @parse_commands(i32* %116, i32* %118, i32 %119, i8** %120, i8* %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %114, %107, %97, %78, %63, %49
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @av_free(i8* %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %26
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @av_get_token(i8**, i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_parse_time(i64*, i8*, i32) #1

declare dso_local i32 @parse_commands(i32*, i32*, i32, i8**, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
