; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_cmdccv_nnc_cmd.inc__ccv_nnc_cmd_ph.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_cmdccv_nnc_cmd.inc__ccv_nnc_cmd_ph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_ccv_nnc_cmd_ph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_cmd_ph(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 16
  %6 = srem i32 %5, 5
  switch i32 %6, label %44 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %25
    i32 3, label %34
    i32 4, label %43
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 17
  %10 = srem i32 %9, 18
  %11 = add nsw i32 %10, 14
  %12 = shl i32 %11, 1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 1
  %15 = or i32 %12, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  %19 = srem i32 %18, 33
  %20 = add nsw i32 %19, 2
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 1
  %24 = or i32 %21, %23
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 1
  %28 = srem i32 %27, 21
  %29 = add nsw i32 %28, 12
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 1
  %33 = or i32 %30, %32
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 14
  %37 = srem i32 %36, 13
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 1
  %42 = or i32 %39, %41
  store i32 %42, i32* %2, align 4
  br label %53

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %1, %43
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 1
  %47 = srem i32 %46, 22
  %48 = add nsw i32 %47, 0
  %49 = shl i32 %48, 1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 1
  %52 = or i32 %49, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %34, %25, %16, %7
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
