; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernetif_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernetif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i8*, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"netif != NULL\00", align 1
@ETH_CMD_G_SPEED = common dso_local global i32 0, align 4
@ETH_SPEED_100M = common dso_local global i64 0, align 8
@snmp_ifType_ethernet_csmacd = common dso_local global i32 0, align 4
@IFNAME0 = common dso_local global i32 0, align 4
@IFNAME1 = common dso_local global i32 0, align 4
@etharp_output = common dso_local global i32 0, align 4
@ethernet_low_level_output = common dso_local global i32 0, align 4
@ethernet_free_rx_buf_l2 = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@CONFIG_LWIP_LOCAL_HOSTNAME = common dso_local global i8* null, align 8
@ethip6_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethernetif_init(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %5 = load %struct.netif*, %struct.netif** %2, align 8
  %6 = icmp ne %struct.netif* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.netif*, %struct.netif** %2, align 8
  %10 = call i32 @esp_netif_get_handle_from_netif_impl(%struct.netif* %9)
  %11 = call i32 @esp_netif_get_io_driver(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ETH_CMD_G_SPEED, align 4
  %14 = call i32 @esp_eth_ioctl(i32 %12, i32 %13, i64* %4)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ETH_SPEED_100M, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.netif*, %struct.netif** %2, align 8
  %20 = load i32, i32* @snmp_ifType_ethernet_csmacd, align 4
  %21 = call i32 @NETIF_INIT_SNMP(%struct.netif* %19, i32 %20, i32 100000000)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.netif*, %struct.netif** %2, align 8
  %24 = load i32, i32* @snmp_ifType_ethernet_csmacd, align 4
  %25 = call i32 @NETIF_INIT_SNMP(%struct.netif* %23, i32 %24, i32 10000000)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @IFNAME0, align 4
  %28 = load %struct.netif*, %struct.netif** %2, align 8
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @IFNAME1, align 4
  %33 = load %struct.netif*, %struct.netif** %2, align 8
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @etharp_output, align 4
  %38 = load %struct.netif*, %struct.netif** %2, align 8
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ethernet_low_level_output, align 4
  %41 = load %struct.netif*, %struct.netif** %2, align 8
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ethernet_free_rx_buf_l2, align 4
  %44 = load %struct.netif*, %struct.netif** %2, align 8
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.netif*, %struct.netif** %2, align 8
  %47 = call i32 @ethernet_low_level_init(%struct.netif* %46)
  %48 = load i32, i32* @ERR_OK, align 4
  ret i32 %48
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @esp_netif_get_io_driver(i32) #1

declare dso_local i32 @esp_netif_get_handle_from_netif_impl(%struct.netif*) #1

declare dso_local i32 @esp_eth_ioctl(i32, i32, i64*) #1

declare dso_local i32 @NETIF_INIT_SNMP(%struct.netif*, i32, i32) #1

declare dso_local i32 @ethernet_low_level_init(%struct.netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
