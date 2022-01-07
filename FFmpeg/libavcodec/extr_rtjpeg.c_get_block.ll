; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rtjpeg.c_get_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rtjpeg.c_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @get_bits(i32* %15, i32 8)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @get_bits(i32* %21, i32 6)
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @get_bits_left(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %88

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @memset(i32* %31, i32 0, i32 256)
  br label %33

33:                                               ; preds = %42, %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @get_sbits(i32* %37, i32 2)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @PUT_COEFF(i32 %43)
  br label %33

45:                                               ; preds = %41, %33
  %46 = call i32 @ALIGN(i32 4)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @get_bits_left(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 2
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %88

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @get_sbits(i32* %59, i32 4)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, -8
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @PUT_COEFF(i32 %65)
  br label %55

67:                                               ; preds = %63, %55
  %68 = call i32 @ALIGN(i32 8)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @get_bits_left(i32* %69)
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 3
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %5, align 4
  br label %88

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %80, %76
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @get_sbits(i32* %81, i32 8)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @PUT_COEFF(i32 %83)
  br label %77

85:                                               ; preds = %77
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @PUT_COEFF(i32 %86)
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %74, %52, %28, %19
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @PUT_COEFF(i32) #1

declare dso_local i32 @ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
