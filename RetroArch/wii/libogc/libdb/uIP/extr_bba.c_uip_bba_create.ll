; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_uip_bba_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_uip_bba_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.uip_eth_addr* }
%struct.uip_eth_addr = type { i32 }
%struct.uip_netif = type { i32, i32, i64, i32, i32, i32, i32* }

@IFNAME0 = common dso_local global i32 0, align 4
@IFNAME1 = common dso_local global i32 0, align 4
@__bba_start_tx = common dso_local global i32 0, align 4
@__bba_link_tx = common dso_local global i32 0, align 4
@UIP_NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@bba_device = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UIP_ERR_OK = common dso_local global i32 0, align 4
@bba_netif = common dso_local global %struct.uip_netif* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @uip_bba_create(%struct.uip_netif* %0) #0 {
  %2 = alloca %struct.uip_netif*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %2, align 8
  %3 = load i32, i32* @IFNAME0, align 4
  %4 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %5 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @IFNAME1, align 4
  %9 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %10 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @__bba_start_tx, align 4
  %14 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %15 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @__bba_link_tx, align 4
  %17 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %18 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %20 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %19, i32 0, i32 0
  store i32 1500, i32* %20, align 8
  %21 = load i32, i32* @UIP_NETIF_FLAG_BROADCAST, align 4
  %22 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %23 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %25 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %24, i32 0, i32 1
  store i32 6, i32* %25, align 4
  %26 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  %27 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.uip_eth_addr*
  store %struct.uip_eth_addr* %29, %struct.uip_eth_addr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bba_device, i32 0, i32 1), align 8
  %30 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bba_device, i32 0, i32 0), align 8
  %31 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  store %struct.uip_netif* %31, %struct.uip_netif** @bba_netif, align 8
  ret %struct.TYPE_4__* @bba_device
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
