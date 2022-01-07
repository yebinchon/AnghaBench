; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsBottom.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsBottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @TitanBlendPixelsBottom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TitanBlendPixelsBottom(i32 %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, -2147483648
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TitanGetAlpha(i32 %20)
  %22 = shl i32 %21, 2
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 255, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TitanGetRed(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 255
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TitanGetGreen(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 255
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TitanGetBlue(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 255
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @TitanGetRed(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 255
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @TitanGetGreen(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 255
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @TitanGetBlue(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 255
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TitanGetAlpha(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @TitanCreatePixel(i32 %57, i32 %60, i32 %63, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %19, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
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
