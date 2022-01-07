; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rcc.c_RCC_PLLConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rcc.c_RCC_PLLConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RCC = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RCC_PLLConfig(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @IS_RCC_PLL_SOURCE(i32 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @IS_RCC_PLLM_VALUE(i32 %14)
  %16 = call i32 @assert_param(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @IS_RCC_PLLN_VALUE(i32 %17)
  %19 = call i32 @assert_param(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @IS_RCC_PLLP_VALUE(i32 %20)
  %22 = call i32 @assert_param(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @IS_RCC_PLLQ_VALUE(i32 %23)
  %25 = call i32 @assert_param(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 6
  %29 = or i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 1
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %37, 24
  %39 = or i32 %36, %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RCC_PLL_SOURCE(i32) #1

declare dso_local i32 @IS_RCC_PLLM_VALUE(i32) #1

declare dso_local i32 @IS_RCC_PLLN_VALUE(i32) #1

declare dso_local i32 @IS_RCC_PLLP_VALUE(i32) #1

declare dso_local i32 @IS_RCC_PLLQ_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
