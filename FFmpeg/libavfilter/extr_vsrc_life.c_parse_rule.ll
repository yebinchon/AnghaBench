; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_life.c_parse_rule.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_life.c_parse_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"bBsS\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid rule code '%s' provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @parse_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rule(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %72, %21
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 98
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 66
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = load i32*, i32** %6, align 8
  br label %36

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32* [ %33, %32 ], [ %35, %34 ]
  store i32* %37, i32** %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %52, %36
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 48
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 56
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  %57 = shl i32 1, %56
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  br label %40

63:                                               ; preds = %50
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 47
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %77

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %22, label %77

77:                                               ; preds = %72, %68
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %100

82:                                               ; preds = %77
  br label %99

83:                                               ; preds = %4
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @strtol(i8* %84, i8** %10, i32 10)
  store i64 %85, i64* %13, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %100

90:                                               ; preds = %83
  %91 = load i64, i64* %13, align 8
  %92 = and i64 511, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i64, i64* %13, align 8
  %96 = ashr i64 %95, 9
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %82
  store i32 0, i32* %5, align 4
  br label %107

100:                                              ; preds = %89, %81
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @av_log(i8* %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %100, %99
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
