; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureSize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @TPL_GetTextureSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TPL_GetTextureSize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %46 [
    i32 134, label %9
    i32 137, label %9
    i32 135, label %9
    i32 133, label %18
    i32 132, label %18
    i32 136, label %18
    i32 131, label %27
    i32 138, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %36
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 7
  %12 = ashr i32 %11, 3
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 7
  %15 = ashr i32 %14, 3
  %16 = mul nsw i32 %12, %15
  %17 = mul nsw i32 %16, 32
  store i32 %17, i32* %7, align 4
  br label %47

18:                                               ; preds = %3, %3, %3
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 7
  %24 = ashr i32 %23, 2
  %25 = mul nsw i32 %21, %24
  %26 = mul nsw i32 %25, 32
  store i32 %26, i32* %7, align 4
  br label %47

27:                                               ; preds = %3, %3, %3, %3
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 3
  %30 = ashr i32 %29, 2
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 3
  %33 = ashr i32 %32, 2
  %34 = mul nsw i32 %30, %33
  %35 = mul nsw i32 %34, 32
  store i32 %35, i32* %7, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 3
  %39 = ashr i32 %38, 2
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 3
  %42 = ashr i32 %41, 2
  %43 = mul nsw i32 %39, %42
  %44 = mul nsw i32 %43, 32
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %7, align 4
  br label %47

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %46, %36, %27, %18, %9
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
