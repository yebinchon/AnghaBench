; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipaddr_isbroadcast.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipaddr_isbroadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_netif = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ipaddr_broadcast = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ipaddr_any = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UIP_NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_ipaddr_isbroadcast(%struct.uip_ip_addr* %0, %struct.uip_netif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uip_ip_addr*, align 8
  %5 = alloca %struct.uip_netif*, align 8
  store %struct.uip_ip_addr* %0, %struct.uip_ip_addr** %4, align 8
  store %struct.uip_netif* %1, %struct.uip_netif** %5, align 8
  %6 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %7 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipaddr_broadcast, i32 0, i32 0), align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %13 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipaddr_any, i32 0, i32 0), align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %64

18:                                               ; preds = %11
  %19 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %20 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UIP_NETIF_FLAG_BROADCAST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %28 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %31 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %64

36:                                               ; preds = %26
  %37 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %38 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %39 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %38, i32 0, i32 2
  %40 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %41 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %40, i32 0, i32 1
  %42 = call i64 @ip_addr_netcmp(%struct.uip_ip_addr* %37, %struct.TYPE_7__* %39, %struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %46 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %49 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %47, %52
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipaddr_broadcast, i32 0, i32 0), align 4
  %55 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %56 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %54, %59
  %61 = icmp eq i32 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %44, %36
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %35, %25, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ip_addr_netcmp(%struct.uip_ip_addr*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
