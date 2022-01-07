; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_start_tx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32 }
%struct.uip_pbuf = type { i32 }
%struct.uip_ip_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*, %struct.uip_pbuf*, %struct.uip_ip_addr*)* @__bba_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_start_tx(%struct.uip_netif* %0, %struct.uip_pbuf* %1, %struct.uip_ip_addr* %2) #0 {
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca %struct.uip_pbuf*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %4, align 8
  store %struct.uip_pbuf* %1, %struct.uip_pbuf** %5, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %6, align 8
  %7 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %8 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %9 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %10 = call i32 @uip_arp_out(%struct.uip_netif* %7, %struct.uip_ip_addr* %8, %struct.uip_pbuf* %9)
  ret i32 %10
}

declare dso_local i32 @uip_arp_out(%struct.uip_netif*, %struct.uip_ip_addr*, %struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
