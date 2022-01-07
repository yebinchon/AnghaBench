; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsAdd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanBlendPixelsAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @TitanBlendPixelsAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TitanBlendPixelsAdd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TitanGetRed(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TitanGetRed(i32 %10)
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 255, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TitanGetGreen(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TitanGetGreen(i32 %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 255, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TitanGetBlue(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TitanGetBlue(i32 %28)
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 255, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TitanCreatePixel(i32 63, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

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
