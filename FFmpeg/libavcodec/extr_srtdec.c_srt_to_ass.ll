; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtdec.c_srt_to_ass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtdec.c_srt_to_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASS_DEFAULT_PLAYRESX = common dso_local global i64 0, align 8
@ASS_DEFAULT_PLAYRESY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"{\\an5}{\\pos(%d,%d)}\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"{\\an1}{\\pos(%d,%d)}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i32, i32, i32)* @srt_to_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srt_to_ass(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %7
  %24 = load i32, i32* %12, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sdiv i32 %52, 2
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i64, i64* @ASS_DEFAULT_PLAYRESX, align 8
  %63 = trunc i64 %62 to i32
  %64 = mul nsw i32 %61, %63
  %65 = sdiv i32 %64, 720
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i64, i64* @ASS_DEFAULT_PLAYRESY, align 8
  %68 = trunc i64 %67 to i32
  %69 = mul nsw i32 %66, %68
  %70 = sdiv i32 %69, 480
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @av_bprintf(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %90

75:                                               ; preds = %44, %40, %36, %29, %26
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* @ASS_DEFAULT_PLAYRESX, align 8
  %78 = trunc i64 %77 to i32
  %79 = mul nsw i32 %76, %78
  %80 = sdiv i32 %79, 720
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i64, i64* @ASS_DEFAULT_PLAYRESY, align 8
  %83 = trunc i64 %82 to i32
  %84 = mul nsw i32 %81, %83
  %85 = sdiv i32 %84, 480
  store i32 %85, i32* %20, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @av_bprintf(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %75, %48
  br label %91

91:                                               ; preds = %90, %23, %7
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @ff_htmlmarkup_to_ass(i32* %92, i32* %93, i8* %94)
  ret i32 %95
}

declare dso_local i32 @av_bprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @ff_htmlmarkup_to_ass(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
