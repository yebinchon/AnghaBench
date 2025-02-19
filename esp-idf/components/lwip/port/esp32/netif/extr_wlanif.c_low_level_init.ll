; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_wlanif.c_low_level_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_wlanif.c_low_level_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, i32, i32 }

@ETHARP_HWADDR_LEN = common dso_local global i32 0, align 4
@NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@NETIF_FLAG_LINK_UP = common dso_local global i32 0, align 4
@lwip_netif_wifi_free_rx_buffer = common dso_local global i32 0, align 4
@NETIF_FLAG_IGMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif*)* @low_level_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @low_level_init(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load i32, i32* @ETHARP_HWADDR_LEN, align 4
  %4 = load %struct.netif*, %struct.netif** %2, align 8
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load %struct.netif*, %struct.netif** %2, align 8
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %6, i32 0, i32 0
  store i32 1500, i32* %7, align 4
  %8 = load i32, i32* @NETIF_FLAG_BROADCAST, align 4
  %9 = load i32, i32* @NETIF_FLAG_ETHARP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @NETIF_FLAG_LINK_UP, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.netif*, %struct.netif** %2, align 8
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @lwip_netif_wifi_free_rx_buffer, align 4
  %16 = load %struct.netif*, %struct.netif** %2, align 8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
