; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_StructInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_StructInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_AutoNegotiation_Enable = common dso_local global i32 0, align 4
@ETH_Watchdog_Enable = common dso_local global i32 0, align 4
@ETH_Jabber_Enable = common dso_local global i32 0, align 4
@ETH_InterFrameGap_96Bit = common dso_local global i32 0, align 4
@ETH_CarrierSense_Enable = common dso_local global i32 0, align 4
@ETH_Speed_100M = common dso_local global i32 0, align 4
@ETH_ReceiveOwn_Enable = common dso_local global i32 0, align 4
@ETH_LoopbackMode_Disable = common dso_local global i32 0, align 4
@ETH_Mode_FullDuplex = common dso_local global i32 0, align 4
@ETH_ChecksumOffload_Disable = common dso_local global i32 0, align 4
@ETH_RetryTransmission_Enable = common dso_local global i32 0, align 4
@ETH_AutomaticPadCRCStrip_Disable = common dso_local global i32 0, align 4
@ETH_BackOffLimit_10 = common dso_local global i32 0, align 4
@ETH_DeferralCheck_Disable = common dso_local global i32 0, align 4
@ETH_ReceiveAll_Disable = common dso_local global i32 0, align 4
@ETH_SourceAddrFilter_Disable = common dso_local global i32 0, align 4
@ETH_PassControlFrames_BlockAll = common dso_local global i32 0, align 4
@ETH_BroadcastFramesReception_Disable = common dso_local global i32 0, align 4
@ETH_DestinationAddrFilter_Normal = common dso_local global i32 0, align 4
@ETH_PromiscuousMode_Disable = common dso_local global i32 0, align 4
@ETH_MulticastFramesFilter_Perfect = common dso_local global i32 0, align 4
@ETH_UnicastFramesFilter_Perfect = common dso_local global i32 0, align 4
@ETH_ZeroQuantaPause_Disable = common dso_local global i32 0, align 4
@ETH_PauseLowThreshold_Minus4 = common dso_local global i32 0, align 4
@ETH_UnicastPauseFrameDetect_Disable = common dso_local global i32 0, align 4
@ETH_ReceiveFlowControl_Disable = common dso_local global i32 0, align 4
@ETH_TransmitFlowControl_Disable = common dso_local global i32 0, align 4
@ETH_VLANTagComparison_16Bit = common dso_local global i32 0, align 4
@ETH_DropTCPIPChecksumErrorFrame_Disable = common dso_local global i32 0, align 4
@ETH_ReceiveStoreForward_Enable = common dso_local global i32 0, align 4
@ETH_FlushReceivedFrame_Enable = common dso_local global i32 0, align 4
@ETH_TransmitStoreForward_Enable = common dso_local global i32 0, align 4
@ETH_TransmitThresholdControl_64Bytes = common dso_local global i32 0, align 4
@ETH_ForwardErrorFrames_Disable = common dso_local global i32 0, align 4
@ETH_ForwardUndersizedGoodFrames_Disable = common dso_local global i32 0, align 4
@ETH_ReceiveThresholdControl_64Bytes = common dso_local global i32 0, align 4
@ETH_SecondFrameOperate_Disable = common dso_local global i32 0, align 4
@ETH_AddressAlignedBeats_Enable = common dso_local global i32 0, align 4
@ETH_FixedBurst_Enable = common dso_local global i32 0, align 4
@ETH_RxDMABurstLength_32Beat = common dso_local global i32 0, align 4
@ETH_TxDMABurstLength_32Beat = common dso_local global i32 0, align 4
@ETH_DMAArbitration_RoundRobin_RxTx_1_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ETH_StructInit(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @ETH_AutoNegotiation_Enable, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 46
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ETH_Watchdog_Enable, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 45
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ETH_Jabber_Enable, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 44
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ETH_InterFrameGap_96Bit, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 43
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ETH_CarrierSense_Enable, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 42
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ETH_Speed_100M, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 41
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ETH_ReceiveOwn_Enable, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 40
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ETH_LoopbackMode_Disable, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 39
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ETH_Mode_FullDuplex, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 38
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ETH_ChecksumOffload_Disable, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 37
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ETH_RetryTransmission_Enable, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 36
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ETH_AutomaticPadCRCStrip_Disable, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 35
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ETH_BackOffLimit_10, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 34
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ETH_DeferralCheck_Disable, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 33
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ETH_ReceiveAll_Disable, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 32
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ETH_SourceAddrFilter_Disable, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 31
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ETH_PassControlFrames_BlockAll, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 30
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ETH_BroadcastFramesReception_Disable, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 29
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ETH_DestinationAddrFilter_Normal, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 28
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ETH_PromiscuousMode_Disable, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 27
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ETH_MulticastFramesFilter_Perfect, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 26
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ETH_UnicastFramesFilter_Perfect, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 25
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @ETH_ZeroQuantaPause_Disable, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 24
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ETH_PauseLowThreshold_Minus4, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 23
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @ETH_UnicastPauseFrameDetect_Disable, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 22
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ETH_ReceiveFlowControl_Disable, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 21
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ETH_TransmitFlowControl_Disable, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 20
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ETH_VLANTagComparison_16Bit, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 19
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @ETH_DropTCPIPChecksumErrorFrame_Disable, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 18
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @ETH_ReceiveStoreForward_Enable, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 17
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @ETH_FlushReceivedFrame_Enable, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 16
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @ETH_TransmitStoreForward_Enable, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 15
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @ETH_TransmitThresholdControl_64Bytes, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @ETH_ForwardErrorFrames_Disable, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @ETH_ForwardUndersizedGoodFrames_Disable, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @ETH_ReceiveThresholdControl_64Bytes, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 11
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @ETH_SecondFrameOperate_Disable, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @ETH_AddressAlignedBeats_Enable, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @ETH_FixedBurst_Enable, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @ETH_RxDMABurstLength_32Beat, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @ETH_TxDMABurstLength_32Beat, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* @ETH_DMAArbitration_RoundRobin_RxTx_1_1, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
