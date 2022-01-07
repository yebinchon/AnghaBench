; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParsePacketEx4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParsePacketEx4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32*, i64, i64, i32, i64, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, i32, %struct.TYPE_18__*, i32, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }

@MAC_PROTO_TAGVLAN = common dso_local global i64 0, align 8
@L3_BPDU = common dso_local global i64 0, align 8
@L3_IPV4 = common dso_local global i64 0, align 8
@L3_IPV6 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@TCP_SYN = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@TCP_FIN = common dso_local global i32 0, align 4
@L4_UDP = common dso_local global i64 0, align 8
@L7_DHCPV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @ParsePacketEx4(i32* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_22__*, align 8
  %31 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %7
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %7
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %405

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @MAC_PROTO_TAGVLAN, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* %12, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @Endian16(i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = call %struct.TYPE_23__* @ZeroMallocFast(i32 104)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %16, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 13
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp sge i64 %51, 24
  br i1 %52, label %53, label %184

53:                                               ; preds = %43
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 13
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 16
  %66 = call i32 @READ_USHORT(i32* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, 14
  store i64 %72, i64* %19, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %19, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i64, i64* %19, align 8
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %76, %69
  br label %79

79:                                               ; preds = %78, %63
  br label %183

80:                                               ; preds = %58, %53
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 12
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 134
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 221
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 18
  %93 = call i32 @READ_USHORT(i32* %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp sge i32 %94, 1
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, 14
  %100 = add nsw i64 %99, 40
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %21, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i64, i64* %21, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %96
  br label %107

107:                                              ; preds = %106, %90
  br label %182

108:                                              ; preds = %85, %80
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 12
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds i32, i32* %17, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %181

115:                                              ; preds = %108
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 13
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds i32, i32* %17, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %181

122:                                              ; preds = %115
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 16
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 17
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 20
  %135 = call i32 @READ_USHORT(i32* %134)
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %22, align 4
  %137 = icmp sge i32 %136, 1
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load i32, i32* %22, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, 14
  %142 = add nsw i64 %141, 4
  store i64 %142, i64* %23, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %23, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i64, i64* %23, align 8
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %146, %138
  br label %149

149:                                              ; preds = %148, %132
  br label %180

150:                                              ; preds = %127, %122
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 16
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 134
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 17
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 221
  br i1 %159, label %160, label %179

160:                                              ; preds = %155
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 22
  %163 = call i32 @READ_USHORT(i32* %162)
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* %24, align 4
  %165 = icmp sge i32 %164, 1
  br i1 %165, label %166, label %178

166:                                              ; preds = %160
  %167 = load i32, i32* %24, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, 14
  %170 = add nsw i64 %169, 40
  %171 = add nsw i64 %170, 4
  store i64 %171, i64* %25, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %25, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i64, i64* %25, align 8
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %175, %166
  br label %178

178:                                              ; preds = %177, %160
  br label %179

179:                                              ; preds = %178, %155, %150
  br label %180

180:                                              ; preds = %179, %149
  br label %181

181:                                              ; preds = %180, %115, %108
  br label %182

182:                                              ; preds = %181, %107
  br label %183

183:                                              ; preds = %182, %79
  br label %184

184:                                              ; preds = %183, %43
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @ParsePacketL2Ex(%struct.TYPE_23__* %185, i32* %186, i64 %187, i32 %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %193 = call i32 @FreePacket(%struct.TYPE_23__* %192)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %405

194:                                              ; preds = %184
  %195 = load i32*, i32** %9, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  store i32* %195, i32** %197, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 12
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 10
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 9
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 10
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 11
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %194
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @L3_BPDU, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %217
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %226, align 8
  %228 = icmp ne %struct.TYPE_19__* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %229, %223
  br label %239

239:                                              ; preds = %238, %217
  br label %240

240:                                              ; preds = %239, %194
  %241 = load i32, i32* %14, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %365

243:                                              ; preds = %240
  %244 = call i32 @Endian16(i32 80)
  store i32 %244, i32* %26, align 4
  %245 = call i32 @Endian16(i32 8080)
  store i32 %245, i32* %27, align 4
  %246 = call i32 @Endian16(i32 443)
  store i32 %246, i32* %28, align 4
  %247 = call i32 @Endian16(i32 3128)
  store i32 %247, i32* %29, align 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @L3_IPV4, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %243
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @L3_IPV6, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %364

259:                                              ; preds = %253, %243
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @L4_TCP, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %364

265:                                              ; preds = %259
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  store %struct.TYPE_22__* %269, %struct.TYPE_22__** %30, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %271 = icmp ne %struct.TYPE_22__* %270, null
  br i1 %271, label %272, label %322

272:                                              ; preds = %265
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %26, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %290, label %278

278:                                              ; preds = %272
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %27, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %290, label %284

284:                                              ; preds = %278
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %29, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %322

290:                                              ; preds = %284, %278, %272
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @TCP_SYN, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %322, label %297

297:                                              ; preds = %290
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @TCP_RST, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %322, label %304

304:                                              ; preds = %297
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @TCP_FIN, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %304
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = icmp sge i32 %314, 1
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %318 = call i32 @ParseHttpAccessLog(%struct.TYPE_23__* %317)
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 6
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %316, %311
  br label %322

322:                                              ; preds = %321, %304, %297, %290, %284, %265
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %324 = icmp ne %struct.TYPE_22__* %323, null
  br i1 %324, label %325, label %363

325:                                              ; preds = %322
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %28, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %363

331:                                              ; preds = %325
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @TCP_SYN, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %363, label %338

338:                                              ; preds = %331
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @TCP_RST, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %363, label %345

345:                                              ; preds = %338
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @TCP_FIN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %363, label %352

352:                                              ; preds = %345
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = icmp sge i32 %355, 1
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %359 = call i32 @ParseHttpsAccessLog(%struct.TYPE_23__* %358)
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 6
  store i32 %359, i32* %361, align 4
  br label %362

362:                                              ; preds = %357, %352
  br label %363

363:                                              ; preds = %362, %345, %338, %331, %325, %322
  br label %364

364:                                              ; preds = %363, %259, %253
  br label %365

365:                                              ; preds = %364, %240
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @L3_IPV4, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %397

371:                                              ; preds = %365
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @L4_UDP, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %397

377:                                              ; preds = %371
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 4
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @L7_DHCPV4, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %397

383:                                              ; preds = %377
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %385 = call %struct.TYPE_24__* @ParseDHCPv4Data(%struct.TYPE_23__* %384)
  store %struct.TYPE_24__* %385, %struct.TYPE_24__** %31, align 8
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %387 = icmp ne %struct.TYPE_24__* %386, null
  br i1 %387, label %388, label %396

388:                                              ; preds = %383
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 5
  store i32 %391, i32* %393, align 8
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %395 = call i32 @FreeDHCPv4Data(%struct.TYPE_24__* %394)
  br label %396

396:                                              ; preds = %388, %383
  br label %397

397:                                              ; preds = %396, %377, %371, %365
  %398 = load i32, i32* %15, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %402 = call i32 @CorrectChecksum(%struct.TYPE_23__* %401)
  br label %403

403:                                              ; preds = %400, %397
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %404, %struct.TYPE_23__** %8, align 8
  br label %405

405:                                              ; preds = %403, %191, %37
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  ret %struct.TYPE_23__* %406
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local %struct.TYPE_23__* @ZeroMallocFast(i32) #1

declare dso_local i32 @READ_USHORT(i32*) #1

declare dso_local i32 @ParsePacketL2Ex(%struct.TYPE_23__*, i32*, i64, i32) #1

declare dso_local i32 @FreePacket(%struct.TYPE_23__*) #1

declare dso_local i32 @ParseHttpAccessLog(%struct.TYPE_23__*) #1

declare dso_local i32 @ParseHttpsAccessLog(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ParseDHCPv4Data(%struct.TYPE_23__*) #1

declare dso_local i32 @FreeDHCPv4Data(%struct.TYPE_24__*) #1

declare dso_local i32 @CorrectChecksum(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
