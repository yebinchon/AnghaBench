; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_arpin.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_arpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i64, i32 (%struct.uip_netif*, %struct.uip_pbuf*)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.uip_eth_addr = type { i32* }
%struct.uip_pbuf = type { i32, %struct.uip_arp_hdr* }
%struct.uip_arp_hdr = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_11__, %struct.uip_ip_addr2, %struct.uip_ip_addr2 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.uip_ip_addr2 = type { i32 }
%struct.uip_ip_addr = type { i32 }

@ARP_TRY_HARD = common dso_local global i32 0, align 4
@ARP_HWTYPE_ETH = common dso_local global i32 0, align 4
@UIP_ETHTYPE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"uip_arp_arpin: ip packet not for us.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"uip_arp_arpin: ARP unknown opcode type.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_arp_arpin(%struct.uip_netif* %0, %struct.uip_eth_addr* %1, %struct.uip_pbuf* %2) #0 {
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca %struct.uip_eth_addr*, align 8
  %6 = alloca %struct.uip_pbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uip_ip_addr, align 4
  %10 = alloca %struct.uip_ip_addr, align 4
  %11 = alloca %struct.uip_arp_hdr*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %4, align 8
  store %struct.uip_eth_addr* %1, %struct.uip_eth_addr** %5, align 8
  store %struct.uip_pbuf* %2, %struct.uip_pbuf** %6, align 8
  %12 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %13 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 56
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %19 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %18)
  br label %179

20:                                               ; preds = %3
  %21 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %22 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %21, i32 0, i32 1
  %23 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %22, align 8
  store %struct.uip_arp_hdr* %23, %struct.uip_arp_hdr** %11, align 8
  %24 = bitcast %struct.uip_ip_addr* %9 to i8*
  %25 = bitcast i8* %24 to %struct.uip_ip_addr2*
  %26 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %26, i32 0, i32 6
  %28 = bitcast %struct.uip_ip_addr2* %25 to i8*
  %29 = bitcast %struct.uip_ip_addr2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 8 %29, i64 4, i1 false)
  %30 = bitcast %struct.uip_ip_addr* %10 to i8*
  %31 = bitcast i8* %30 to %struct.uip_ip_addr2*
  %32 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %32, i32 0, i32 7
  %34 = bitcast %struct.uip_ip_addr2* %31 to i8*
  %35 = bitcast %struct.uip_ip_addr2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %37 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %46

42:                                               ; preds = %20
  %43 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %44 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %43, i32 0, i32 2
  %45 = call i64 @ip_addr_cmp(%struct.uip_ip_addr* %10, %struct.TYPE_12__* %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %51 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %51, i32 0, i32 5
  %53 = load i32, i32* @ARP_TRY_HARD, align 4
  %54 = call i32 @uip_arp_update(%struct.uip_netif* %50, %struct.uip_ip_addr* %9, %struct.TYPE_11__* %52, i32 %53)
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %57 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %57, i32 0, i32 5
  %59 = call i32 @uip_arp_update(%struct.uip_netif* %56, %struct.uip_ip_addr* %9, %struct.TYPE_11__* %58, i32 0)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %62 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @htons(i32 %63)
  switch i32 %64, label %174 [
    i32 128, label %65
    i32 129, label %173
  ]

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %170

68:                                               ; preds = %65
  %69 = call i32 @htons(i32 129)
  %70 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %71 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %72, i32 0, i32 7
  %74 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %75 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %74, i32 0, i32 6
  %76 = bitcast %struct.uip_ip_addr2* %73 to i8*
  %77 = bitcast %struct.uip_ip_addr2* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 8 %77, i64 4, i1 false)
  %78 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %79 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %78, i32 0, i32 6
  %80 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %81 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %80, i32 0, i32 2
  %82 = bitcast %struct.TYPE_12__* %81 to i8*
  %83 = bitcast i8* %82 to %struct.uip_ip_addr2*
  %84 = bitcast %struct.uip_ip_addr2* %79 to i8*
  %85 = bitcast %struct.uip_ip_addr2* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 4 %85, i64 4, i1 false)
  store i64 0, i64* %7, align 8
  br label %86

86:                                               ; preds = %145, %68
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %89 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %148

92:                                               ; preds = %86
  %93 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %101 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %5, align 8
  %107 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %113 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %119 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %126 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load %struct.uip_eth_addr*, %struct.uip_eth_addr** %5, align 8
  %133 = getelementptr inbounds %struct.uip_eth_addr, %struct.uip_eth_addr* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %139 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %137, i32* %144, align 4
  br label %145

145:                                              ; preds = %92
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %7, align 8
  br label %86

148:                                              ; preds = %86
  %149 = load i32, i32* @ARP_HWTYPE_ETH, align 4
  %150 = call i32 @htons(i32 %149)
  %151 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %152 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %154 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %155 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @ARPH_HWLEN_SET(%struct.uip_arp_hdr* %153, i64 %156)
  %158 = load i32, i32* @UIP_ETHTYPE_IP, align 4
  %159 = call i32 @htons(i32 %158)
  %160 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %161 = getelementptr inbounds %struct.uip_arp_hdr, %struct.uip_arp_hdr* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.uip_arp_hdr*, %struct.uip_arp_hdr** %11, align 8
  %163 = call i32 @ARPH_PROTOLEN_SET(%struct.uip_arp_hdr* %162, i32 4)
  %164 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %165 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %164, i32 0, i32 1
  %166 = load i32 (%struct.uip_netif*, %struct.uip_pbuf*)*, i32 (%struct.uip_netif*, %struct.uip_pbuf*)** %165, align 8
  %167 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %168 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %169 = call i32 %166(%struct.uip_netif* %167, %struct.uip_pbuf* %168)
  br label %172

170:                                              ; preds = %65
  %171 = call i32 @UIP_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %148
  br label %176

173:                                              ; preds = %60
  br label %176

174:                                              ; preds = %60
  %175 = call i32 @UIP_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %173, %172
  %177 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %178 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %177)
  br label %179

179:                                              ; preds = %176, %17
  ret void
}

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ip_addr_cmp(%struct.uip_ip_addr*, %struct.TYPE_12__*) #1

declare dso_local i32 @uip_arp_update(%struct.uip_netif*, %struct.uip_ip_addr*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ARPH_HWLEN_SET(%struct.uip_arp_hdr*, i64) #1

declare dso_local i32 @ARPH_PROTOLEN_SET(%struct.uip_arp_hdr*, i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
