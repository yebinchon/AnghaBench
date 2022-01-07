; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.uip_netif = type { i64 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_eth_addr = type { i32* }

@UIP_ERR_ARG = common dso_local global i64 0, align 8
@arp_table = common dso_local global %struct.TYPE_4__* null, align 8
@ARP_STATE_STABLE = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uip_netif*, %struct.uip_ip_addr*, %struct.uip_eth_addr*, i32)* @uip_arp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uip_arp_update(%struct.uip_netif* %0, %struct.uip_ip_addr* %1, %struct.uip_eth_addr* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.uip_netif*, align 8
  %7 = alloca %struct.uip_ip_addr*, align 8
  %8 = alloca %struct.uip_eth_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %6, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %7, align 8
  store %struct.uip_eth_addr* %2, %struct.uip_eth_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %13 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %17 = load %struct.uip_netif*, %struct.uip_netif** %6, align 8
  %18 = call i64 @ip_addr_isbroadcast(%struct.uip_ip_addr* %16, %struct.uip_netif* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %22 = call i64 @ip_addr_ismulticast(%struct.uip_ip_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %15, %4
  %25 = load i64, i64* @UIP_ERR_ARG, align 8
  store i64 %25, i64* %5, align 8
  br label %70

26:                                               ; preds = %20
  %27 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @uip_arp_findentry(%struct.uip_ip_addr* %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %70

34:                                               ; preds = %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arp_table, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @ARP_STATE_STABLE, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arp_table, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %65, %34
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.uip_netif*, %struct.uip_netif** %6, align 8
  %47 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %8, align 8
  %52 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arp_table, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %56, i32* %64, align 4
  br label %65

65:                                               ; preds = %50
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %32, %24
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @ip_addr_isany(%struct.uip_ip_addr*) #1

declare dso_local i64 @ip_addr_isbroadcast(%struct.uip_ip_addr*, %struct.uip_netif*) #1

declare dso_local i64 @ip_addr_ismulticast(%struct.uip_ip_addr*) #1

declare dso_local i64 @uip_arp_findentry(%struct.uip_ip_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
