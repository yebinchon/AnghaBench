; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_ETH_BSP_Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_ETH_BSP_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SysTick_CLKSource_HCLK = common dso_local global i32 0, align 4
@SysTick_IRQn = common dso_local global i32 0, align 4
@BOARD_PHY_ADDRESS = common dso_local global i32 0, align 4
@PHY_SR = common dso_local global i32 0, align 4
@ETH_LINK_FLAG = common dso_local global i32 0, align 4
@EthStatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ETH_BSP_Config() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i32, i32* @SysTick_CLKSource_HCLK, align 4
  %3 = call i32 @SysTick_CLKSourceConfig(i32 %2)
  %4 = call i32 @RCC_GetClocksFreq(%struct.TYPE_3__* %1)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 1000
  %8 = call i32 @SysTick_Config(i32 %7)
  %9 = load i32, i32* @SysTick_IRQn, align 4
  %10 = call i32 @NVIC_SetPriority(i32 %9, i32 0)
  %11 = call i32 (...) @ETH_GPIO_Config()
  %12 = call i32 (...) @ETH_MACDMA_Config()
  %13 = load i32, i32* @BOARD_PHY_ADDRESS, align 4
  %14 = load i32, i32* @PHY_SR, align 4
  %15 = call i32 @ETH_ReadPHYRegister(i32 %13, i32 %14)
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @ETH_LINK_FLAG, align 4
  %20 = load i32, i32* @EthStatus, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @EthStatus, align 4
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i32, i32* @BOARD_PHY_ADDRESS, align 4
  %24 = call i32 @Eth_Link_PHYITConfig(i32 %23)
  %25 = call i32 (...) @Eth_Link_EXTIConfig()
  ret void
}

declare dso_local i32 @SysTick_CLKSourceConfig(i32) #1

declare dso_local i32 @RCC_GetClocksFreq(%struct.TYPE_3__*) #1

declare dso_local i32 @SysTick_Config(i32) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @ETH_GPIO_Config(...) #1

declare dso_local i32 @ETH_MACDMA_Config(...) #1

declare dso_local i32 @ETH_ReadPHYRegister(i32, i32) #1

declare dso_local i32 @Eth_Link_PHYITConfig(i32) #1

declare dso_local i32 @Eth_Link_EXTIConfig(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
