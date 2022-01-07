; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_parse_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_parse_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not allocate forced frames array\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Empty frame specification in frame list %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"Invalid argument '%s', must be a positive integer <= INT64_MAX\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Specified frame %d is greater than the following frame %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32*, i8*)* @parse_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_frames(i8* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @av_strdup(i8* %18)
  store i8* %19, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %152

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  %27 = load i8*, i8** %13, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %42, %25
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @av_malloc_array(i32 %47, i32 4)
  %49 = load i32**, i32*** %7, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %54, i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %12, align 4
  br label %148

59:                                               ; preds = %45
  %60 = load i8*, i8** %13, align 8
  store i8* %60, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %144, %59
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %147

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @av_strtok(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %68, i8** %17, align 8
  store i8* null, i8** %10, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %72, i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %12, align 4
  br label %148

78:                                               ; preds = %66
  %79 = load i8*, i8** %17, align 8
  %80 = call i64 @strtol(i8* %79, i8** %16, i32 10)
  store i64 %80, i64* %15, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %15, align 8
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @INT_MAX, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88, %85, %78
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %12, align 4
  br label %148

99:                                               ; preds = %88
  %100 = load i64, i64* %15, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32**, i32*** %7, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %99
  %110 = load i32**, i32*** %7, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** %7, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %116, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %109
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = load i32**, i32*** %7, align 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32**, i32*** %7, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %125, i32 %126, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %12, align 4
  br label %148

143:                                              ; preds = %109, %99
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %61

147:                                              ; preds = %61
  br label %148

148:                                              ; preds = %147, %124, %92, %71, %53
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @av_free(i8* %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %22
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
