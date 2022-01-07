; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_ethernetif.c_ethernetif_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_ethernetif.c_ethernetif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.netif = type { i32 (%struct.pbuf*, %struct.netif*)*, %struct.ethernetif* }
%struct.pbuf = type { %struct.eth_hdr* }
%struct.eth_hdr = type { i32 }
%struct.ethernetif = type { i32 }

@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif*)* @ethernetif_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethernetif_input(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.ethernetif*, align 8
  %4 = alloca %struct.eth_hdr*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.pbuf*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %7 = load %struct.netif*, %struct.netif** %2, align 8
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i32 0, i32 1
  %9 = load %struct.ethernetif*, %struct.ethernetif** %8, align 8
  store %struct.ethernetif* %9, %struct.ethernetif** %3, align 8
  %10 = load %struct.ethernetif*, %struct.ethernetif** %3, align 8
  %11 = call %struct.pbuf* @low_level_input(%struct.ethernetif* %10)
  store %struct.pbuf* %11, %struct.pbuf** %5, align 8
  %12 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %13 = icmp ne %struct.pbuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 0
  %18 = load %struct.eth_hdr*, %struct.eth_hdr** %17, align 8
  store %struct.eth_hdr* %18, %struct.eth_hdr** %4, align 8
  store %struct.pbuf* null, %struct.pbuf** %6, align 8
  %19 = load %struct.eth_hdr*, %struct.eth_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htons(i32 %21)
  switch i32 %22, label %42 [
    i32 128, label %23
    i32 129, label %35
  ]

23:                                               ; preds = %15
  %24 = load %struct.netif*, %struct.netif** %2, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %26 = call %struct.pbuf* @etharp_ip_input(%struct.netif* %24, %struct.pbuf* %25)
  store %struct.pbuf* %26, %struct.pbuf** %6, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %28 = call i32 @pbuf_header(%struct.pbuf* %27, i32 -14)
  %29 = load %struct.netif*, %struct.netif** %2, align 8
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %29, i32 0, i32 0
  %31 = load i32 (%struct.pbuf*, %struct.netif*)*, i32 (%struct.pbuf*, %struct.netif*)** %30, align 8
  %32 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %33 = load %struct.netif*, %struct.netif** %2, align 8
  %34 = call i32 %31(%struct.pbuf* %32, %struct.netif* %33)
  br label %45

35:                                               ; preds = %15
  %36 = load %struct.netif*, %struct.netif** %2, align 8
  %37 = load %struct.ethernetif*, %struct.ethernetif** %3, align 8
  %38 = getelementptr inbounds %struct.ethernetif, %struct.ethernetif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %41 = call %struct.pbuf* @etharp_arp_input(%struct.netif* %36, i32 %39, %struct.pbuf* %40)
  store %struct.pbuf* %41, %struct.pbuf** %6, align 8
  br label %45

42:                                               ; preds = %15
  %43 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %44 = call i32 @pbuf_free(%struct.pbuf* %43)
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  br label %45

45:                                               ; preds = %42, %35, %23
  %46 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %47 = icmp ne %struct.pbuf* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.ethernetif*, %struct.ethernetif** %3, align 8
  %50 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %51 = call i32 @low_level_output(%struct.ethernetif* %49, %struct.pbuf* %50)
  %52 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %53 = call i32 @pbuf_free(%struct.pbuf* %52)
  store %struct.pbuf* null, %struct.pbuf** %6, align 8
  br label %54

54:                                               ; preds = %14, %48, %45
  ret void
}

declare dso_local %struct.pbuf* @low_level_input(%struct.ethernetif*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.pbuf* @etharp_ip_input(%struct.netif*, %struct.pbuf*) #1

declare dso_local i32 @pbuf_header(%struct.pbuf*, i32) #1

declare dso_local %struct.pbuf* @etharp_arp_input(%struct.netif*, i32, %struct.pbuf*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @low_level_output(%struct.ethernetif*, %struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
