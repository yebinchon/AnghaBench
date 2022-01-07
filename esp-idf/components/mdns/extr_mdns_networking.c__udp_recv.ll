; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.udp_pcb* }
%struct.udp_pcb = type { i32 }
%struct.pbuf = type { i64, %struct.pbuf* }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_29__, %struct.TYPE_30__, i32, %struct.pbuf*, i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { %struct.TYPE_29__ }
%struct.TYPE_31__ = type { i32 }
%struct.ip_hdr = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.ip6_hdr = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.netif = type { %struct.TYPE_27__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@MDNS_IF_MAX = common dso_local global i64 0, align 8
@IPADDR_TYPE_V4 = common dso_local global i64 0, align 8
@MDNS_IP_PROTOCOL_V4 = common dso_local global i64 0, align 8
@UDP_HLEN = common dso_local global i64* null, align 8
@IP_HLEN = common dso_local global i32 0, align 4
@MDNS_IP_PROTOCOL_V6 = common dso_local global i64 0, align 8
@IP6_HLEN = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global %struct.TYPE_32__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.udp_pcb*, %struct.pbuf*, i64*, i32)* @_udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_udp_recv(i8* %0, %struct.udp_pcb* %1, %struct.pbuf* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pbuf*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.ip_hdr*, align 8
  %15 = alloca %struct.ip6_hdr*, align 8
  %16 = alloca %struct.netif*, align 8
  %17 = alloca %struct.udp_pcb*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.udp_pcb* %1, %struct.udp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %18

18:                                               ; preds = %223, %32, %5
  %19 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %20 = icmp ne %struct.pbuf* %19, null
  br i1 %20, label %21, label %224

21:                                               ; preds = %18
  %22 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  store %struct.pbuf* %22, %struct.pbuf** %12, align 8
  %23 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 1
  %25 = load %struct.pbuf*, %struct.pbuf** %24, align 8
  store %struct.pbuf* %25, %struct.pbuf** %8, align 8
  %26 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %26, i32 0, i32 1
  store %struct.pbuf* null, %struct.pbuf** %27, align 8
  %28 = call i64 @malloc(i32 88)
  %29 = inttoptr i64 %28 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %13, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %31 = icmp ne %struct.TYPE_28__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %34 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %35 = call i32 @pbuf_free(%struct.pbuf* %34)
  br label %18

36:                                               ; preds = %21
  %37 = load i64, i64* @MDNS_IF_MAX, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 5
  store %struct.pbuf* %40, %struct.pbuf** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 2
  %48 = load i64*, i64** %9, align 8
  %49 = call i32 @memcpy(%struct.TYPE_29__* %47, i64* %48, i32 8)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPADDR_TYPE_V4, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %36
  %64 = load i64, i64* @MDNS_IP_PROTOCOL_V4, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 5
  %69 = load %struct.pbuf*, %struct.pbuf** %68, align 8
  %70 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i64*
  %73 = load i64*, i64** @UDP_HLEN, align 8
  %74 = ptrtoint i64* %72 to i64
  %75 = ptrtoint i64* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = load i32, i32* @IP_HLEN, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = inttoptr i64 %80 to %struct.ip_hdr*
  store %struct.ip_hdr* %81, %struct.ip_hdr** %14, align 8
  %82 = load %struct.ip_hdr*, %struct.ip_hdr** %14, align 8
  %83 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 8
  br label %121

91:                                               ; preds = %36
  %92 = load i64, i64* @MDNS_IP_PROTOCOL_V6, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 5
  %97 = load %struct.pbuf*, %struct.pbuf** %96, align 8
  %98 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i64*
  %101 = load i64*, i64** @UDP_HLEN, align 8
  %102 = ptrtoint i64* %100 to i64
  %103 = ptrtoint i64* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 8
  %106 = load i32, i32* @IP6_HLEN, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = inttoptr i64 %108 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %109, %struct.ip6_hdr** %15, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  %115 = load %struct.ip6_hdr*, %struct.ip6_hdr** %15, align 8
  %116 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i64*
  %120 = call i32 @memcpy(%struct.TYPE_29__* %114, i64* %119, i32 16)
  br label %121

121:                                              ; preds = %91, %63
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 3
  %124 = call i32 @ip_addr_ismulticast(%struct.TYPE_30__* %123)
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  store %struct.netif* null, %struct.netif** %16, align 8
  store %struct.udp_pcb* null, %struct.udp_pcb** %17, align 8
  store i64 0, i64* %11, align 8
  br label %127

127:                                              ; preds = %199, %121
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @MDNS_IF_MAX, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %202

131:                                              ; preds = %127
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** @_mdns_server, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %137, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 0
  %144 = load %struct.udp_pcb*, %struct.udp_pcb** %143, align 8
  store %struct.udp_pcb* %144, %struct.udp_pcb** %17, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @_mdns_get_esp_netif(i64 %145)
  %147 = call %struct.netif* @esp_netif_get_netif_impl(i32 %146)
  store %struct.netif* %147, %struct.netif** %16, align 8
  %148 = load %struct.udp_pcb*, %struct.udp_pcb** %17, align 8
  %149 = icmp ne %struct.udp_pcb* %148, null
  br i1 %149, label %150, label %198

150:                                              ; preds = %131
  %151 = load %struct.netif*, %struct.netif** %16, align 8
  %152 = icmp ne %struct.netif* %151, null
  br i1 %152, label %153, label %198

153:                                              ; preds = %150
  %154 = load %struct.netif*, %struct.netif** %16, align 8
  %155 = call %struct.netif* (...) @ip_current_input_netif()
  %156 = icmp eq %struct.netif* %154, %155
  br i1 %156, label %157, label %198

157:                                              ; preds = %153
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IPADDR_TYPE_V4, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %157
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.netif*, %struct.netif** %16, align 8
  %172 = getelementptr inbounds %struct.netif, %struct.netif* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %170, %176
  %178 = load %struct.netif*, %struct.netif** %16, align 8
  %179 = getelementptr inbounds %struct.netif, %struct.netif* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.netif*, %struct.netif** %16, align 8
  %185 = getelementptr inbounds %struct.netif, %struct.netif* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %183, %189
  %191 = icmp ne i32 %177, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %164
  store %struct.udp_pcb* null, %struct.udp_pcb** %17, align 8
  br label %202

193:                                              ; preds = %164
  br label %194

194:                                              ; preds = %193, %157
  %195 = load i64, i64* %11, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  br label %202

198:                                              ; preds = %153, %150, %131
  store %struct.udp_pcb* null, %struct.udp_pcb** %17, align 8
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %11, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %11, align 8
  br label %127

202:                                              ; preds = %194, %192, %127
  %203 = load %struct.udp_pcb*, %struct.udp_pcb** %17, align 8
  %204 = icmp ne %struct.udp_pcb* %203, null
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** @_mdns_server, align 8
  %207 = icmp ne %struct.TYPE_32__* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** @_mdns_server, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %215 = call i64 @_mdns_send_rx_action(%struct.TYPE_28__* %214)
  %216 = load i64, i64* @ESP_OK, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %213, %208, %205, %202
  %219 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %220 = call i32 @pbuf_free(%struct.pbuf* %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %222 = call i32 @free(%struct.TYPE_28__* %221)
  br label %223

223:                                              ; preds = %218, %213
  br label %18

224:                                              ; preds = %18
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @memcpy(%struct.TYPE_29__*, i64*, i32) #1

declare dso_local i32 @ip_addr_ismulticast(%struct.TYPE_30__*) #1

declare dso_local %struct.netif* @esp_netif_get_netif_impl(i32) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local %struct.netif* @ip_current_input_netif(...) #1

declare dso_local i64 @_mdns_send_rx_action(%struct.TYPE_28__*) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
