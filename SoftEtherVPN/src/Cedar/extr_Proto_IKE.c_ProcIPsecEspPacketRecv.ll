; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIPsecEspPacketRecv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIPsecEspPacketRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i32, %struct.TYPE_65__*, i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i64, i64 }
%struct.TYPE_48__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_50__ = type { i32, i32, %struct.TYPE_47__, i32, %struct.TYPE_50__*, i32, i32, %struct.TYPE_53__* }
%struct.TYPE_47__ = type { i64, i64, %struct.TYPE_58__*, %struct.TYPE_56__* }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_50__*, %struct.TYPE_50__*, i32, i32, %struct.TYPE_55__*, i64, i64, i32, i32 }
%struct.TYPE_55__ = type { i64, i64 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_54__ = type { i32*, i32 }
%struct.TYPE_49__ = type { i32, i32*, i32, %struct.TYPE_63__, %struct.TYPE_57__ }
%struct.TYPE_63__ = type { i32, i32, i32*, i32, i32*, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { %struct.TYPE_61__, %struct.TYPE_60__ }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_57__ = type { %struct.TYPE_59__* }
%struct.TYPE_59__ = type { i32, i32, i32 }

@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ESP_RAW = common dso_local global i64 0, align 8
@IPSEC_PORT_IPSEC_ISAKMP = common dso_local global i64 0, align 8
@IKE_ESP_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IPV4 = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IPV6 = common dso_local global i32 0, align 4
@ProcIPsecEspPacketRecv.src_mac_dummy = internal global [6 x i32] zeroinitializer, align 16
@ProcIPsecEspPacketRecv.dst_mac_dummy = internal global [6 x i32] zeroinitializer, align 16
@MAC_PROTO_IPV4 = common dso_local global i32 0, align 4
@MAC_PROTO_IPV6 = common dso_local global i32 0, align 4
@IPSEC_IP_PROTO_ETHERIP = common dso_local global i32 0, align 4
@IPSEC_IP_PROTO_L2TPV3 = common dso_local global i32 0, align 4
@IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ESP_UDP = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_TUNNEL = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TUNNEL_1 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_TRANSPORT = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TRANSPORT_1 = common dso_local global i64 0, align 8
@IPSEC_PORT_L2TP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcIPsecEspPacketRecv(%struct.TYPE_51__* %0, %struct.TYPE_48__* %1) #0 {
  %3 = alloca %struct.TYPE_51__*, align 8
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_50__*, align 8
  %10 = alloca %struct.TYPE_53__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_52__, align 4
  %19 = alloca %struct.TYPE_54__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_53__*, align 8
  %28 = alloca %struct.TYPE_53__, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_54__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_49__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_50__*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %3, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %4, align 8
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %20, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %45 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %46 = icmp eq %struct.TYPE_51__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %49 = icmp eq %struct.TYPE_48__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %2
  store i32 1, i32* %23, align 4
  br label %765

51:                                               ; preds = %47
  %52 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %5, align 8
  %56 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_RAW, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %51
  %65 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %65, i32 0, i32 1
  %67 = call i64 @IsIP4(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @GetIpHeaderSize(i32* %70, i32 %71)
  store i32 %72, i32* %24, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %5, align 8
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %69, %64
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %23, align 4
  br label %765

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @READ_UINT(i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %23, align 4
  br label %765

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 8
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %23, align 4
  br label %765

98:                                               ; preds = %93
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = call i32 @READ_UINT(i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_50__* @SearchClientToServerIPsecSaBySpi(%struct.TYPE_51__* %102, i32 %103)
  store %struct.TYPE_50__* %104, %struct.TYPE_50__** %9, align 8
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %106 = icmp eq %struct.TYPE_50__* %105, null
  br i1 %106, label %107, label %182

107:                                              ; preds = %98
  %108 = call i64 (...) @Rand64()
  store i64 %108, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store %struct.TYPE_53__* null, %struct.TYPE_53__** %27, align 8
  %109 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 10
  %110 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %110, i32 0, i32 2
  %112 = call i32 @Copy(i32* %109, i32* %111, i32 4)
  %113 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 8
  store i64 %115, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 9
  %118 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %118, i32 0, i32 1
  %120 = call i32 @Copy(i32* %117, i32* %119, i32 4)
  %121 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 7
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 6
  store %struct.TYPE_55__* null, %struct.TYPE_55__** %125, align 8
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_RAW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %107
  %132 = load i64, i64* @IPSEC_PORT_IPSEC_ISAKMP, align 8
  %133 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 7
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 8
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %107
  %136 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.TYPE_53__* @Search(i32 %138, %struct.TYPE_53__* %28)
  store %struct.TYPE_53__* %139, %struct.TYPE_53__** %27, align 8
  %140 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %141 = icmp ne %struct.TYPE_53__* %140, null
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  %143 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_55__*, %struct.TYPE_55__** %144, align 8
  %146 = icmp ne %struct.TYPE_55__* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %149 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_55__*, %struct.TYPE_55__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %25, align 8
  %153 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %154 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_55__*, %struct.TYPE_55__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %26, align 8
  br label %158

158:                                              ; preds = %147, %142, %135
  %159 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %160 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %161 = icmp eq %struct.TYPE_53__* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %165

163:                                              ; preds = %158
  %164 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  br label %165

165:                                              ; preds = %163, %162
  %166 = phi %struct.TYPE_53__* [ %28, %162 ], [ %164, %163 ]
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @IkeNewNoticeErrorInvalidSpiPayload(i32 %167)
  %169 = load i64, i64* %25, align 8
  %170 = load i64, i64* %26, align 8
  %171 = call i32 @SendInformationalExchangePacketEx(%struct.TYPE_51__* %159, %struct.TYPE_53__* %166, i32 %168, i32 0, i64 %169, i64 %170)
  %172 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %173 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %174 = icmp eq %struct.TYPE_53__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %178

176:                                              ; preds = %165
  %177 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi %struct.TYPE_53__* [ %28, %175 ], [ %177, %176 ]
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @SendDeleteIPsecSaPacket(%struct.TYPE_51__* %172, %struct.TYPE_53__* %179, i32 %180)
  store i32 1, i32* %23, align 4
  br label %765

182:                                              ; preds = %98
  %183 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %184 = call i32 @IsIPsecSaTunnelMode(%struct.TYPE_50__* %183)
  store i32 %184, i32* %22, align 4
  %185 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_53__*, %struct.TYPE_53__** %186, align 8
  store %struct.TYPE_53__* %187, %struct.TYPE_53__** %10, align 8
  %188 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %189 = icmp eq %struct.TYPE_53__* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  store i32 1, i32* %23, align 4
  br label %765

191:                                              ; preds = %182
  %192 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_56__*, %struct.TYPE_56__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* @IKE_ESP_HASH_SIZE, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 8, %202
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %203, %205
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = add i64 %206, %208
  %210 = icmp ult i64 %200, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %191
  store i32 1, i32* %23, align 4
  br label %765

212:                                              ; preds = %191
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 8
  store i32* %214, i32** %14, align 8
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 0, %220
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32* %222, i32** %15, align 8
  %223 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_58__*, %struct.TYPE_58__** %225, align 8
  %227 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_58__*, %struct.TYPE_58__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %12, align 4
  %239 = sub nsw i32 %237, %238
  %240 = call i32 @IkeHMac(%struct.TYPE_58__* %226, i32* %44, i32 %229, i32 %235, i32* %236, i32 %239)
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* %12, align 4
  %243 = call i64 @Cmp(i32* %44, i32* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %212
  store i32 1, i32* %23, align 4
  br label %765

246:                                              ; preds = %212
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32* %251, i32** %16, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %12, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load i32, i32* %11, align 4
  %256 = sub nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = sub i64 %257, 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %17, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %246
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %11, align 4
  %265 = srem i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262, %246
  store i32 1, i32* %23, align 4
  br label %765

268:                                              ; preds = %262
  %269 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %18, i32 0, i32 1
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %18, i32 0, i32 0
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @Copy(i32* %273, i32* %274, i32 %275)
  %277 = load i32*, i32** %16, align 8
  %278 = load i32, i32* %17, align 4
  %279 = call %struct.TYPE_54__* @IkeDecrypt(i32* %277, i32 %278, %struct.TYPE_52__* %18)
  store %struct.TYPE_54__* %279, %struct.TYPE_54__** %19, align 8
  %280 = load %struct.TYPE_54__*, %struct.TYPE_54__** %19, align 8
  %281 = icmp ne %struct.TYPE_54__* %280, null
  br i1 %281, label %282, label %634

282:                                              ; preds = %268
  %283 = load %struct.TYPE_54__*, %struct.TYPE_54__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  store i32* %285, i32** %29, align 8
  %286 = load %struct.TYPE_54__*, %struct.TYPE_54__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %30, align 4
  %289 = load i32*, i32** %29, align 8
  %290 = load i32, i32* %30, align 4
  %291 = sub nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %31, align 4
  %295 = load i32*, i32** %29, align 8
  %296 = load i32, i32* %30, align 4
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %295, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %32, align 4
  %301 = load i32, i32* %30, align 4
  %302 = sub nsw i32 %301, 2
  %303 = load i32, i32* %31, align 4
  %304 = icmp sge i32 %302, %303
  br i1 %304, label %305, label %631

305:                                              ; preds = %282
  %306 = load i32, i32* %30, align 4
  %307 = sub nsw i32 %306, 2
  %308 = load i32, i32* %31, align 4
  %309 = sub nsw i32 %307, %308
  store i32 %309, i32* %33, align 4
  %310 = load i32, i32* %30, align 4
  %311 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load i32, i32* %22, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %562

317:                                              ; preds = %305
  %318 = load i32, i32* %32, align 4
  %319 = load i32, i32* @IKE_PROTOCOL_ID_IPV4, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %32, align 4
  %323 = load i32, i32* @IKE_PROTOCOL_ID_IPV6, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %561

325:                                              ; preds = %321, %317
  %326 = call %struct.TYPE_54__* (...) @NewBuf()
  store %struct.TYPE_54__* %326, %struct.TYPE_54__** %34, align 8
  %327 = load i32, i32* %32, align 4
  %328 = load i32, i32* @IKE_PROTOCOL_ID_IPV4, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  %331 = load i32, i32* @MAC_PROTO_IPV4, align 4
  br label %334

332:                                              ; preds = %325
  %333 = load i32, i32* @MAC_PROTO_IPV6, align 4
  br label %334

334:                                              ; preds = %332, %330
  %335 = phi i32 [ %331, %330 ], [ %333, %332 ]
  %336 = call i32 @Endian16(i32 %335)
  store i32 %336, i32* %35, align 4
  %337 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %338 = call i32 @WriteBuf(%struct.TYPE_54__* %337, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ProcIPsecEspPacketRecv.src_mac_dummy, i64 0, i64 0), i32 24)
  %339 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %340 = call i32 @WriteBuf(%struct.TYPE_54__* %339, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ProcIPsecEspPacketRecv.dst_mac_dummy, i64 0, i64 0), i32 24)
  %341 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %342 = call i32 @WriteBuf(%struct.TYPE_54__* %341, i32* %35, i32 4)
  %343 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %344 = load i32*, i32** %29, align 8
  %345 = load i32, i32* %30, align 4
  %346 = call i32 @WriteBuf(%struct.TYPE_54__* %343, i32* %344, i32 %345)
  %347 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %348 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %351 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call %struct.TYPE_49__* @ParsePacket(i32* %349, i32 %352)
  store %struct.TYPE_49__* %353, %struct.TYPE_49__** %36, align 8
  %354 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %355 = icmp eq %struct.TYPE_49__* %354, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %334
  store i32* null, i32** %29, align 8
  store i32 0, i32* %30, align 4
  br label %558

357:                                              ; preds = %334
  %358 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %359 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  switch i32 %360, label %555 [
    i32 129, label %361
    i32 128, label %454
  ]

361:                                              ; preds = %357
  %362 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %362, i32 0, i32 5
  %364 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %365 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %364, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_59__*, %struct.TYPE_59__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @UINTToIP(i32* %363, i32 %369)
  %371 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %374 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_59__*, %struct.TYPE_59__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @UINTToIP(i32* %372, i32 %378)
  %380 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %381 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_59__*, %struct.TYPE_59__** %382, align 8
  %384 = call i32 @IPV4_GET_OFFSET(%struct.TYPE_59__* %383)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %453

386:                                              ; preds = %361
  %387 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %388 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_59__*, %struct.TYPE_59__** %389, align 8
  %391 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_59__* %390)
  %392 = and i32 %391, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %452

394:                                              ; preds = %386
  %395 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %396 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %395, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_59__*, %struct.TYPE_59__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @IPSEC_IP_PROTO_ETHERIP, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %422

403:                                              ; preds = %394
  %404 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_65__*, %struct.TYPE_65__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %421

411:                                              ; preds = %403
  %412 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %413 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %414 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %415 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %418 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @ProcIPsecEtherIPPacketRecv(%struct.TYPE_51__* %412, %struct.TYPE_53__* %413, i32* %416, i32 %419, i32 1)
  br label %421

421:                                              ; preds = %411, %403
  br label %451

422:                                              ; preds = %394
  %423 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %424 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_59__*, %struct.TYPE_59__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @IPSEC_IP_PROTO_L2TPV3, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %450

431:                                              ; preds = %422
  %432 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_65__*, %struct.TYPE_65__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %449

439:                                              ; preds = %431
  %440 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %441 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %442 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %443 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %446 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @ProcL2TPv3PacketRecv(%struct.TYPE_51__* %440, %struct.TYPE_53__* %441, i32* %444, i32 %447, i32 1)
  br label %449

449:                                              ; preds = %439, %431
  br label %450

450:                                              ; preds = %449, %422
  br label %451

451:                                              ; preds = %450, %421
  br label %452

452:                                              ; preds = %451, %386
  br label %453

453:                                              ; preds = %452, %361
  br label %555

454:                                              ; preds = %357
  %455 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %455, i32 0, i32 5
  %457 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %458 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %458, i32 0, i32 5
  %460 = load %struct.TYPE_62__*, %struct.TYPE_62__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @SetIP6(i32* %456, i32 %463)
  %465 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %465, i32 0, i32 4
  %467 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %468 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %468, i32 0, i32 5
  %470 = load %struct.TYPE_62__*, %struct.TYPE_62__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @SetIP6(i32* %466, i32 %473)
  %475 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %476 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %475, i32 0, i32 3
  %477 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %554

480:                                              ; preds = %454
  %481 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %482 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %481, i32 0, i32 3
  %483 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %482, i32 0, i32 4
  %484 = load i32*, i32** %483, align 8
  %485 = icmp eq i32* %484, null
  br i1 %485, label %495, label %486

486:                                              ; preds = %480
  %487 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %488 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %487, i32 0, i32 3
  %489 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %488, i32 0, i32 4
  %490 = load i32*, i32** %489, align 8
  %491 = call i32 @IPV6_GET_FLAGS(i32* %490)
  %492 = load i32, i32* @IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS, align 4
  %493 = and i32 %491, %492
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %553

495:                                              ; preds = %486, %480
  %496 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %497 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %496, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @IPSEC_IP_PROTO_ETHERIP, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %523

502:                                              ; preds = %495
  %503 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %503, i32 0, i32 1
  %505 = load %struct.TYPE_65__*, %struct.TYPE_65__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %522

510:                                              ; preds = %502
  %511 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %512 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %513 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %514 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %513, i32 0, i32 3
  %515 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %514, i32 0, i32 2
  %516 = load i32*, i32** %515, align 8
  %517 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %518 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 8
  %521 = call i32 @ProcIPsecEtherIPPacketRecv(%struct.TYPE_51__* %511, %struct.TYPE_53__* %512, i32* %516, i32 %520, i32 1)
  br label %522

522:                                              ; preds = %510, %502
  br label %552

523:                                              ; preds = %495
  %524 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %525 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %524, i32 0, i32 3
  %526 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @IPSEC_IP_PROTO_L2TPV3, align 4
  %529 = icmp eq i32 %527, %528
  br i1 %529, label %530, label %551

530:                                              ; preds = %523
  %531 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %531, i32 0, i32 1
  %533 = load %struct.TYPE_65__*, %struct.TYPE_65__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %550

538:                                              ; preds = %530
  %539 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %540 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %541 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %542 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %542, i32 0, i32 2
  %544 = load i32*, i32** %543, align 8
  %545 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %546 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @ProcL2TPv3PacketRecv(%struct.TYPE_51__* %539, %struct.TYPE_53__* %540, i32* %544, i32 %548, i32 1)
  br label %550

550:                                              ; preds = %538, %530
  br label %551

551:                                              ; preds = %550, %523
  br label %552

552:                                              ; preds = %551, %522
  br label %553

553:                                              ; preds = %552, %486
  br label %554

554:                                              ; preds = %553, %454
  br label %555

555:                                              ; preds = %357, %554, %453
  %556 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  %557 = call i32 @FreePacket(%struct.TYPE_49__* %556)
  br label %558

558:                                              ; preds = %555, %356
  %559 = load %struct.TYPE_54__*, %struct.TYPE_54__** %34, align 8
  %560 = call i32 @FreeBuf(%struct.TYPE_54__* %559)
  br label %561

561:                                              ; preds = %558, %321
  br label %630

562:                                              ; preds = %305
  %563 = load i32, i32* %32, align 4
  %564 = load i32, i32* @IP_PROTO_UDP, align 4
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %589

566:                                              ; preds = %562
  %567 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %567, i32 0, i32 1
  %569 = load %struct.TYPE_65__*, %struct.TYPE_65__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %570, i32 0, i32 1
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %582, label %574

574:                                              ; preds = %566
  %575 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %575, i32 0, i32 1
  %577 = load %struct.TYPE_65__*, %struct.TYPE_65__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %588

582:                                              ; preds = %574, %566
  %583 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %584 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %585 = load i32*, i32** %29, align 8
  %586 = load i32, i32* %30, align 4
  %587 = call i32 @ProcIPsecUdpPacketRecv(%struct.TYPE_51__* %583, %struct.TYPE_53__* %584, i32* %585, i32 %586)
  br label %588

588:                                              ; preds = %582, %574
  br label %629

589:                                              ; preds = %562
  %590 = load i32, i32* %32, align 4
  %591 = load i32, i32* @IPSEC_IP_PROTO_ETHERIP, align 4
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %608

593:                                              ; preds = %589
  %594 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %594, i32 0, i32 1
  %596 = load %struct.TYPE_65__*, %struct.TYPE_65__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %607

601:                                              ; preds = %593
  %602 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %603 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %604 = load i32*, i32** %29, align 8
  %605 = load i32, i32* %30, align 4
  %606 = call i32 @ProcIPsecEtherIPPacketRecv(%struct.TYPE_51__* %602, %struct.TYPE_53__* %603, i32* %604, i32 %605, i32 0)
  br label %607

607:                                              ; preds = %601, %593
  br label %628

608:                                              ; preds = %589
  %609 = load i32, i32* %32, align 4
  %610 = load i32, i32* @IPSEC_IP_PROTO_L2TPV3, align 4
  %611 = icmp eq i32 %609, %610
  br i1 %611, label %612, label %627

612:                                              ; preds = %608
  %613 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %614 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %613, i32 0, i32 1
  %615 = load %struct.TYPE_65__*, %struct.TYPE_65__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %626

620:                                              ; preds = %612
  %621 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %622 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %623 = load i32*, i32** %29, align 8
  %624 = load i32, i32* %30, align 4
  %625 = call i32 @ProcL2TPv3PacketRecv(%struct.TYPE_51__* %621, %struct.TYPE_53__* %622, i32* %623, i32 %624, i32 0)
  br label %626

626:                                              ; preds = %620, %612
  br label %627

627:                                              ; preds = %626, %608
  br label %628

628:                                              ; preds = %627, %607
  br label %629

629:                                              ; preds = %628, %588
  br label %630

630:                                              ; preds = %629, %561
  store i32 1, i32* %13, align 4
  br label %631

631:                                              ; preds = %630, %282
  %632 = load %struct.TYPE_54__*, %struct.TYPE_54__** %19, align 8
  %633 = call i32 @FreeBuf(%struct.TYPE_54__* %632)
  br label %634

634:                                              ; preds = %631, %268
  %635 = load i32, i32* %13, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %764

637:                                              ; preds = %634
  store i32 0, i32* %37, align 4
  %638 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %639 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %640 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %639, i32 0, i32 3
  store %struct.TYPE_50__* %638, %struct.TYPE_50__** %640, align 8
  %641 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %642 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %641, i32 0, i32 4
  %643 = load %struct.TYPE_50__*, %struct.TYPE_50__** %642, align 8
  %644 = icmp ne %struct.TYPE_50__* %643, null
  br i1 %644, label %645, label %686

645:                                              ; preds = %637
  %646 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %647 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %646, i32 0, i32 4
  %648 = load %struct.TYPE_50__*, %struct.TYPE_50__** %647, align 8
  %649 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %650 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %649, i32 0, i32 2
  store %struct.TYPE_50__* %648, %struct.TYPE_50__** %650, align 8
  %651 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %652 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %651, i32 0, i32 3
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_UDP, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %685

656:                                              ; preds = %645
  %657 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %658 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %657, i32 0, i32 2
  %659 = load %struct.TYPE_50__*, %struct.TYPE_50__** %658, align 8
  store %struct.TYPE_50__* %659, %struct.TYPE_50__** %38, align 8
  %660 = load %struct.TYPE_50__*, %struct.TYPE_50__** %38, align 8
  %661 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %660, i32 0, i32 2
  %662 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %661, i32 0, i32 0
  %663 = load i64, i64* %662, align 8
  %664 = load i64, i64* @IKE_P2_CAPSULE_TUNNEL, align 8
  %665 = icmp eq i64 %663, %664
  br i1 %665, label %666, label %671

666:                                              ; preds = %656
  %667 = load i64, i64* @IKE_P2_CAPSULE_NAT_TUNNEL_1, align 8
  %668 = load %struct.TYPE_50__*, %struct.TYPE_50__** %38, align 8
  %669 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %668, i32 0, i32 2
  %670 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %669, i32 0, i32 0
  store i64 %667, i64* %670, align 8
  br label %684

671:                                              ; preds = %656
  %672 = load %struct.TYPE_50__*, %struct.TYPE_50__** %38, align 8
  %673 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %672, i32 0, i32 2
  %674 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %673, i32 0, i32 0
  %675 = load i64, i64* %674, align 8
  %676 = load i64, i64* @IKE_P2_CAPSULE_TRANSPORT, align 8
  %677 = icmp eq i64 %675, %676
  br i1 %677, label %678, label %683

678:                                              ; preds = %671
  %679 = load i64, i64* @IKE_P2_CAPSULE_NAT_TRANSPORT_1, align 8
  %680 = load %struct.TYPE_50__*, %struct.TYPE_50__** %38, align 8
  %681 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %680, i32 0, i32 2
  %682 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %681, i32 0, i32 0
  store i64 %679, i64* %682, align 8
  br label %683

683:                                              ; preds = %678, %671
  br label %684

684:                                              ; preds = %683, %666
  br label %685

685:                                              ; preds = %684, %645
  br label %686

686:                                              ; preds = %685, %637
  %687 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %688 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %691 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %690, i32 0, i32 1
  store i32 %689, i32* %691, align 4
  %692 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %693 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %696 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %695, i32 0, i32 3
  store i32 %694, i32* %696, align 8
  %697 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %698 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %697, i32 0, i32 4
  %699 = load %struct.TYPE_50__*, %struct.TYPE_50__** %698, align 8
  %700 = icmp ne %struct.TYPE_50__* %699, null
  br i1 %700, label %701, label %709

701:                                              ; preds = %686
  %702 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %703 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %706 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %705, i32 0, i32 4
  %707 = load %struct.TYPE_50__*, %struct.TYPE_50__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %707, i32 0, i32 3
  store i32 %704, i32* %708, align 8
  br label %709

709:                                              ; preds = %701, %686
  %710 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %711 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %712 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %713 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %712, i32 0, i32 2
  %714 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %715 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %714, i32 0, i32 4
  %716 = load i64, i64* %715, align 8
  %717 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %718 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %717, i32 0, i32 1
  %719 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %720 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %719, i32 0, i32 3
  %721 = load i64, i64* %720, align 8
  %722 = call i32 @SetIkeClientEndpoint(%struct.TYPE_51__* %710, %struct.TYPE_53__* %711, i32* %713, i64 %716, i32* %718, i64 %721)
  %723 = load i32, i32* %8, align 4
  %724 = icmp uge i32 %723, -268435456
  br i1 %724, label %725, label %726

725:                                              ; preds = %709
  store i32 1, i32* %37, align 4
  br label %726

726:                                              ; preds = %725, %709
  %727 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %728 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %727, i32 0, i32 2
  %729 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %728, i32 0, i32 1
  %730 = load i64, i64* %729, align 8
  %731 = icmp ne i64 %730, 0
  br i1 %731, label %732, label %749

732:                                              ; preds = %726
  %733 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %734 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %733, i32 0, i32 2
  %735 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %734, i32 0, i32 1
  %736 = load i64, i64* %735, align 8
  %737 = mul nsw i64 %736, 1000
  store i64 %737, i64* %39, align 8
  %738 = load i64, i64* %39, align 8
  %739 = mul nsw i64 %738, 2
  %740 = sdiv i64 %739, 3
  store i64 %740, i64* %40, align 8
  %741 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %742 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 8
  %744 = sext i32 %743 to i64
  %745 = load i64, i64* %40, align 8
  %746 = icmp sge i64 %744, %745
  br i1 %746, label %747, label %748

747:                                              ; preds = %732
  store i32 1, i32* %37, align 4
  br label %748

748:                                              ; preds = %747, %732
  br label %749

749:                                              ; preds = %748, %726
  %750 = load i32, i32* %37, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %763

752:                                              ; preds = %749
  %753 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %754 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %753, i32 0, i32 1
  %755 = load i32, i32* %754, align 4
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %752
  %758 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %759 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %758, i32 0, i32 0
  store i32 1, i32* %759, align 8
  %760 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %761 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %760, i32 0, i32 1
  store i32 1, i32* %761, align 4
  br label %762

762:                                              ; preds = %757, %752
  br label %763

763:                                              ; preds = %762, %749
  br label %764

764:                                              ; preds = %763, %634
  store i32 0, i32* %23, align 4
  br label %765

765:                                              ; preds = %764, %267, %245, %211, %190, %178, %97, %92, %85, %50
  %766 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %766)
  %767 = load i32, i32* %23, align 4
  switch i32 %767, label %769 [
    i32 0, label %768
    i32 1, label %768
  ]

768:                                              ; preds = %765, %765
  ret void

769:                                              ; preds = %765
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsIP4(i32*) #2

declare dso_local i32 @GetIpHeaderSize(i32*, i32) #2

declare dso_local i32 @READ_UINT(i32*) #2

declare dso_local %struct.TYPE_50__* @SearchClientToServerIPsecSaBySpi(%struct.TYPE_51__*, i32) #2

declare dso_local i64 @Rand64(...) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_53__* @Search(i32, %struct.TYPE_53__*) #2

declare dso_local i32 @SendInformationalExchangePacketEx(%struct.TYPE_51__*, %struct.TYPE_53__*, i32, i32, i64, i64) #2

declare dso_local i32 @IkeNewNoticeErrorInvalidSpiPayload(i32) #2

declare dso_local i32 @SendDeleteIPsecSaPacket(%struct.TYPE_51__*, %struct.TYPE_53__*, i32) #2

declare dso_local i32 @IsIPsecSaTunnelMode(%struct.TYPE_50__*) #2

declare dso_local i32 @IkeHMac(%struct.TYPE_58__*, i32*, i32, i32, i32*, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_54__* @IkeDecrypt(i32*, i32, %struct.TYPE_52__*) #2

declare dso_local %struct.TYPE_54__* @NewBuf(...) #2

declare dso_local i32 @Endian16(i32) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_54__*, i32*, i32) #2

declare dso_local %struct.TYPE_49__* @ParsePacket(i32*, i32) #2

declare dso_local i32 @UINTToIP(i32*, i32) #2

declare dso_local i32 @IPV4_GET_OFFSET(%struct.TYPE_59__*) #2

declare dso_local i32 @IPV4_GET_FLAGS(%struct.TYPE_59__*) #2

declare dso_local i32 @ProcIPsecEtherIPPacketRecv(%struct.TYPE_51__*, %struct.TYPE_53__*, i32*, i32, i32) #2

declare dso_local i32 @ProcL2TPv3PacketRecv(%struct.TYPE_51__*, %struct.TYPE_53__*, i32*, i32, i32) #2

declare dso_local i32 @SetIP6(i32*, i32) #2

declare dso_local i32 @IPV6_GET_FLAGS(i32*) #2

declare dso_local i32 @FreePacket(%struct.TYPE_49__*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_54__*) #2

declare dso_local i32 @ProcIPsecUdpPacketRecv(%struct.TYPE_51__*, %struct.TYPE_53__*, i32*, i32) #2

declare dso_local i32 @SetIkeClientEndpoint(%struct.TYPE_51__*, %struct.TYPE_53__*, i32*, i64, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
