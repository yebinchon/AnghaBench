; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_parse_key_value_pair.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_parse_key_value_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Missing key or no key/value separator found after key '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Setting entry with key '%s' to value '%s'\0A\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Key '%s' not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8*, i8*)* @parse_key_value_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key_value_pair(i8* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @av_get_token(i8** %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %80

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strspn(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @av_get_token(i8** %36, i8* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = call i32 @av_freep(i8** %10)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %80

45:                                               ; preds = %32
  br label %55

46:                                               ; preds = %26, %21
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %47, i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @av_free(i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %80

55:                                               ; preds = %45
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @AV_LOG_DEBUG, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %56, i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %65 = call i32 @av_opt_set(i8* %61, i8* %62, i8* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %70, i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %55
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @av_free(i8* %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @av_free(i8* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %46, %41, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_opt_set(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
