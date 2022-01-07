; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/src/extr_system_stm32f0xx.c_SystemCoreClockUpdate.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/src/extr_system_stm32f0xx.c_SystemCoreClockUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RCC = common dso_local global %struct.TYPE_2__* null, align 8
@RCC_CFGR_SWS = common dso_local global i32 0, align 4
@HSI_VALUE = common dso_local global i32 0, align 4
@SystemCoreClock = common dso_local global i32 0, align 4
@HSE_VALUE = common dso_local global i32 0, align 4
@RCC_CFGR_PLLMULL = common dso_local global i32 0, align 4
@RCC_CFGR_PLLSRC = common dso_local global i32 0, align 4
@RCC_CFGR2_PREDIV1 = common dso_local global i32 0, align 4
@AHBPrescTable = common dso_local global i32* null, align 8
@RCC_CFGR_HPRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SystemCoreClockUpdate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RCC_CFGR_SWS, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %49 [
    i32 0, label %11
    i32 4, label %13
    i32 8, label %15
  ]

11:                                               ; preds = %0
  %12 = load i32, i32* @HSI_VALUE, align 4
  store i32 %12, i32* @SystemCoreClock, align 4
  br label %51

13:                                               ; preds = %0
  %14 = load i32, i32* @HSE_VALUE, align 4
  store i32 %14, i32* @SystemCoreClock, align 4
  br label %51

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RCC_CFGR_PLLMULL, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %2, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RCC_CFGR_PLLSRC, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 18
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load i32, i32* @HSI_VALUE, align 4
  %33 = ashr i32 %32, 1
  %34 = load i32, i32* %2, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* @SystemCoreClock, align 4
  br label %48

36:                                               ; preds = %15
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RCC_CFGR2_PREDIV1, align 4
  %41 = and i32 %39, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @HSE_VALUE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %2, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* @SystemCoreClock, align 4
  br label %48

48:                                               ; preds = %36, %31
  br label %51

49:                                               ; preds = %0
  %50 = load i32, i32* @HSI_VALUE, align 4
  store i32 %50, i32* @SystemCoreClock, align 4
  br label %51

51:                                               ; preds = %49, %48, %13, %11
  %52 = load i32*, i32** @AHBPrescTable, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RCC_CFGR_HPRE, align 4
  %57 = and i32 %55, %56
  %58 = ashr i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @SystemCoreClock, align 4
  %64 = ashr i32 %63, %62
  store i32 %64, i32* @SystemCoreClock, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
