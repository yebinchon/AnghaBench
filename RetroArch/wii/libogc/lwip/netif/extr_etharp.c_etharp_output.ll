; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/extr_etharp.c_etharp_output.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/extr_etharp.c_etharp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.netif = type { i64, i32 (%struct.netif*, %struct.pbuf*)*, i64, %struct.ip_addr, i32, i32 }
%struct.ip_addr = type { i64 }
%struct.pbuf = type { %struct.eth_hdr* }
%struct.eth_hdr = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.eth_addr = type { i32* }

@ETHARP_DEBUG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"etharp_output: could not allocate room for header.\0A\00", align 1
@link = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ERR_BUF = common dso_local global i32 0, align 4
@ethbroadcast = common dso_local global i32 0, align 4
@ERR_RTE = common dso_local global i32 0, align 4
@ETHTYPE_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etharp_output(%struct.netif* %0, %struct.ip_addr* %1, %struct.pbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.ip_addr*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca %struct.eth_addr*, align 8
  %9 = alloca %struct.eth_addr*, align 8
  %10 = alloca %struct.eth_addr, align 8
  %11 = alloca %struct.eth_hdr*, align 8
  %12 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %5, align 8
  store %struct.ip_addr* %1, %struct.ip_addr** %6, align 8
  store %struct.pbuf* %2, %struct.pbuf** %7, align 8
  %13 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %14 = call i64 @pbuf_header(%struct.pbuf* %13, i32 24)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @ETHARP_DEBUG, align 4
  %18 = load i32, i32* @DBG_TRACE, align 4
  %19 = or i32 %17, %18
  %20 = or i32 %19, 2
  %21 = call i32 @LWIP_DEBUGF(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @link, i32 0, i32 0), align 4
  %23 = call i32 @LINK_STATS_INC(i32 %22)
  %24 = load i32, i32* @ERR_BUF, align 4
  store i32 %24, i32* %4, align 4
  br label %140

25:                                               ; preds = %3
  store %struct.eth_addr* null, %struct.eth_addr** %8, align 8
  %26 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %27 = load %struct.netif*, %struct.netif** %5, align 8
  %28 = call i64 @ip_addr_isbroadcast(%struct.ip_addr* %26, %struct.netif* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.eth_addr* bitcast (i32* @ethbroadcast to %struct.eth_addr*), %struct.eth_addr** %8, align 8
  br label %87

31:                                               ; preds = %25
  %32 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %33 = call i64 @ip_addr_ismulticast(%struct.ip_addr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 94, i32* %44, align 4
  %45 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %46 = call i32 @ip4_addr2(%struct.ip_addr* %45)
  %47 = and i32 %46, 127
  %48 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %52 = call i32 @ip4_addr3(%struct.ip_addr* %51)
  %53 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %57 = call i32 @ip4_addr4(%struct.ip_addr* %56)
  %58 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %10, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32 %57, i32* %60, align 4
  store %struct.eth_addr* %10, %struct.eth_addr** %8, align 8
  br label %86

61:                                               ; preds = %31
  %62 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %63 = load %struct.netif*, %struct.netif** %5, align 8
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %63, i32 0, i32 5
  %65 = load %struct.netif*, %struct.netif** %5, align 8
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %65, i32 0, i32 4
  %67 = call i32 @ip_addr_netcmp(%struct.ip_addr* %62, i32* %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61
  %70 = load %struct.netif*, %struct.netif** %5, align 8
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.netif*, %struct.netif** %5, align 8
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %76, i32 0, i32 3
  store %struct.ip_addr* %77, %struct.ip_addr** %6, align 8
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @ERR_RTE, align 4
  store i32 %79, i32* %4, align 4
  br label %140

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.netif*, %struct.netif** %5, align 8
  %83 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %84 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %85 = call i32 @etharp_query(%struct.netif* %82, %struct.ip_addr* %83, %struct.pbuf* %84)
  store i32 %85, i32* %4, align 4
  br label %140

86:                                               ; preds = %35
  br label %87

87:                                               ; preds = %86, %30
  %88 = load %struct.netif*, %struct.netif** %5, align 8
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.eth_addr*
  store %struct.eth_addr* %91, %struct.eth_addr** %9, align 8
  %92 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %93 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %92, i32 0, i32 0
  %94 = load %struct.eth_hdr*, %struct.eth_hdr** %93, align 8
  store %struct.eth_hdr* %94, %struct.eth_hdr** %11, align 8
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %126, %87
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.netif*, %struct.netif** %5, align 8
  %98 = getelementptr inbounds %struct.netif, %struct.netif* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %95
  %102 = load %struct.eth_addr*, %struct.eth_addr** %8, align 8
  %103 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8
  %109 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.eth_addr*, %struct.eth_addr** %9, align 8
  %115 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8
  %121 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %101
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  br label %95

129:                                              ; preds = %95
  %130 = load i32, i32* @ETHTYPE_IP, align 4
  %131 = call i32 @htons(i32 %130)
  %132 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8
  %133 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.netif*, %struct.netif** %5, align 8
  %135 = getelementptr inbounds %struct.netif, %struct.netif* %134, i32 0, i32 1
  %136 = load i32 (%struct.netif*, %struct.pbuf*)*, i32 (%struct.netif*, %struct.pbuf*)** %135, align 8
  %137 = load %struct.netif*, %struct.netif** %5, align 8
  %138 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %139 = call i32 %136(%struct.netif* %137, %struct.pbuf* %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %129, %81, %78, %16
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @pbuf_header(%struct.pbuf*, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LINK_STATS_INC(i32) #1

declare dso_local i64 @ip_addr_isbroadcast(%struct.ip_addr*, %struct.netif*) #1

declare dso_local i64 @ip_addr_ismulticast(%struct.ip_addr*) #1

declare dso_local i32 @ip4_addr2(%struct.ip_addr*) #1

declare dso_local i32 @ip4_addr3(%struct.ip_addr*) #1

declare dso_local i32 @ip4_addr4(%struct.ip_addr*) #1

declare dso_local i32 @ip_addr_netcmp(%struct.ip_addr*, i32*, i32*) #1

declare dso_local i32 @etharp_query(%struct.netif*, %struct.ip_addr*, %struct.pbuf*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
