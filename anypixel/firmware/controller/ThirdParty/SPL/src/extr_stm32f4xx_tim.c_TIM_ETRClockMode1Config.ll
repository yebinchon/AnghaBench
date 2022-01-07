; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_ETRClockMode1Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_ETRClockMode1Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TIM_SMCR_SMS = common dso_local global i64 0, align 8
@TIM_SlaveMode_External1 = common dso_local global i32 0, align 4
@TIM_SMCR_TS = common dso_local global i64 0, align 8
@TIM_TS_ETRF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_ETRClockMode1Config(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @IS_TIM_LIST3_PERIPH(%struct.TYPE_5__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @IS_TIM_EXT_PRESCALER(i32 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @IS_TIM_EXT_POLARITY(i32 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @IS_TIM_EXT_FILTER(i32 %19)
  %21 = call i32 @assert_param(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TIM_ETRConfig(%struct.TYPE_5__* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* @TIM_SMCR_SMS, align 8
  %31 = xor i64 %30, -1
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TIM_SlaveMode_External1, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* @TIM_SMCR_TS, align 8
  %39 = xor i64 %38, -1
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @TIM_TS_ETRF, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_LIST3_PERIPH(%struct.TYPE_5__*) #1

declare dso_local i32 @IS_TIM_EXT_PRESCALER(i32) #1

declare dso_local i32 @IS_TIM_EXT_POLARITY(i32) #1

declare dso_local i32 @IS_TIM_EXT_FILTER(i32) #1

declare dso_local i32 @TIM_ETRConfig(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
