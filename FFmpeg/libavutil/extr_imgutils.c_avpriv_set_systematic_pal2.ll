; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_avpriv_set_systematic_pal2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_avpriv_set_systematic_pal2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_set_systematic_pal2(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %80

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %61 [
    i32 128, label %15
    i32 131, label %26
    i32 129, label %37
    i32 132, label %48
    i32 130, label %59
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 5
  %18 = mul nsw i32 %17, 36
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 2
  %21 = and i32 %20, 7
  %22 = mul nsw i32 %21, 36
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 3
  %25 = mul nsw i32 %24, 85
  store i32 %25, i32* %9, align 4
  br label %64

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 6
  %29 = mul nsw i32 %28, 85
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 3
  %32 = and i32 %31, 7
  %33 = mul nsw i32 %32, 36
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 7
  %36 = mul nsw i32 %35, 36
  store i32 %36, i32* %7, align 4
  br label %64

37:                                               ; preds = %13
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 3
  %40 = mul nsw i32 %39, 255
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  %43 = and i32 %42, 3
  %44 = mul nsw i32 %43, 85
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 1
  %47 = mul nsw i32 %46, 255
  store i32 %47, i32* %9, align 4
  br label %64

48:                                               ; preds = %13
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 3
  %51 = mul nsw i32 %50, 255
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 1
  %54 = and i32 %53, 3
  %55 = mul nsw i32 %54, 85
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 1
  %58 = mul nsw i32 %57, 255
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %13
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %13
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %59, %48, %37, %26, %15
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 8
  %68 = add nsw i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 16
  %71 = add nsw i32 %68, %70
  %72 = add i32 %71, -16777216
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %10

80:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
