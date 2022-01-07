; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_log.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_log.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@use_color = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"use_color: %d\0A\00", align 1
@AV_LOG_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"e \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@AV_LOG_PANIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Test NULL buffer failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Test buffer too small failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Test buffer sufficiently big failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @AV_LOG_DEBUG, align 4
  %10 = call i32 @av_log_set_level(i32 %9)
  store i32 0, i32* @use_color, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* @use_color, align 4
  %13 = icmp sle i32 %12, 256
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i32, i32* @AV_LOG_FATAL, align 4
  %16 = load i32, i32* @use_color, align 4
  %17 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @AV_LOG_DEBUG, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AV_LOG_QUIET, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @AV_LOG_INFO, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 31488
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @AV_LOG_INFO, align 4
  %34 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @AV_LOG_PANIC, align 4
  %40 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @use_color, align 4
  %43 = mul nsw i32 255, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @use_color, align 4
  br label %11

45:                                               ; preds = %11
  %46 = call i32 @call_log_format_line2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %74

51:                                               ; preds = %45
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %53 = call i32 @call_log_format_line2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %52, i32 2)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %51
  %61 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %74

62:                                               ; preds = %56
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %64 = call i32 @call_log_format_line2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %63, i32 4)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %62
  %72 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %60, %49
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @call_log_format_line2(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
