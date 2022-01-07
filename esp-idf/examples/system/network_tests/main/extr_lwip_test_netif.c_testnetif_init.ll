; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_lwip_test_netif.c_testnetif_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_lwip_test_netif.c_testnetif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, i32, i32, i32, i32, i32 }

@g_last_netif = common dso_local global %struct.netif* null, align 8
@CONFIG_LWIP_LOCAL_HOSTNAME = common dso_local global i32 0, align 4
@snmp_ifType_ethernet_csmacd = common dso_local global i32 0, align 4
@etharp_output = common dso_local global i32 0, align 4
@testnetif_output = common dso_local global i32 0, align 4
@ETHARP_HWADDR_LEN = common dso_local global i32 0, align 4
@NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@NETIF_FLAG_LINK_UP = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@NETIF_FLAG_IGMP = common dso_local global i32 0, align 4
@ethip6_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testnetif_init(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load %struct.netif*, %struct.netif** %2, align 8
  store %struct.netif* %3, %struct.netif** @g_last_netif, align 8
  %4 = load i32, i32* @CONFIG_LWIP_LOCAL_HOSTNAME, align 4
  %5 = load %struct.netif*, %struct.netif** %2, align 8
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 4
  %7 = load %struct.netif*, %struct.netif** %2, align 8
  %8 = load i32, i32* @snmp_ifType_ethernet_csmacd, align 4
  %9 = call i32 @NETIF_INIT_SNMP(%struct.netif* %7, i32 %8, i32 100)
  %10 = load i32, i32* @etharp_output, align 4
  %11 = load %struct.netif*, %struct.netif** %2, align 8
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @testnetif_output, align 4
  %14 = load %struct.netif*, %struct.netif** %2, align 8
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ETHARP_HWADDR_LEN, align 4
  %17 = load %struct.netif*, %struct.netif** %2, align 8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.netif*, %struct.netif** %2, align 8
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %19, i32 0, i32 0
  store i32 1500, i32* %20, align 4
  %21 = load i32, i32* @NETIF_FLAG_BROADCAST, align 4
  %22 = load i32, i32* @NETIF_FLAG_ETHARP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NETIF_FLAG_LINK_UP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.netif*, %struct.netif** %2, align 8
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ERR_OK, align 4
  ret i32 %28
}

declare dso_local i32 @NETIF_INIT_SNMP(%struct.netif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
