; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevIndBumpST.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevIndBumpST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_ITM_S0 = common dso_local global i32 0, align 4
@GX_ITM_T0 = common dso_local global i32 0, align 4
@GX_ITM_S1 = common dso_local global i32 0, align 4
@GX_ITM_T1 = common dso_local global i32 0, align 4
@GX_ITM_S2 = common dso_local global i32 0, align 4
@GX_ITM_T2 = common dso_local global i32 0, align 4
@GX_ITM_OFF = common dso_local global i32 0, align 4
@GX_ITF_8 = common dso_local global i32 0, align 4
@GX_ITB_ST = common dso_local global i32 0, align 4
@GX_ITW_0 = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_ITBA_OFF = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_ITB_NONE = common dso_local global i32 0, align 4
@GX_ITW_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevIndBumpST(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @GX_ITM_S0, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GX_ITM_T0, align 4
  store i32 %12, i32* %8, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @GX_ITM_S1, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @GX_ITM_T1, align 4
  store i32 %15, i32* %8, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @GX_ITM_S2, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @GX_ITM_T2, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @GX_ITM_OFF, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @GX_ITM_OFF, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %16, %13, %10
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 0
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GX_ITF_8, align 4
  %27 = load i32, i32* @GX_ITB_ST, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GX_ITW_0, align 4
  %30 = load i32, i32* @GX_ITW_0, align 4
  %31 = load i32, i32* @GX_FALSE, align 4
  %32 = load i32, i32* @GX_FALSE, align 4
  %33 = load i32, i32* @GX_ITBA_OFF, align 4
  %34 = call i32 @GX_SetTevIndirect(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GX_ITF_8, align 4
  %39 = load i32, i32* @GX_ITB_ST, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GX_ITW_0, align 4
  %42 = load i32, i32* @GX_ITW_0, align 4
  %43 = load i32, i32* @GX_TRUE, align 4
  %44 = load i32, i32* @GX_FALSE, align 4
  %45 = load i32, i32* @GX_ITBA_OFF, align 4
  %46 = call i32 @GX_SetTevIndirect(i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @GX_ITF_8, align 4
  %51 = load i32, i32* @GX_ITB_NONE, align 4
  %52 = load i32, i32* @GX_ITM_OFF, align 4
  %53 = load i32, i32* @GX_ITW_OFF, align 4
  %54 = load i32, i32* @GX_ITW_OFF, align 4
  %55 = load i32, i32* @GX_TRUE, align 4
  %56 = load i32, i32* @GX_FALSE, align 4
  %57 = load i32, i32* @GX_ITBA_OFF, align 4
  %58 = call i32 @GX_SetTevIndirect(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @GX_SetTevIndirect(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
