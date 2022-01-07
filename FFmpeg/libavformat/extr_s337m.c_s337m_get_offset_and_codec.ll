; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_get_offset_and_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_get_offset_and_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Data type %#x in SMPTE 337M\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_CODEC_ID_DOLBY_E = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Dolby E data size %d in SMPTE 337M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32*)* @s337m_get_offset_and_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s337m_get_offset_and_codec(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @IS_16LE_MARKER(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 16, i32* %14, align 4
  br label %32

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @IS_20LE_MARKER(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %11, align 4
  store i32 20, i32* %14, align 4
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %10, align 4
  store i32 24, i32* %14, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 31
  %35 = icmp ne i32 %34, 28
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 31
  %43 = call i32 @avpriv_report_missing_feature(i32* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %45, i32* %7, align 4
  br label %84

46:                                               ; preds = %32
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @AV_CODEC_ID_DOLBY_E, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %53, %54
  switch i32 %55, label %64 [
    i32 3648, label %56
    i32 3644, label %58
    i32 3640, label %60
    i32 3040, label %62
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  store i32 1920, i32* %57, align 4
  br label %73

58:                                               ; preds = %52
  %59 = load i32*, i32** %12, align 8
  store i32 2002, i32* %59, align 4
  br label %73

60:                                               ; preds = %52
  %61 = load i32*, i32** %12, align 8
  store i32 2000, i32* %61, align 4
  br label %73

62:                                               ; preds = %52
  %63 = load i32*, i32** %12, align 8
  store i32 1601, i32* %63, align 4
  br label %73

64:                                               ; preds = %52
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @avpriv_report_missing_feature(i32* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %72, i32* %7, align 4
  br label %84

73:                                               ; preds = %62, %60, %58, %56
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 4
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 7
  %79 = ashr i32 %78, 3
  %80 = mul nsw i32 %79, 2
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %73, %71, %44
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @IS_16LE_MARKER(i32) #1

declare dso_local i64 @IS_20LE_MARKER(i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
