; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipoutput_if.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipoutput_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, %struct.uip_ip_hdr* }
%struct.uip_ip_hdr = type { %struct.uip_ip_addr, %struct.uip_ip_addr }
%struct.uip_ip_addr = type { i32 }
%struct.uip_netif = type { i64, i32 (%struct.uip_netif*, %struct.uip_pbuf*, %struct.uip_ip_addr*)*, %struct.uip_ip_addr }

@UIP_IP_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"uip_ipoutput_if: not enough room for IP header in pbuf.\0A\00", align 1
@UIP_ERR_BUF = common dso_local global i32 0, align 4
@UIP_IP_DF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_ipoutput_if(%struct.uip_pbuf* %0, %struct.uip_ip_addr* %1, %struct.uip_ip_addr* %2, i32 %3, i32 %4, i32 %5, %struct.uip_netif* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.uip_pbuf*, align 8
  %10 = alloca %struct.uip_ip_addr*, align 8
  %11 = alloca %struct.uip_ip_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uip_netif*, align 8
  %16 = alloca %struct.uip_ip_hdr*, align 8
  %17 = alloca i64, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %9, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %10, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.uip_netif* %6, %struct.uip_netif** %15, align 8
  store %struct.uip_ip_hdr* null, %struct.uip_ip_hdr** %16, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %11, align 8
  %19 = icmp ne %struct.uip_ip_addr* %18, null
  br i1 %19, label %20, label %85

20:                                               ; preds = %7
  %21 = load %struct.uip_pbuf*, %struct.uip_pbuf** %9, align 8
  %22 = load i32, i32* @UIP_IP_HLEN, align 4
  %23 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @UIP_ERR_BUF, align 4
  store i32 %27, i32* %8, align 4
  br label %99

28:                                               ; preds = %20
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %9, align 8
  %30 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %29, i32 0, i32 1
  %31 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %30, align 8
  store %struct.uip_ip_hdr* %31, %struct.uip_ip_hdr** %16, align 8
  %32 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @UIP_IPH_TTL_SET(%struct.uip_ip_hdr* %32, i32 %33)
  %35 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @UIP_IPH_PROTO_SET(%struct.uip_ip_hdr* %35, i32 %36)
  %38 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %39 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %38, i32 0, i32 0
  %40 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %11, align 8
  %41 = call i32 @ip_addr_set(%struct.uip_ip_addr* %39, %struct.uip_ip_addr* %40)
  %42 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %43 = load i32, i32* @UIP_IP_HLEN, align 4
  %44 = sdiv i32 %43, 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @UIP_IPH_VHLTOS_SET(%struct.uip_ip_hdr* %42, i32 4, i32 %44, i32 %45)
  %47 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %48 = load %struct.uip_pbuf*, %struct.uip_pbuf** %9, align 8
  %49 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @htons(i64 %50)
  %52 = call i32 @UIP_IPH_LEN_SET(%struct.uip_ip_hdr* %47, i32 %51)
  %53 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %54 = load i64, i64* @UIP_IP_DF, align 8
  %55 = call i32 @htons(i64 %54)
  %56 = call i32 @UIP_IPH_OFFSET_SET(%struct.uip_ip_hdr* %53, i32 %55)
  %57 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i32 @htons(i64 %58)
  %60 = call i32 @UIP_IPH_ID_SET(%struct.uip_ip_hdr* %57, i32 %59)
  %61 = load i64, i64* %17, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %17, align 8
  %63 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %64 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %28
  %67 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %68 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %67, i32 0, i32 1
  %69 = load %struct.uip_netif*, %struct.uip_netif** %15, align 8
  %70 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %69, i32 0, i32 2
  %71 = call i32 @ip_addr_set(%struct.uip_ip_addr* %68, %struct.uip_ip_addr* %70)
  br label %77

72:                                               ; preds = %28
  %73 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %74 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %73, i32 0, i32 1
  %75 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %76 = call i32 @ip_addr_set(%struct.uip_ip_addr* %74, %struct.uip_ip_addr* %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %79 = call i32 @UIP_IPH_CHKSUM_SET(%struct.uip_ip_hdr* %78, i32 0)
  %80 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %81 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %82 = load i32, i32* @UIP_IP_HLEN, align 4
  %83 = call i32 @uip_ipchksum(%struct.uip_ip_hdr* %81, i32 %82)
  %84 = call i32 @UIP_IPH_CHKSUM_SET(%struct.uip_ip_hdr* %80, i32 %83)
  br label %91

85:                                               ; preds = %7
  %86 = load %struct.uip_pbuf*, %struct.uip_pbuf** %9, align 8
  %87 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %86, i32 0, i32 1
  %88 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %87, align 8
  store %struct.uip_ip_hdr* %88, %struct.uip_ip_hdr** %16, align 8
  %89 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %16, align 8
  %90 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %89, i32 0, i32 0
  store %struct.uip_ip_addr* %90, %struct.uip_ip_addr** %11, align 8
  br label %91

91:                                               ; preds = %85, %77
  %92 = load %struct.uip_netif*, %struct.uip_netif** %15, align 8
  %93 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %92, i32 0, i32 1
  %94 = load i32 (%struct.uip_netif*, %struct.uip_pbuf*, %struct.uip_ip_addr*)*, i32 (%struct.uip_netif*, %struct.uip_pbuf*, %struct.uip_ip_addr*)** %93, align 8
  %95 = load %struct.uip_netif*, %struct.uip_netif** %15, align 8
  %96 = load %struct.uip_pbuf*, %struct.uip_pbuf** %9, align 8
  %97 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %11, align 8
  %98 = call i32 %94(%struct.uip_netif* %95, %struct.uip_pbuf* %96, %struct.uip_ip_addr* %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %91, %25
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i64 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i32 @UIP_IPH_TTL_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @UIP_IPH_PROTO_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @ip_addr_set(%struct.uip_ip_addr*, %struct.uip_ip_addr*) #1

declare dso_local i32 @UIP_IPH_VHLTOS_SET(%struct.uip_ip_hdr*, i32, i32, i32) #1

declare dso_local i32 @UIP_IPH_LEN_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @UIP_IPH_OFFSET_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @UIP_IPH_ID_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i64 @ip_addr_isany(%struct.uip_ip_addr*) #1

declare dso_local i32 @UIP_IPH_CHKSUM_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @uip_ipchksum(%struct.uip_ip_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
