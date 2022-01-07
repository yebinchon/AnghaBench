; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_opt_show_entries.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_opt_show_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"=:\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Missing section name for option '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c",:\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Adding '%s' to the entries to show in section '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"No match for section '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_show_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_show_entries(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %99, %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %15
  store i32* null, i32** %10, align 8
  %20 = call i8* @av_get_token(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %19
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 61
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %69, %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 58
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %70

49:                                               ; preds = %47
  %50 = call i8* @av_get_token(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %70

54:                                               ; preds = %49
  %55 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* %57)
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %61 = call i32 @av_dict_set(i32** %10, i8* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 44
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %66, %54
  br label %37

70:                                               ; preds = %53, %47
  br label %72

71:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @match_section(i8* %73, i32 %74, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = call i32 @av_dict_free(i32** %10)
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @av_free(i8* %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %100

92:                                               ; preds = %85
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %96, %92
  br label %15

100:                                              ; preds = %91, %15
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @match_section(i8*, i32, i32*) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
