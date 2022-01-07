; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_icmp.c_uip_icmpinput.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_icmp.c_uip_icmpinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32, %struct.uip_ip_hdr* }
%struct.uip_ip_hdr = type { %struct.TYPE_4__, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.uip_netif = type { i32 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_icmp_echo_hdr = type { %struct.TYPE_4__, i32, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [37 x i8] c"uip_icmpinput: short ICMP received.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"uip_icmpinput: Not echoing to broadcast pings.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"uip_icmpinput: bad ICMP echo received.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"uip_icmpinput: checksum failed for received ICMP echo.\0A\00", align 1
@UIP_ICMP_ER = common dso_local global i32 0, align 4
@UIP_PROTO_ICMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"uip_icmpinput: ICMP type/code not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_icmpinput(%struct.uip_pbuf* %0, %struct.uip_netif* %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uip_ip_addr, align 4
  %8 = alloca %struct.uip_ip_hdr*, align 8
  %9 = alloca %struct.uip_icmp_echo_hdr*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store %struct.uip_netif* %1, %struct.uip_netif** %4, align 8
  %10 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %11 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %10, i32 0, i32 1
  %12 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %11, align 8
  store %struct.uip_ip_hdr* %12, %struct.uip_ip_hdr** %8, align 8
  %13 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %14 = call i32 @UIP_IPH_HL(%struct.uip_ip_hdr* %13)
  %15 = mul nsw i32 %14, 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %23 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %2
  %28 = call i32 @UIP_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %30 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %29)
  br label %132

31:                                               ; preds = %21
  %32 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %33 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %32, i32 0, i32 1
  %34 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %33, align 8
  %35 = bitcast %struct.uip_ip_hdr* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %127 [
    i32 128, label %38
  ]

38:                                               ; preds = %31
  %39 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %40 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %39, i32 0, i32 2
  %41 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %42 = call i32 @ip_addr_isbroadcast(%struct.TYPE_5__* %40, %struct.uip_netif* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %45, i32 0, i32 2
  %47 = call i32 @ip_addr_ismulticast(%struct.TYPE_5__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %38
  %50 = call i32 @UIP_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %52 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %51)
  br label %132

53:                                               ; preds = %44
  %54 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %55 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 12
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 @UIP_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %62 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %61)
  br label %132

63:                                               ; preds = %53
  %64 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %65 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %64, i32 0, i32 1
  %66 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %65, align 8
  %67 = bitcast %struct.uip_ip_hdr* %66 to %struct.uip_icmp_echo_hdr*
  store %struct.uip_icmp_echo_hdr* %67, %struct.uip_icmp_echo_hdr** %9, align 8
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %69 = call i32 @uip_ipchksum_pbuf(%struct.uip_pbuf* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = call i32 @UIP_LOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %74 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %73)
  br label %132

75:                                               ; preds = %63
  %76 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %77 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %86 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %7, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %91 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.uip_icmp_echo_hdr*, %struct.uip_icmp_echo_hdr** %9, align 8
  %94 = bitcast %struct.uip_icmp_echo_hdr* %93 to %struct.uip_ip_hdr*
  %95 = load i32, i32* @UIP_ICMP_ER, align 4
  %96 = call i32 @UIP_ICMPH_TYPE_SET(%struct.uip_ip_hdr* %94, i32 %95)
  %97 = load %struct.uip_icmp_echo_hdr*, %struct.uip_icmp_echo_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.uip_icmp_echo_hdr, %struct.uip_icmp_echo_hdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @htons(i32 32767)
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %75
  %103 = call i32 @htons(i32 32768)
  %104 = add nsw i32 %103, 1
  %105 = load %struct.uip_icmp_echo_hdr*, %struct.uip_icmp_echo_hdr** %9, align 8
  %106 = getelementptr inbounds %struct.uip_icmp_echo_hdr, %struct.uip_icmp_echo_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %115

109:                                              ; preds = %75
  %110 = call i32 @htons(i32 32768)
  %111 = load %struct.uip_icmp_echo_hdr*, %struct.uip_icmp_echo_hdr** %9, align 8
  %112 = getelementptr inbounds %struct.uip_icmp_echo_hdr, %struct.uip_icmp_echo_hdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %102
  %116 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %116, i32 %117)
  %119 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %120 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %121 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %120, i32 0, i32 0
  %122 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %8, align 8
  %123 = call i32 @UIP_IPH_TTL(%struct.uip_ip_hdr* %122)
  %124 = load i32, i32* @UIP_PROTO_ICMP, align 4
  %125 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %126 = call i32 @uip_ipoutput_if(%struct.uip_pbuf* %119, %struct.TYPE_4__* %121, i32* null, i32 %123, i32 0, i32 %124, %struct.uip_netif* %125)
  br label %129

127:                                              ; preds = %31
  %128 = call i32 @UIP_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %115
  %130 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %131 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %130)
  br label %132

132:                                              ; preds = %129, %71, %59, %49, %27
  ret void
}

declare dso_local i32 @UIP_IPH_HL(%struct.uip_ip_hdr*) #1

declare dso_local i64 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i32 @ip_addr_isbroadcast(%struct.TYPE_5__*, %struct.uip_netif*) #1

declare dso_local i32 @ip_addr_ismulticast(%struct.TYPE_5__*) #1

declare dso_local i32 @uip_ipchksum_pbuf(%struct.uip_pbuf*) #1

declare dso_local i32 @UIP_ICMPH_TYPE_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @uip_ipoutput_if(%struct.uip_pbuf*, %struct.TYPE_4__*, i32*, i32, i32, i32, %struct.uip_netif*) #1

declare dso_local i32 @UIP_IPH_TTL(%struct.uip_ip_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
