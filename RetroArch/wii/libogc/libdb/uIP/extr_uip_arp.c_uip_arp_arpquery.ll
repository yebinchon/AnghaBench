; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_arpquery.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_arpquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.uip_netif = type { i64, i64 (%struct.uip_netif*, %struct.uip_pbuf*)*, i64 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_pbuf = type { %struct.uip_eth_hdr* }
%struct.uip_eth_hdr = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.uip_eth_addr = type { i32* }

@UIP_ERR_MEM = common dso_local global i64 0, align 8
@UIP_ERR_ARG = common dso_local global i64 0, align 8
@ARP_TRY_HARD = common dso_local global i32 0, align 4
@arp_table = common dso_local global %struct.TYPE_8__* null, align 8
@ARP_STATE_EMPTY = common dso_local global i64 0, align 8
@ARP_STATE_PENDING = common dso_local global i64 0, align 8
@ARP_STATE_STABLE = common dso_local global i64 0, align 8
@UIP_ETHTYPE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"uip_arp_query: Ethernet destination address unknown, queueing disabled, packet dropped.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uip_arp_arpquery(%struct.uip_netif* %0, %struct.uip_ip_addr* %1, %struct.uip_pbuf* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.uip_netif*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  %7 = alloca %struct.uip_pbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uip_eth_addr*, align 8
  %12 = alloca %struct.uip_eth_hdr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %5, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %6, align 8
  store %struct.uip_pbuf* %2, %struct.uip_pbuf** %7, align 8
  %13 = load i64, i64* @UIP_ERR_MEM, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %15 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.uip_eth_addr*
  store %struct.uip_eth_addr* %17, %struct.uip_eth_addr** %11, align 8
  %18 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %19 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %20 = call i64 @ip_addr_isbroadcast(%struct.uip_ip_addr* %18, %struct.uip_netif* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %24 = call i64 @ip_addr_ismulticast(%struct.uip_ip_addr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %28 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22, %3
  %31 = load i64, i64* @UIP_ERR_ARG, align 8
  store i64 %31, i64* %4, align 8
  br label %146

32:                                               ; preds = %26
  %33 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %34 = load i32, i32* @ARP_TRY_HARD, align 4
  %35 = call i64 @uip_arp_findentry(%struct.uip_ip_addr* %33, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %146

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ARP_STATE_EMPTY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i64, i64* @ARP_STATE_PENDING, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ARP_STATE_PENDING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %64 = icmp eq %struct.uip_pbuf* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %54
  %66 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %67 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %68 = call i64 @uip_arp_arprequest(%struct.uip_netif* %66, %struct.uip_ip_addr* %67)
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %71 = icmp ne %struct.uip_pbuf* %70, null
  br i1 %71, label %72, label %144

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ARP_STATE_STABLE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %132

80:                                               ; preds = %72
  %81 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %82 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %81, i32 0, i32 0
  %83 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %82, align 8
  store %struct.uip_eth_hdr* %83, %struct.uip_eth_hdr** %12, align 8
  store i64 0, i64* %9, align 8
  br label %84

84:                                               ; preds = %118, %80
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %87 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %101 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %11, align 8
  %107 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %113 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %90
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %9, align 8
  br label %84

121:                                              ; preds = %84
  %122 = load i32, i32* @UIP_ETHTYPE_IP, align 4
  %123 = call i32 @htons(i32 %122)
  %124 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %125 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %127 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %126, i32 0, i32 1
  %128 = load i64 (%struct.uip_netif*, %struct.uip_pbuf*)*, i64 (%struct.uip_netif*, %struct.uip_pbuf*)** %127, align 8
  %129 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %130 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %131 = call i64 %128(%struct.uip_netif* %129, %struct.uip_pbuf* %130)
  store i64 %131, i64* %10, align 8
  br label %143

132:                                              ; preds = %72
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arp_table, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ARP_STATE_PENDING, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = call i32 @UIP_LOG(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %132
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143, %69
  %145 = load i64, i64* %10, align 8
  store i64 %145, i64* %4, align 8
  br label %146

146:                                              ; preds = %144, %38, %30
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local i64 @ip_addr_isbroadcast(%struct.uip_ip_addr*, %struct.uip_netif*) #1

declare dso_local i64 @ip_addr_ismulticast(%struct.uip_ip_addr*) #1

declare dso_local i64 @ip_addr_isany(%struct.uip_ip_addr*) #1

declare dso_local i64 @uip_arp_findentry(%struct.uip_ip_addr*, i32) #1

declare dso_local i64 @uip_arp_arprequest(%struct.uip_netif*, %struct.uip_ip_addr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
