; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { %struct.uip_eth_hdr* }
%struct.uip_eth_hdr = type { i32 }
%struct.uip_netif = type { i32 (%struct.uip_pbuf*, %struct.uip_netif*)*, i64 }
%struct.bba_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uip_pbuf*, %struct.uip_netif*)* @bba_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bba_process(%struct.uip_pbuf* %0, %struct.uip_netif* %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca %struct.uip_eth_hdr*, align 8
  %6 = alloca %struct.bba_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store %struct.uip_netif* %1, %struct.uip_netif** %4, align 8
  store %struct.uip_eth_hdr* null, %struct.uip_eth_hdr** %5, align 8
  %8 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %9 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bba_priv*
  store %struct.bba_priv* %11, %struct.bba_priv** %6, align 8
  store i32 4, i32* %7, align 4
  %12 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %13 = icmp ne %struct.uip_pbuf* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %16 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %15, i32 0, i32 0
  %17 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %16, align 8
  store %struct.uip_eth_hdr* %17, %struct.uip_eth_hdr** %5, align 8
  %18 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @htons(i32 %20)
  switch i32 %21, label %41 [
    i32 128, label %22
    i32 129, label %34
  ]

22:                                               ; preds = %14
  %23 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %25 = call i32 @uip_arp_ipin(%struct.uip_netif* %23, %struct.uip_pbuf* %24)
  %26 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %27 = call i32 @uip_pbuf_header(%struct.uip_pbuf* %26, i32 -4)
  %28 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %29 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %28, i32 0, i32 0
  %30 = load i32 (%struct.uip_pbuf*, %struct.uip_netif*)*, i32 (%struct.uip_pbuf*, %struct.uip_netif*)** %29, align 8
  %31 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %32 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %33 = call i32 %30(%struct.uip_pbuf* %31, %struct.uip_netif* %32)
  br label %44

34:                                               ; preds = %14
  %35 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %36 = load %struct.bba_priv*, %struct.bba_priv** %6, align 8
  %37 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %40 = call i32 @uip_arp_arpin(%struct.uip_netif* %35, i32 %38, %struct.uip_pbuf* %39)
  br label %44

41:                                               ; preds = %14
  %42 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %43 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %42)
  br label %44

44:                                               ; preds = %41, %34, %22
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @uip_arp_ipin(%struct.uip_netif*, %struct.uip_pbuf*) #1

declare dso_local i32 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @uip_arp_arpin(%struct.uip_netif*, i32, %struct.uip_pbuf*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
