; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_parse.h_parse_obu_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_parse.h_parse_obu_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32*, i32*, i32*)* @parse_obu_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_obu_header(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @FFMIN(i32 %22, i32 10)
  %24 = call i32 @init_get_bits8(i32* %16, i32* %21, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %84

29:                                               ; preds = %7
  %30 = call i32 @get_bits1(i32* %16)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %8, align 4
  br label %84

34:                                               ; preds = %29
  %35 = call i32 @get_bits(i32* %16, i32 4)
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = call i32 @get_bits1(i32* %16)
  store i32 %37, i32* %18, align 4
  %38 = call i32 @get_bits1(i32* %16)
  store i32 %38, i32* %19, align 4
  %39 = call i32 @skip_bits1(i32* %16)
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = call i32 @get_bits(i32* %16, i32 3)
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  %45 = call i32 @get_bits(i32* %16, i32 2)
  %46 = load i32*, i32** %15, align 8
  store i32 %45, i32* %46, align 4
  %47 = call i32 @skip_bits(i32* %16, i32 3)
  br label %51

48:                                               ; preds = %34
  %49 = load i32*, i32** %15, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %14, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @leb128(i32* %16)
  br label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %58, %59
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %64 = call i64 @get_bits_left(i32* %16)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %8, align 4
  br label %84

68:                                               ; preds = %61
  %69 = call i32 @get_bits_count(i32* %16)
  %70 = sdiv i32 %69, 8
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %8, align 4
  br label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %80, %66, %32, %27
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @leb128(i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
