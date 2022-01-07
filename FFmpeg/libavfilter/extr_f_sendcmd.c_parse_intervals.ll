; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_intervals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Missing terminator or extraneous data found at the end of interval #%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not (re)allocate intervals array\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i8*)* @parse_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_intervals(i32** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32**, i32*** %6, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %84
  %21 = call i32 @skip_comments(i8** %8)
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %93

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @parse_interval(i32* %13, i32 %27, i8** %8, i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @SPACES, align 4
  %36 = call i32 @strspn(i8* %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 59
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %49, i32 %50, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %94

55:                                               ; preds = %43
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %55, %33
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 2, %66
  %68 = call i32 @FFMAX(i32 16, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32* @av_realloc_f(i32* %70, i32 %71, i32 8)
  %73 = load i32**, i32*** %6, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i32**, i32*** %6, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %78, i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %5, align 4
  br label %94

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %58
  %85 = load i32, i32* %13, align 4
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %85, i32* %92, align 4
  br label %20

93:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %77, %48, %31, %18
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @skip_comments(i8**) #1

declare dso_local i32 @parse_interval(i32*, i32, i8**, i8*) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32* @av_realloc_f(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
