; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rcc.c_RCC_GetClocksFreq.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rcc.c_RCC_GetClocksFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@RCC = common dso_local global %struct.TYPE_5__* null, align 8
@RCC_CFGR_SWS = common dso_local global i32 0, align 4
@HSI_VALUE = common dso_local global i32 0, align 4
@HSE_VALUE = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLSRC = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLM = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLN = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLP = common dso_local global i32 0, align 4
@RCC_CFGR_HPRE = common dso_local global i32 0, align 4
@APBAHBPrescTable = common dso_local global i32* null, align 8
@RCC_CFGR_PPRE1 = common dso_local global i32 0, align 4
@RCC_CFGR_PPRE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RCC_GetClocksFreq(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RCC_CFGR_SWS, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %73 [
    i32 0, label %15
    i32 4, label %19
    i32 8, label %23
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @HSI_VALUE, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load i32, i32* @HSE_VALUE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RCC_PLLCFGR_PLLSRC, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 22
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RCC_PLLCFGR_PLLM, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load i32, i32* @HSE_VALUE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RCC_PLLCFGR_PLLN, align 4
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 6
  %47 = mul nsw i32 %40, %46
  store i32 %47, i32* %5, align 4
  br label %59

48:                                               ; preds = %23
  %49 = load i32, i32* @HSI_VALUE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %49, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RCC_PLLCFGR_PLLN, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 6
  %58 = mul nsw i32 %51, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %37
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RCC_PLLCFGR_PLLP, align 4
  %64 = and i32 %62, %63
  %65 = ashr i32 %64, 16
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %68, %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %1
  %74 = load i32, i32* @HSI_VALUE, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %59, %19, %15
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RCC_CFGR_HPRE, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = ashr i32 %83, 4
  store i32 %84, i32* %3, align 4
  %85 = load i32*, i32** @APBAHBPrescTable, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = ashr i32 %92, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RCC_CFGR_PPRE1, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = ashr i32 %102, 10
  store i32 %103, i32* %3, align 4
  %104 = load i32*, i32** @APBAHBPrescTable, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %4, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = ashr i32 %111, %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RCC_CFGR_PPRE2, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = ashr i32 %121, 13
  store i32 %122, i32* %3, align 4
  %123 = load i32*, i32** @APBAHBPrescTable, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %4, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = ashr i32 %130, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
