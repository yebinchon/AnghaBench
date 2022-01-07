; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_out.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i64, i32 (%struct.uip_netif*, %struct.uip_pbuf*)*, i64, %struct.uip_ip_addr, i32, i32 }
%struct.uip_ip_addr = type { i64 }
%struct.uip_pbuf = type { %struct.uip_eth_hdr* }
%struct.uip_eth_hdr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.uip_eth_addr = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"uip_arp_out: could not allocate room for header.\0A\00", align 1
@UIP_ERR_BUF = common dso_local global i32 0, align 4
@ethbroadcast = common dso_local global i32 0, align 4
@UIP_ERR_RTE = common dso_local global i32 0, align 4
@UIP_ETHTYPE_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_arp_out(%struct.uip_netif* %0, %struct.uip_ip_addr* %1, %struct.uip_pbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uip_netif*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  %7 = alloca %struct.uip_pbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uip_eth_addr*, align 8
  %10 = alloca %struct.uip_eth_addr*, align 8
  %11 = alloca %struct.uip_eth_addr, align 8
  %12 = alloca %struct.uip_eth_hdr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %5, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %6, align 8
  store %struct.uip_pbuf* %2, %struct.uip_pbuf** %7, align 8
  %13 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %14 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %13, i32 24)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @UIP_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @UIP_ERR_BUF, align 4
  store i32 %18, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  store %struct.uip_eth_addr* null, %struct.uip_eth_addr** %9, align 8
  %20 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %21 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %22 = call i64 @ip_addr_isbroadcast(%struct.uip_ip_addr* %20, %struct.uip_netif* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.uip_eth_addr* bitcast (i32* @ethbroadcast to %struct.uip_eth_addr*), %struct.uip_eth_addr** %9, align 8
  br label %81

25:                                               ; preds = %19
  %26 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %27 = call i64 @ip_addr_ismulticast(%struct.uip_ip_addr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 94, i32* %38, align 4
  %39 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %40 = call i32 @ip4_addr2(%struct.uip_ip_addr* %39)
  %41 = and i32 %40, 127
  %42 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %46 = call i32 @ip4_addr3(%struct.uip_ip_addr* %45)
  %47 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %46, i32* %49, align 4
  %50 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %51 = call i32 @ip4_addr4(%struct.uip_ip_addr* %50)
  %52 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %11, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %51, i32* %54, align 4
  store %struct.uip_eth_addr* %11, %struct.uip_eth_addr** %9, align 8
  br label %80

55:                                               ; preds = %25
  %56 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %57 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %58 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %57, i32 0, i32 5
  %59 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %60 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %59, i32 0, i32 4
  %61 = call i32 @ip_addr_netcmp(%struct.uip_ip_addr* %56, i32* %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %55
  %64 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %65 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %71 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %70, i32 0, i32 3
  store %struct.uip_ip_addr* %71, %struct.uip_ip_addr** %6, align 8
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @UIP_ERR_RTE, align 4
  store i32 %73, i32* %4, align 4
  br label %134

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %77 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %78 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %79 = call i32 @uip_arp_arpquery(%struct.uip_netif* %76, %struct.uip_ip_addr* %77, %struct.uip_pbuf* %78)
  store i32 %79, i32* %4, align 4
  br label %134

80:                                               ; preds = %29
  br label %81

81:                                               ; preds = %80, %24
  %82 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %83 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.uip_eth_addr*
  store %struct.uip_eth_addr* %85, %struct.uip_eth_addr** %10, align 8
  %86 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %87 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %86, i32 0, i32 0
  %88 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %87, align 8
  store %struct.uip_eth_hdr* %88, %struct.uip_eth_hdr** %12, align 8
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %120, %81
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %92 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %89
  %96 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %9, align 8
  %97 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %103 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %10, align 8
  %109 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %115 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %95
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %89

123:                                              ; preds = %89
  %124 = load i32, i32* @UIP_ETHTYPE_IP, align 4
  %125 = call i32 @htons(i32 %124)
  %126 = load %struct.uip_eth_hdr*, %struct.uip_eth_hdr** %12, align 8
  %127 = getelementptr inbounds %struct.uip_eth_hdr, %struct.uip_eth_hdr* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %129 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %128, i32 0, i32 1
  %130 = load i32 (%struct.uip_netif*, %struct.uip_pbuf*)*, i32 (%struct.uip_netif*, %struct.uip_pbuf*)** %129, align 8
  %131 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %132 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %133 = call i32 %130(%struct.uip_netif* %131, %struct.uip_pbuf* %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %123, %75, %72, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i64 @ip_addr_isbroadcast(%struct.uip_ip_addr*, %struct.uip_netif*) #1

declare dso_local i64 @ip_addr_ismulticast(%struct.uip_ip_addr*) #1

declare dso_local i32 @ip4_addr2(%struct.uip_ip_addr*) #1

declare dso_local i32 @ip4_addr3(%struct.uip_ip_addr*) #1

declare dso_local i32 @ip4_addr4(%struct.uip_ip_addr*) #1

declare dso_local i32 @ip_addr_netcmp(%struct.uip_ip_addr*, i32*, i32*) #1

declare dso_local i32 @uip_arp_arpquery(%struct.uip_netif*, %struct.uip_ip_addr*, %struct.uip_pbuf*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
