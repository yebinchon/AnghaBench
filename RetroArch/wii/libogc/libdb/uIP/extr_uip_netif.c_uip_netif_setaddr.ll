; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_netif.c_uip_netif_setaddr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_netif.c_uip_netif_setaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32 }
%struct.uip_ip_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_netif_setaddr(%struct.uip_netif* %0, %struct.uip_ip_addr* %1, %struct.uip_ip_addr* %2, %struct.uip_ip_addr* %3) #0 {
  %5 = alloca %struct.uip_netif*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  %7 = alloca %struct.uip_ip_addr*, align 8
  %8 = alloca %struct.uip_ip_addr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %5, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %6, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %7, align 8
  store %struct.uip_ip_addr* %3, %struct.uip_ip_addr** %8, align 8
  %9 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %10 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %11 = call i32 @uip_netif_setipaddr(%struct.uip_netif* %9, %struct.uip_ip_addr* %10)
  %12 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %13 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %14 = call i32 @uip_netif_setnetmask(%struct.uip_netif* %12, %struct.uip_ip_addr* %13)
  %15 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %16 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %8, align 8
  %17 = call i32 @uip_netif_setgw(%struct.uip_netif* %15, %struct.uip_ip_addr* %16)
  ret void
}

declare dso_local i32 @uip_netif_setipaddr(%struct.uip_netif*, %struct.uip_ip_addr*) #1

declare dso_local i32 @uip_netif_setnetmask(%struct.uip_netif*, %struct.uip_ip_addr*) #1

declare dso_local i32 @uip_netif_setgw(%struct.uip_netif*, %struct.uip_ip_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
