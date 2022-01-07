; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_ipin.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_ipin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32, i32 }
%struct.uip_pbuf = type { %struct.uip_ethip_hdr* }
%struct.uip_ethip_hdr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_arp_ipin(%struct.uip_netif* %0, %struct.uip_pbuf* %1) #0 {
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca %struct.uip_pbuf*, align 8
  %5 = alloca %struct.uip_ethip_hdr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  store %struct.uip_pbuf* %1, %struct.uip_pbuf** %4, align 8
  %6 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %7 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %6, i32 0, i32 0
  %8 = load %struct.uip_ethip_hdr*, %struct.uip_ethip_hdr** %7, align 8
  store %struct.uip_ethip_hdr* %8, %struct.uip_ethip_hdr** %5, align 8
  %9 = load %struct.uip_ethip_hdr*, %struct.uip_ethip_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.uip_ethip_hdr, %struct.uip_ethip_hdr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %13 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %12, i32 0, i32 1
  %14 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %15 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %14, i32 0, i32 0
  %16 = call i32 @ip_addr_netcmp(i32* %11, i32* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %21 = load %struct.uip_ethip_hdr*, %struct.uip_ethip_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.uip_ethip_hdr, %struct.uip_ethip_hdr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.uip_ethip_hdr*, %struct.uip_ethip_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.uip_ethip_hdr, %struct.uip_ethip_hdr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @uip_arp_update(%struct.uip_netif* %20, i32* %23, i32* %26, i32 0)
  br label %28

28:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @ip_addr_netcmp(i32*, i32*, i32*) #1

declare dso_local i32 @uip_arp_update(%struct.uip_netif*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
