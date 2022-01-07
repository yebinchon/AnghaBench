; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_ETH_MACDMA_Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_ETH_MACDMA_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RCC_AHB1Periph_ETH_MAC = common dso_local global i32 0, align 4
@RCC_AHB1Periph_ETH_MAC_Tx = common dso_local global i32 0, align 4
@RCC_AHB1Periph_ETH_MAC_Rx = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@ETH_InitStructure = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ETH_AutoNegotiation_Enable = common dso_local global i32 0, align 4
@ETH_LoopbackMode_Disable = common dso_local global i32 0, align 4
@ETH_RetryTransmission_Disable = common dso_local global i32 0, align 4
@ETH_AutomaticPadCRCStrip_Disable = common dso_local global i32 0, align 4
@ETH_ReceiveAll_Disable = common dso_local global i32 0, align 4
@ETH_BroadcastFramesReception_Enable = common dso_local global i32 0, align 4
@ETH_PromiscuousMode_Disable = common dso_local global i32 0, align 4
@ETH_MulticastFramesFilter_Perfect = common dso_local global i32 0, align 4
@ETH_UnicastFramesFilter_Perfect = common dso_local global i32 0, align 4
@ETH_DropTCPIPChecksumErrorFrame_Enable = common dso_local global i32 0, align 4
@ETH_ReceiveStoreForward_Enable = common dso_local global i32 0, align 4
@ETH_TransmitStoreForward_Enable = common dso_local global i32 0, align 4
@ETH_ForwardErrorFrames_Disable = common dso_local global i32 0, align 4
@ETH_ForwardUndersizedGoodFrames_Disable = common dso_local global i32 0, align 4
@ETH_SecondFrameOperate_Enable = common dso_local global i32 0, align 4
@ETH_AddressAlignedBeats_Enable = common dso_local global i32 0, align 4
@ETH_FixedBurst_Enable = common dso_local global i32 0, align 4
@ETH_RxDMABurstLength_32Beat = common dso_local global i32 0, align 4
@ETH_TxDMABurstLength_32Beat = common dso_local global i32 0, align 4
@ETH_DMAArbitration_RoundRobin_RxTx_2_1 = common dso_local global i32 0, align 4
@EthStatus = common dso_local global i64 0, align 8
@ETH_ERROR = common dso_local global i64 0, align 8
@ETH_ChecksumOffload_Enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ETH_MACDMA_Config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ETH_MACDMA_Config() #0 {
  %1 = load i32, i32* @RCC_AHB1Periph_ETH_MAC, align 4
  %2 = load i32, i32* @RCC_AHB1Periph_ETH_MAC_Tx, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @RCC_AHB1Periph_ETH_MAC_Rx, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @ENABLE, align 4
  %7 = call i32 @RCC_AHB1PeriphClockCmd(i32 %5, i32 %6)
  %8 = call i32 (...) @ETH_DeInit()
  %9 = call i32 (...) @ETH_SoftwareReset()
  br label %10

10:                                               ; preds = %14, %0
  %11 = call i64 (...) @ETH_GetSoftwareResetStatus()
  %12 = load i64, i64* @SET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  %16 = call i32 @ETH_StructInit(%struct.TYPE_4__* @ETH_InitStructure)
  %17 = load i32, i32* @ETH_AutoNegotiation_Enable, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 20), align 4
  %18 = load i32, i32* @ETH_LoopbackMode_Disable, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 19), align 4
  %19 = load i32, i32* @ETH_RetryTransmission_Disable, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 18), align 4
  %20 = load i32, i32* @ETH_AutomaticPadCRCStrip_Disable, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 17), align 4
  %21 = load i32, i32* @ETH_ReceiveAll_Disable, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 16), align 4
  %22 = load i32, i32* @ETH_BroadcastFramesReception_Enable, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 15), align 4
  %23 = load i32, i32* @ETH_PromiscuousMode_Disable, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 14), align 4
  %24 = load i32, i32* @ETH_MulticastFramesFilter_Perfect, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 13), align 4
  %25 = load i32, i32* @ETH_UnicastFramesFilter_Perfect, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 12), align 4
  %26 = load i32, i32* @ETH_DropTCPIPChecksumErrorFrame_Enable, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 10), align 4
  %27 = load i32, i32* @ETH_ReceiveStoreForward_Enable, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 9), align 4
  %28 = load i32, i32* @ETH_TransmitStoreForward_Enable, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 8), align 4
  %29 = load i32, i32* @ETH_ForwardErrorFrames_Disable, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 7), align 4
  %30 = load i32, i32* @ETH_ForwardUndersizedGoodFrames_Disable, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 6), align 4
  %31 = load i32, i32* @ETH_SecondFrameOperate_Enable, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 5), align 4
  %32 = load i32, i32* @ETH_AddressAlignedBeats_Enable, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 4), align 4
  %33 = load i32, i32* @ETH_FixedBurst_Enable, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 3), align 4
  %34 = load i32, i32* @ETH_RxDMABurstLength_32Beat, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 2), align 4
  %35 = load i32, i32* @ETH_TxDMABurstLength_32Beat, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 1), align 4
  %36 = load i32, i32* @ETH_DMAArbitration_RoundRobin_RxTx_2_1, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ETH_InitStructure, i32 0, i32 0), align 4
  %37 = call i64 @ETH_Init(%struct.TYPE_4__* @ETH_InitStructure, i32 1)
  store i64 %37, i64* @EthStatus, align 8
  %38 = load i64, i64* @EthStatus, align 8
  %39 = load i64, i64* @ETH_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = call i64 @ETH_Init(%struct.TYPE_4__* @ETH_InitStructure, i32 2)
  store i64 %42, i64* @EthStatus, align 8
  br label %43

43:                                               ; preds = %41, %15
  ret void
}

declare dso_local i32 @RCC_AHB1PeriphClockCmd(i32, i32) #1

declare dso_local i32 @ETH_DeInit(...) #1

declare dso_local i32 @ETH_SoftwareReset(...) #1

declare dso_local i64 @ETH_GetSoftwareResetStatus(...) #1

declare dso_local i32 @ETH_StructInit(%struct.TYPE_4__*) #1

declare dso_local i64 @ETH_Init(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
