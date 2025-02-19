; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_Eth_Link_EXTIConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_Eth_Link_EXTIConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@ETH_LINK_GPIO_CLK = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i8* null, align 8
@RCC_APB2Periph_SYSCFG = common dso_local global i32 0, align 4
@GPIO_Mode_IN = common dso_local global i32 0, align 4
@GPIO_PuPd_NOPULL = common dso_local global i32 0, align 4
@ETH_LINK_PIN = common dso_local global i32 0, align 4
@ETH_LINK_GPIO_PORT = common dso_local global i32 0, align 4
@ETH_LINK_EXTI_PORT_SOURCE = common dso_local global i32 0, align 4
@ETH_LINK_EXTI_PIN_SOURCE = common dso_local global i32 0, align 4
@ETH_LINK_EXTI_LINE = common dso_local global i32 0, align 4
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4
@EXTI_Trigger_Falling = common dso_local global i32 0, align 4
@EXTI15_10_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Eth_Link_EXTIConfig() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = load i32, i32* @ETH_LINK_GPIO_CLK, align 4
  %5 = load i8*, i8** @ENABLE, align 8
  %6 = call i32 @RCC_AHB1PeriphClockCmd(i32 %4, i8* %5)
  %7 = load i32, i32* @RCC_APB2Periph_SYSCFG, align 4
  %8 = load i8*, i8** @ENABLE, align 8
  %9 = call i32 @RCC_APB2PeriphClockCmd(i32 %7, i8* %8)
  %10 = load i32, i32* @GPIO_Mode_IN, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @GPIO_PuPd_NOPULL, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ETH_LINK_PIN, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ETH_LINK_GPIO_PORT, align 4
  %17 = call i32 @GPIO_Init(i32 %16, %struct.TYPE_8__* %1)
  %18 = load i32, i32* @ETH_LINK_EXTI_PORT_SOURCE, align 4
  %19 = load i32, i32* @ETH_LINK_EXTI_PIN_SOURCE, align 4
  %20 = call i32 @SYSCFG_EXTILineConfig(i32 %18, i32 %19)
  %21 = load i32, i32* @ETH_LINK_EXTI_LINE, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @EXTI_Mode_Interrupt, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @EXTI_Trigger_Falling, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** @ENABLE, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = call i32 @EXTI_Init(%struct.TYPE_9__* %2)
  %30 = load i32, i32* @EXTI15_10_IRQn, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i8*, i8** @ENABLE, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = call i32 @NVIC_Init(%struct.TYPE_7__* %3)
  ret void
}

declare dso_local i32 @RCC_AHB1PeriphClockCmd(i32, i8*) #1

declare dso_local i32 @RCC_APB2PeriphClockCmd(i32, i8*) #1

declare dso_local i32 @GPIO_Init(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SYSCFG_EXTILineConfig(i32, i32) #1

declare dso_local i32 @EXTI_Init(%struct.TYPE_9__*) #1

declare dso_local i32 @NVIC_Init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
