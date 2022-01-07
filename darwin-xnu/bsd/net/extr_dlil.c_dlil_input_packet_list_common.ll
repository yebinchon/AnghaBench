; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_packet_list_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_packet_list_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*, i8*, i64*)*, i32, i32, i64, i32, i32* }
%struct.mbuf = type { i8*, i32, %struct.mbuf*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i64, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.if_proto = type { i64, %struct.ifnet* }
%struct.ether_header = type { i32 }

@DBG_FNC_DLIL_INPUT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IFNET_MODEL_INPUT_POLL_ON = common dso_local global i64 0, align 8
@if_rxpoll_interval_pkts = common dso_local global i32 0, align 4
@IFEF_RXPOLL = common dso_local global i32 0, align 4
@lo_ifp = common dso_local global %struct.ifnet* null, align 8
@PKTF_TS_VALID = common dso_local global i32 0, align 4
@PKTF_LOOP = common dso_local global i32 0, align 4
@PKTF_IFAINFO = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@ip6stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@ETHERTYPE_IPV6 = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@hwcksum_dbg = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PARTIAL = common dso_local global i32 0, align 4
@hwcksum_in_invalidated = common dso_local global i32 0, align 4
@clat_debug = common dso_local global i64 0, align 8
@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@CSUM_VLAN_TAG_VALID = common dso_local global i32 0, align 4
@M_PROMISC = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbuf*, i32, i64, i64)* @dlil_input_packet_list_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_input_packet_list_common(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.ifnet*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.if_proto*, align 8
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca %struct.mbuf**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.if_proto*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.ether_header, align 4
  %26 = alloca %struct.ether_header*, align 8
  %27 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %28, %struct.ifnet** %14, align 8
  store i8* null, i8** %15, align 8
  store %struct.if_proto* null, %struct.if_proto** %16, align 8
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  store %struct.mbuf** null, %struct.mbuf*** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* @DBG_FNC_DLIL_INPUT, align 4
  %30 = load i32, i32* @DBG_FUNC_START, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @KERNEL_DEBUG(i32 %31, i32 0, i32 0, i32 0, i32 0, i32 0)
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %5
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @IFNET_MODEL_INPUT_POLL_ON, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @if_rxpoll_interval_pkts, align 4
  store i32 %43, i32* %20, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %45, %42, %39, %35, %5
  br label %48

48:                                               ; preds = %504, %47
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = icmp ne %struct.mbuf* %49, null
  br i1 %50, label %51, label %505

51:                                               ; preds = %48
  store %struct.if_proto* null, %struct.if_proto** %21, align 8
  store i32 0, i32* %22, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %53 = icmp eq %struct.ifnet* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load %struct.ifnet*, %struct.ifnet** %57, align 8
  store %struct.ifnet* %58, %struct.ifnet** %14, align 8
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IFEF_RXPOLL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %20, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = srem i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %80 = call i32 @ifnet_poll(%struct.ifnet* %79)
  br label %81

81:                                               ; preds = %78, %72, %69, %66, %59
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %84 = call i32 @MBUF_INPUT_CHECK(%struct.mbuf* %82, %struct.ifnet* %83)
  %85 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 2
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  store %struct.mbuf* %87, %struct.mbuf** %13, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %89, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %15, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i8* null, i8** %96, align 8
  %97 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %98 = load %struct.ifnet*, %struct.ifnet** @lo_ifp, align 8
  %99 = icmp ne %struct.ifnet* %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %81
  %101 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %102 = call i32 @ifnet_is_attached(%struct.ifnet* %101, i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %106 = call i32 @m_freem(%struct.mbuf* %105)
  br label %467

107:                                              ; preds = %100
  store i32 1, i32* %22, align 4
  %108 = load i32, i32* @PKTF_TS_VALID, align 4
  store i32 %108, i32* %23, align 4
  br label %113

109:                                              ; preds = %81
  %110 = load i32, i32* @PKTF_LOOP, align 4
  %111 = load i32, i32* @PKTF_IFAINFO, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %109, %107
  %114 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %115 = load i32, i32* %23, align 4
  %116 = call i32 @m_classifier_init(%struct.mbuf* %114, i32 %115)
  %117 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %119 = call i32 @ifp_inc_traffic_class_in(%struct.ifnet* %117, %struct.mbuf* %118)
  %120 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %121 = call i32 @ifnet_lock_shared(%struct.ifnet* %120)
  %122 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 1
  %124 = load i32 (%struct.ifnet*, %struct.mbuf*, i8*, i64*)*, i32 (%struct.ifnet*, %struct.mbuf*, i8*, i64*)** %123, align 8
  %125 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %126 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 %124(%struct.ifnet* %125, %struct.mbuf* %126, i8* %127, i64* %12)
  store i32 %128, i32* %11, align 4
  %129 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %130 = call i32 @ifnet_lock_done(%struct.ifnet* %129)
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %113
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @EJUSTRETURN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %467

138:                                              ; preds = %133
  store i64 0, i64* %12, align 8
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 @pktap_input(%struct.ifnet* %140, i64 %141, %struct.mbuf* %142, i8* %143)
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @PF_INET, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %139
  %149 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %150 = call i64 @IS_INTF_CLAT46(%struct.ifnet* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %154 = call i32 @m_freem(%struct.mbuf* %153)
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  br label %467

157:                                              ; preds = %148, %139
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @PF_INET6, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %238

161:                                              ; preds = %157
  %162 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %163 = call i64 @IS_INTF_CLAT46(%struct.ifnet* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %238

165:                                              ; preds = %161
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %168 = call i64 @dlil_is_clat_needed(i64 %166, %struct.mbuf* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %238

170:                                              ; preds = %165
  store i8* null, i8** %24, align 8
  store %struct.ether_header* null, %struct.ether_header** %26, align 8
  %171 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 128
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load i8*, i8** %15, align 8
  %177 = bitcast i8* %176 to %struct.ether_header*
  store %struct.ether_header* %177, %struct.ether_header** %26, align 8
  %178 = load %struct.ether_header*, %struct.ether_header** %26, align 8
  %179 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @ntohs(i32 %180)
  %182 = load i64, i64* @ETHERTYPE_IPV6, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  br label %239

185:                                              ; preds = %175
  %186 = load i8*, i8** %15, align 8
  %187 = bitcast %struct.ether_header* %25 to i8*
  %188 = load i32, i32* @ETHER_HDR_LEN, align 4
  %189 = call i32 @bcopy(i8* %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %170
  %191 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %192 = call i32 @dlil_clat64(%struct.ifnet* %191, i64* %12, %struct.mbuf** %7)
  store i32 %192, i32* %11, align 4
  %193 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %194 = call i64 @mbuf_data(%struct.mbuf* %193)
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %24, align 8
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %200 = call i32 @m_freem(%struct.mbuf* %199)
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  br label %467

203:                                              ; preds = %190
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* @PF_INET, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %239

208:                                              ; preds = %203
  %209 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %237 [
    i32 129, label %212
    i32 128, label %214
  ]

212:                                              ; preds = %208
  %213 = load i8*, i8** %24, align 8
  store i8* %213, i8** %15, align 8
  br label %237

214:                                              ; preds = %208
  %215 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %216 = call i32 @M_LEADINGSPACE(%struct.mbuf* %215)
  %217 = load i32, i32* @ETHER_HDR_LEN, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %221 = call i32 @m_free(%struct.mbuf* %220)
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  br label %467

224:                                              ; preds = %214
  %225 = load i8*, i8** %24, align 8
  %226 = load i32, i32* @ETHER_HDR_LEN, align 4
  %227 = sext i32 %226 to i64
  %228 = sub i64 0, %227
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8* %229, i8** %15, align 8
  %230 = load i32, i32* @ETHERTYPE_IP, align 4
  %231 = call i32 @htons(i32 %230)
  %232 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %25, i32 0, i32 0
  store i32 %231, i32* %232, align 4
  %233 = bitcast %struct.ether_header* %25 to i8*
  %234 = load i8*, i8** %15, align 8
  %235 = load i32, i32* @ETHER_HDR_LEN, align 4
  %236 = call i32 @bcopy(i8* %233, i8* %234, i32 %235)
  br label %237

237:                                              ; preds = %208, %224, %212
  br label %238

238:                                              ; preds = %237, %165, %161, %157
  br label %239

239:                                              ; preds = %238, %207, %184
  %240 = load i64, i64* @hwcksum_dbg, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %239
  %243 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IFF_LOOPBACK, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %263, label %249

249:                                              ; preds = %242
  %250 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %251 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @PKTF_LOOP, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %249
  %258 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %259 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %260 = load i8*, i8** %15, align 8
  %261 = load i64, i64* %12, align 8
  %262 = call i32 @dlil_input_cksum_dbg(%struct.ifnet* %258, %struct.mbuf* %259, i8* %260, i64 %261)
  br label %263

263:                                              ; preds = %257, %249, %242, %239
  %264 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %265 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %264, i32 0, i32 6
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %331

268:                                              ; preds = %263
  %269 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %270 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @CSUM_DATA_VALID, align 4
  %274 = load i32, i32* @CSUM_PARTIAL, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = load i32, i32* @CSUM_DATA_VALID, align 4
  %278 = load i32, i32* @CSUM_PARTIAL, align 4
  %279 = or i32 %277, %278
  %280 = icmp eq i32 %276, %279
  br i1 %280, label %281, label %331

281:                                              ; preds = %268
  %282 = load i8*, i8** %15, align 8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %310, label %284

284:                                              ; preds = %281
  %285 = load i8*, i8** %15, align 8
  %286 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %287 = call i64 @mbuf_datastart(%struct.mbuf* %286)
  %288 = inttoptr i64 %287 to i8*
  %289 = icmp ult i8* %285, %288
  br i1 %289, label %310, label %290

290:                                              ; preds = %284
  %291 = load i8*, i8** %15, align 8
  %292 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %293 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ugt i8* %291, %294
  br i1 %295, label %310, label %296

296:                                              ; preds = %290
  %297 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %298 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = load i8*, i8** %15, align 8
  %301 = ptrtoint i8* %299 to i64
  %302 = ptrtoint i8* %300 to i64
  %303 = sub i64 %301, %302
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %27, align 4
  %305 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %306 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %304, %308
  br i1 %309, label %310, label %323

310:                                              ; preds = %296, %290, %284, %281
  %311 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %312 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 4
  store i64 0, i64* %313, align 8
  %314 = load i32, i32* @CSUM_DATA_VALID, align 4
  %315 = xor i32 %314, -1
  %316 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %317 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, %315
  store i32 %320, i32* %318, align 4
  %321 = load i32, i32* @hwcksum_in_invalidated, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* @hwcksum_in_invalidated, align 4
  br label %330

323:                                              ; preds = %296
  %324 = load i32, i32* %27, align 4
  %325 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %326 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, %324
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %323, %310
  br label %331

331:                                              ; preds = %330, %268, %263
  %332 = load i64, i64* @clat_debug, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %336 = load i64, i64* %12, align 8
  %337 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %338 = load i8*, i8** %15, align 8
  %339 = call i32 @pktap_input(%struct.ifnet* %335, i64 %336, %struct.mbuf* %337, i8* %338)
  br label %340

340:                                              ; preds = %334, %331
  %341 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %342 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @M_BCAST, align 4
  %345 = load i32, i32* @M_MCAST, align 4
  %346 = or i32 %344, %345
  %347 = and i32 %343, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %340
  %350 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %351 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %350, i32 0, i32 5
  %352 = call i32 @atomic_add_64(i32* %351, i32 1)
  br label %353

353:                                              ; preds = %349, %340
  %354 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %355 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @CSUM_VLAN_TAG_VALID, align 4
  %359 = and i32 %357, %358
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %376

361:                                              ; preds = %353
  %362 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %363 = load i64, i64* %12, align 8
  %364 = call i32 @dlil_interface_filters_input(%struct.ifnet* %362, %struct.mbuf** %7, i8** %15, i64 %363)
  store i32 %364, i32* %11, align 4
  %365 = load i32, i32* %11, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %361
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* @EJUSTRETURN, align 4
  %370 = icmp ne i32 %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %373 = call i32 @m_freem(%struct.mbuf* %372)
  br label %374

374:                                              ; preds = %371, %367
  br label %467

375:                                              ; preds = %361
  br label %376

376:                                              ; preds = %375, %353
  %377 = load i32, i32* %11, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %381 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @M_PROMISC, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %379, %376
  %387 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %388 = call i32 @m_freem(%struct.mbuf* %387)
  br label %467

389:                                              ; preds = %379
  %390 = load i64, i64* %12, align 8
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  store %struct.if_proto* null, %struct.if_proto** %21, align 8
  br label %429

393:                                              ; preds = %389
  %394 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %395 = icmp ne %struct.if_proto* %394, null
  br i1 %395, label %396, label %416

396:                                              ; preds = %393
  %397 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %398 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %397, i32 0, i32 1
  %399 = load %struct.ifnet*, %struct.ifnet** %398, align 8
  %400 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %401 = icmp eq %struct.ifnet* %399, %400
  br i1 %401, label %402, label %416

402:                                              ; preds = %396
  %403 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %404 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* %12, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %416

408:                                              ; preds = %402
  %409 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %410 = icmp eq %struct.if_proto* %409, null
  %411 = zext i1 %410 to i32
  %412 = call i32 @VERIFY(i32 %411)
  %413 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  store %struct.if_proto* %413, %struct.if_proto** %21, align 8
  %414 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %415 = call i32 @if_proto_ref(%struct.if_proto* %414)
  br label %428

416:                                              ; preds = %402, %396, %393
  %417 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %418 = icmp eq %struct.if_proto* %417, null
  %419 = zext i1 %418 to i32
  %420 = call i32 @VERIFY(i32 %419)
  %421 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %422 = call i32 @ifnet_lock_shared(%struct.ifnet* %421)
  %423 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %424 = load i64, i64* %12, align 8
  %425 = call %struct.if_proto* @find_attached_proto(%struct.ifnet* %423, i64 %424)
  store %struct.if_proto* %425, %struct.if_proto** %21, align 8
  %426 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %427 = call i32 @ifnet_lock_done(%struct.ifnet* %426)
  br label %428

428:                                              ; preds = %416, %408
  br label %429

429:                                              ; preds = %428, %392
  %430 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %431 = icmp eq %struct.if_proto* %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %434 = call i32 @m_freem(%struct.mbuf* %433)
  br label %467

435:                                              ; preds = %429
  %436 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %437 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %438 = icmp ne %struct.if_proto* %436, %437
  br i1 %438, label %439, label %452

439:                                              ; preds = %435
  %440 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %441 = icmp ne %struct.if_proto* %440, null
  br i1 %441, label %442, label %448

442:                                              ; preds = %439
  %443 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %444 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %445 = call i32 @dlil_ifproto_input(%struct.if_proto* %443, %struct.mbuf* %444)
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  %446 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %447 = call i32 @if_proto_free(%struct.if_proto* %446)
  br label %448

448:                                              ; preds = %442, %439
  %449 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  store %struct.if_proto* %449, %struct.if_proto** %16, align 8
  %450 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %451 = call i32 @if_proto_ref(%struct.if_proto* %450)
  br label %452

452:                                              ; preds = %448, %435
  %453 = load i8*, i8** %15, align 8
  %454 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %455 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 0
  store i8* %453, i8** %456, align 8
  %457 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %458 = icmp eq %struct.mbuf* %457, null
  br i1 %458, label %459, label %461

459:                                              ; preds = %452
  %460 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %460, %struct.mbuf** %17, align 8
  br label %464

461:                                              ; preds = %452
  %462 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %463 = load %struct.mbuf**, %struct.mbuf*** %18, align 8
  store %struct.mbuf* %462, %struct.mbuf** %463, align 8
  br label %464

464:                                              ; preds = %461, %459
  %465 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %466 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %465, i32 0, i32 2
  store %struct.mbuf** %466, %struct.mbuf*** %18, align 8
  br label %467

467:                                              ; preds = %464, %432, %386, %374, %219, %198, %152, %137, %104
  %468 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %469 = icmp eq %struct.mbuf* %468, null
  br i1 %469, label %470, label %479

470:                                              ; preds = %467
  %471 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %472 = icmp ne %struct.if_proto* %471, null
  br i1 %472, label %473, label %479

473:                                              ; preds = %470
  %474 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %475 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %476 = call i32 @dlil_ifproto_input(%struct.if_proto* %474, %struct.mbuf* %475)
  %477 = load %struct.if_proto*, %struct.if_proto** %16, align 8
  %478 = call i32 @if_proto_free(%struct.if_proto* %477)
  store %struct.if_proto* null, %struct.if_proto** %16, align 8
  br label %479

479:                                              ; preds = %473, %470, %467
  %480 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %481 = icmp ne %struct.if_proto* %480, null
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load %struct.if_proto*, %struct.if_proto** %21, align 8
  %484 = call i32 @if_proto_free(%struct.if_proto* %483)
  store %struct.if_proto* null, %struct.if_proto** %21, align 8
  br label %485

485:                                              ; preds = %482, %479
  %486 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %486, %struct.mbuf** %7, align 8
  %487 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %488 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = icmp sgt i64 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %485
  %492 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %493 = call i64 @if_mcasts_update(%struct.ifnet* %492)
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %491
  %496 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %497 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %496, i32 0, i32 4
  store i64 0, i64* %497, align 8
  br label %498

498:                                              ; preds = %495, %491, %485
  %499 = load i32, i32* %22, align 4
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %503 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %502)
  br label %504

504:                                              ; preds = %501, %498
  br label %48

505:                                              ; preds = %48
  %506 = load i32, i32* @DBG_FNC_DLIL_INPUT, align 4
  %507 = load i32, i32* @DBG_FUNC_END, align 4
  %508 = or i32 %506, %507
  %509 = call i32 @KERNEL_DEBUG(i32 %508, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ifnet_poll(%struct.ifnet*) #1

declare dso_local i32 @MBUF_INPUT_CHECK(%struct.mbuf*, %struct.ifnet*) #1

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_classifier_init(%struct.mbuf*, i32) #1

declare dso_local i32 @ifp_inc_traffic_class_in(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @pktap_input(%struct.ifnet*, i64, %struct.mbuf*, i8*) #1

declare dso_local i64 @IS_INTF_CLAT46(%struct.ifnet*) #1

declare dso_local i64 @dlil_is_clat_needed(i64, %struct.mbuf*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @dlil_clat64(%struct.ifnet*, i64*, %struct.mbuf**) #1

declare dso_local i64 @mbuf_data(%struct.mbuf*) #1

declare dso_local i32 @M_LEADINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dlil_input_cksum_dbg(%struct.ifnet*, %struct.mbuf*, i8*, i64) #1

declare dso_local i64 @mbuf_datastart(%struct.mbuf*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @dlil_interface_filters_input(%struct.ifnet*, %struct.mbuf**, i8**, i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @if_proto_ref(%struct.if_proto*) #1

declare dso_local %struct.if_proto* @find_attached_proto(%struct.ifnet*, i64) #1

declare dso_local i32 @dlil_ifproto_input(%struct.if_proto*, %struct.mbuf*) #1

declare dso_local i32 @if_proto_free(%struct.if_proto*) #1

declare dso_local i64 @if_mcasts_update(%struct.ifnet*) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
