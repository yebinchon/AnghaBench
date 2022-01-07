; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_system_stm32f4xx.c_SystemCoreClockUpdate.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_system_stm32f4xx.c_SystemCoreClockUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RCC = common dso_local global %struct.TYPE_2__* null, align 8
@RCC_CFGR_SWS = common dso_local global i32 0, align 4
@HSI_VALUE = common dso_local global i32 0, align 4
@SystemCoreClock = common dso_local global i32 0, align 4
@HSE_VALUE = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLSRC = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLM = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLN = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLP = common dso_local global i32 0, align 4
@AHBPrescTable = common dso_local global i32* null, align 8
@RCC_CFGR_HPRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SystemCoreClockUpdate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RCC_CFGR_SWS, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  switch i32 %11, label %64 [
    i32 0, label %12
    i32 4, label %14
    i32 8, label %16
  ]

12:                                               ; preds = %0
  %13 = load i32, i32* @HSI_VALUE, align 4
  store i32 %13, i32* @SystemCoreClock, align 4
  br label %66

14:                                               ; preds = %0
  %15 = load i32, i32* @HSE_VALUE, align 4
  store i32 %15, i32* @SystemCoreClock, align 4
  br label %66

16:                                               ; preds = %0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RCC_PLLCFGR_PLLSRC, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 22
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RCC_PLLCFGR_PLLM, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %16
  %31 = load i32, i32* @HSE_VALUE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RCC_PLLCFGR_PLLN, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 6
  %40 = mul nsw i32 %33, %39
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %16
  %42 = load i32, i32* @HSI_VALUE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RCC_PLLCFGR_PLLN, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 6
  %51 = mul nsw i32 %44, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %41, %30
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RCC_PLLCFGR_PLLP, align 4
  %57 = and i32 %55, %56
  %58 = ashr i32 %57, 16
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* @SystemCoreClock, align 4
  br label %66

64:                                               ; preds = %0
  %65 = load i32, i32* @HSI_VALUE, align 4
  store i32 %65, i32* @SystemCoreClock, align 4
  br label %66

66:                                               ; preds = %64, %52, %14, %12
  %67 = load i32*, i32** @AHBPrescTable, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RCC_CFGR_HPRE, align 4
  %72 = and i32 %70, %71
  %73 = ashr i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @SystemCoreClock, align 4
  %79 = ashr i32 %78, %77
  store i32 %79, i32* @SystemCoreClock, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
