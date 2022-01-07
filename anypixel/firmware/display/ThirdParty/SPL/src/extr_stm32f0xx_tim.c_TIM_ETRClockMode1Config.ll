; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_ETRClockMode1Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_ETRClockMode1Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TIM_SMCR_SMS = common dso_local global i64 0, align 8
@TIM_SlaveMode_External1 = common dso_local global i64 0, align 8
@TIM_SMCR_TS = common dso_local global i64 0, align 8
@TIM_TS_ETRF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_ETRClockMode1Config(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @IS_TIM_LIST3_PERIPH(%struct.TYPE_5__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @IS_TIM_EXT_PRESCALER(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @IS_TIM_EXT_POLARITY(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @IS_TIM_EXT_FILTER(i64 %19)
  %21 = call i32 @assert_param(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @TIM_ETRConfig(%struct.TYPE_5__* %22, i64 %23, i64 %24, i64 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* @TIM_SMCR_SMS, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* @TIM_SlaveMode_External1, align 8
  %35 = load i64, i64* %9, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* @TIM_SMCR_TS, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* @TIM_TS_ETRF, align 8
  %42 = load i64, i64* %9, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_LIST3_PERIPH(%struct.TYPE_5__*) #1

declare dso_local i32 @IS_TIM_EXT_PRESCALER(i64) #1

declare dso_local i32 @IS_TIM_EXT_POLARITY(i64) #1

declare dso_local i32 @IS_TIM_EXT_FILTER(i64) #1

declare dso_local i32 @TIM_ETRConfig(%struct.TYPE_5__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
