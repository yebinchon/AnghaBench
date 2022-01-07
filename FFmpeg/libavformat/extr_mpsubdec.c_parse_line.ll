; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpsubdec.c_parse_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpsubdec.c_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%lld%n.%lld%n\00", align 1
@INT64_MIN = common dso_local global i64 0, align 8
@TSBASE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*)* @parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_line(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %96, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %99

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @av_sscanf(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %11, i32* %9, i64* %12, i32* %10)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @INT64_MIN, align 8
  %25 = load i64, i64* @TSBASE, align 8
  %26 = sdiv i64 %24, %25
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @INT64_MAX, align 8
  %31 = load i64, i64* @TSBASE, align 8
  %32 = sdiv i64 %30, %31
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %22, %17
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %4, align 4
  br label %100

36:                                               ; preds = %28
  %37 = load i64, i64* @TSBASE, align 8
  %38 = load i64, i64* %11, align 8
  %39 = mul nsw i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %87

42:                                               ; preds = %36
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %100

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i64, i64* %12, align 8
  %55 = mul nsw i64 %54, 10
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sgt i32 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* %12, align 8
  %67 = sdiv i64 %66, 10
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %60

71:                                               ; preds = %60
  %72 = load i64, i64* %11, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %11, align 8
  br label %82

78:                                               ; preds = %71
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  br label %92

87:                                               ; preds = %36
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i64, i64* %11, align 8
  %94 = load i64*, i64** %6, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i64*, i64** %7, align 8
  store i64* %95, i64** %6, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %14

99:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %45, %34
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @av_sscanf(i8*, i8*, i64*, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
