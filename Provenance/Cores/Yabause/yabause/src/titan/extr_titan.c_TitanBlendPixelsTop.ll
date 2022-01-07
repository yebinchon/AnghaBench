; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsTop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsTop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @TitanBlendPixelsTop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TitanBlendPixelsTop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TitanGetAlpha(i32 %13)
  %15 = shl i32 %14, 2
  %16 = add nsw i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 255, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TitanGetRed(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TitanGetGreen(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 255
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TitanGetBlue(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 255
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TitanGetRed(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 255
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @TitanGetGreen(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 255
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TitanGetBlue(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 255
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @TitanCreatePixel(i32 63, i32 %51, i32 %54, i32 %57)
  ret i32 %58
}

declare dso_local i32 @TitanGetAlpha(i32) #1

declare dso_local i32 @TitanGetRed(i32) #1

declare dso_local i32 @TitanGetGreen(i32) #1

declare dso_local i32 @TitanGetBlue(i32) #1

declare dso_local i32 @TitanCreatePixel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
