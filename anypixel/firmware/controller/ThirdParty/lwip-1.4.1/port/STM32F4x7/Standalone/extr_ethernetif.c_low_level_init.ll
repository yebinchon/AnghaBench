; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/port/STM32F4x7/Standalone/extr_ethernetif.c_low_level_init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/port/STM32F4x7/Standalone/extr_ethernetif.c_low_level_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, i32*, i32 }

@ETHARP_HWADDR_LEN = common dso_local global i32 0, align 4
@MAC_ADDR0 = common dso_local global i32 0, align 4
@MAC_ADDR1 = common dso_local global i32 0, align 4
@MAC_ADDR2 = common dso_local global i32 0, align 4
@MAC_ADDR3 = common dso_local global i32 0, align 4
@MAC_ADDR4 = common dso_local global i32 0, align 4
@mac_last_octet = common dso_local global i32 0, align 4
@ETH_MAC_Address0 = common dso_local global i32 0, align 4
@NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@DMATxDscrTab = common dso_local global i32* null, align 8
@Tx_Buff = common dso_local global i32** null, align 8
@ETH_TXBUFNB = common dso_local global i32 0, align 4
@DMARxDscrTab = common dso_local global i32 0, align 4
@Rx_Buff = common dso_local global i32** null, align 8
@ETH_RXBUFNB = common dso_local global i32 0, align 4
@ETH_DMATxDesc_ChecksumTCPUDPICMPFull = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif*)* @low_level_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @low_level_init(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load i32, i32* @ETHARP_HWADDR_LEN, align 4
  %4 = load %struct.netif*, %struct.netif** %2, align 8
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @MAC_ADDR0, align 4
  %7 = load %struct.netif*, %struct.netif** %2, align 8
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* @MAC_ADDR1, align 4
  %12 = load %struct.netif*, %struct.netif** %2, align 8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @MAC_ADDR2, align 4
  %17 = load %struct.netif*, %struct.netif** %2, align 8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @MAC_ADDR3, align 4
  %22 = load %struct.netif*, %struct.netif** %2, align 8
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @MAC_ADDR4, align 4
  %27 = load %struct.netif*, %struct.netif** %2, align 8
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @mac_last_octet, align 4
  %32 = load %struct.netif*, %struct.netif** %2, align 8
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @ETH_MAC_Address0, align 4
  %37 = load %struct.netif*, %struct.netif** %2, align 8
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ETH_MACAddressConfig(i32 %36, i32* %39)
  %41 = load %struct.netif*, %struct.netif** %2, align 8
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %41, i32 0, i32 0
  store i32 1500, i32* %42, align 8
  %43 = load i32, i32* @NETIF_FLAG_BROADCAST, align 4
  %44 = load i32, i32* @NETIF_FLAG_ETHARP, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.netif*, %struct.netif** %2, align 8
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** @DMATxDscrTab, align 8
  %49 = load i32**, i32*** @Tx_Buff, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* @ETH_TXBUFNB, align 4
  %54 = call i32 @ETH_DMATxDescChainInit(i32* %48, i32* %52, i32 %53)
  %55 = load i32, i32* @DMARxDscrTab, align 4
  %56 = load i32**, i32*** @Rx_Buff, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* @ETH_RXBUFNB, align 4
  %61 = call i32 @ETH_DMARxDescChainInit(i32 %55, i32* %59, i32 %60)
  %62 = call i32 (...) @ETH_Start()
  ret void
}

declare dso_local i32 @ETH_MACAddressConfig(i32, i32*) #1

declare dso_local i32 @ETH_DMATxDescChainInit(i32*, i32*, i32) #1

declare dso_local i32 @ETH_DMARxDescChainInit(i32, i32*, i32) #1

declare dso_local i32 @ETH_Start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
