; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_fan_setup.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_fan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@FAN_POWER_AHB = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@FAN_POWER_APB1 = common dso_local global i32 0, align 4
@FAN_POWER_APB2 = common dso_local global i32 0, align 4
@pins_pwm = common dso_local global i32 0, align 4
@PWM_PINS_NUM = common dso_local global i32 0, align 4
@TIM_CKD_DIV1 = common dso_local global i32 0, align 4
@TIM_CounterMode_Up = common dso_local global i8* null, align 8
@TIM16 = common dso_local global i32 0, align 4
@TIM_OCMode_PWM1 = common dso_local global i32 0, align 4
@TIM_OutputState_Enable = common dso_local global i32 0, align 4
@TIM_OutputNState_Disable = common dso_local global i32 0, align 4
@TIM_OCPolarity_High = common dso_local global i32 0, align 4
@TIM_OCNPolarity_High = common dso_local global i32 0, align 4
@TIM_OCIdleState_Set = common dso_local global i32 0, align 4
@TIM_OCNIdleState_Reset = common dso_local global i32 0, align 4
@TIM_Channel_1 = common dso_local global i32 0, align 4
@TIM_ICPolarity_Rising = common dso_local global i32 0, align 4
@TIM_ICSelection_DirectTI = common dso_local global i32 0, align 4
@TIM_ICPSC_DIV1 = common dso_local global i32 0, align 4
@TIM_CKD_DIV4 = common dso_local global i32 0, align 4
@TIM3 = common dso_local global i32 0, align 4
@TIM_IT_CC1 = common dso_local global i32 0, align 4
@TIM3_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fan_setup() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_11__, align 4
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = load i32, i32* @FAN_POWER_AHB, align 4
  %6 = load i32, i32* @ENABLE, align 4
  %7 = call i32 @RCC_AHBPeriphClockCmd(i32 %5, i32 %6)
  %8 = load i32, i32* @FAN_POWER_APB1, align 4
  %9 = load i32, i32* @ENABLE, align 4
  %10 = call i32 @RCC_APB1PeriphClockCmd(i32 %8, i32 %9)
  %11 = load i32, i32* @FAN_POWER_APB2, align 4
  %12 = load i32, i32* @ENABLE, align 4
  %13 = call i32 @RCC_APB2PeriphClockCmd(i32 %11, i32 %12)
  %14 = load i32, i32* @pins_pwm, align 4
  %15 = load i32, i32* @PWM_PINS_NUM, align 4
  %16 = call i32 @CONFIG_pins(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @TIM_CKD_DIV1, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** @TIM_CounterMode_Up, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 1920, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @TIM16, align 4
  %25 = call i32 @TIM_TimeBaseInit(i32 %24, %struct.TYPE_10__* %1)
  %26 = load i32, i32* @TIM_OCMode_PWM1, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 7
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TIM_OutputState_Enable, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 6
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @TIM_OutputNState_Disable, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i32 1000, i32* %32, align 4
  %33 = load i32, i32* @TIM_OCPolarity_High, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @TIM_OCNPolarity_High, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TIM_OCIdleState_Set, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @TIM_OCNIdleState_Reset, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @TIM16, align 4
  %42 = call i32 @TIM_OC1Init(i32 %41, %struct.TYPE_11__* %2)
  %43 = load i32, i32* @TIM16, align 4
  %44 = load i32, i32* @ENABLE, align 4
  %45 = call i32 @TIM_Cmd(i32 %43, i32 %44)
  %46 = load i32, i32* @TIM16, align 4
  %47 = load i32, i32* @ENABLE, align 4
  %48 = call i32 @TIM_CtrlPWMOutputs(i32 %46, i32 %47)
  %49 = load i32, i32* @TIM_Channel_1, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @TIM_ICPolarity_Rising, align 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @TIM_ICSelection_DirectTI, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @TIM_ICPSC_DIV1, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = call i32 @TIM_TimeBaseStructInit(%struct.TYPE_10__* %1)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 199, i32* %59, align 8
  %60 = load i32, i32* @TIM_CKD_DIV4, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load i8*, i8** @TIM_CounterMode_Up, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @TIM3, align 4
  %66 = call i32 @TIM_TimeBaseInit(i32 %65, %struct.TYPE_10__* %1)
  %67 = load i32, i32* @TIM3, align 4
  %68 = call i32 @TIM_ICInit(i32 %67, %struct.TYPE_12__* %4)
  %69 = load i32, i32* @TIM3, align 4
  %70 = load i32, i32* @ENABLE, align 4
  %71 = call i32 @TIM_Cmd(i32 %69, i32 %70)
  %72 = load i32, i32* @TIM3, align 4
  %73 = load i32, i32* @TIM_IT_CC1, align 4
  %74 = load i32, i32* @ENABLE, align 4
  %75 = call i32 @TIM_ITConfig(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @TIM3_IRQn, align 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @ENABLE, align 4
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = call i32 @NVIC_Init(%struct.TYPE_13__* %3)
  ret void
}

declare dso_local i32 @RCC_AHBPeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB2PeriphClockCmd(i32, i32) #1

declare dso_local i32 @CONFIG_pins(i32, i32) #1

declare dso_local i32 @TIM_TimeBaseInit(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TIM_OC1Init(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TIM_Cmd(i32, i32) #1

declare dso_local i32 @TIM_CtrlPWMOutputs(i32, i32) #1

declare dso_local i32 @TIM_TimeBaseStructInit(%struct.TYPE_10__*) #1

declare dso_local i32 @TIM_ICInit(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @TIM_ITConfig(i32, i32, i32) #1

declare dso_local i32 @NVIC_Init(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
