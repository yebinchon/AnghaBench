; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthPutPacketLinuxIpRaw.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthPutPacketLinuxIpRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64, i64, i32, %struct.TYPE_23__*, %struct.TYPE_22__, i32, %struct.TYPE_21__, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i64 }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@L4_ICMPV4 = common dso_local global i64 0, align 8
@L4_FRAGMENT = common dso_local global i64 0, align 8
@L3_ARPV4 = common dso_local global i64 0, align 8
@IP_PROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EthPutPacketLinuxIpRaw(%struct.TYPE_26__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = icmp eq %struct.TYPE_26__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  br label %349

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 14
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %24, %21
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @Free(i8* %34)
  br label %349

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.TYPE_25__* @ParsePacket(i8* %37, i32 %38)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %7, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = icmp eq %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @Free(i8* %43)
  br label %349

45:                                               ; preds = %36
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @Cmp(i32 %53, i32 %56, i32 6)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %50, %45
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IsValidUnicastMacAddress(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Copy(i32 %68, i32 %71, i32 6)
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IsZero(i32 %77, i32 6)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IsValidUnicastMacAddress(i32 %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @Cmp(i32 %94, i32 %97, i32 6)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91, %80, %74
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @Free(i8* %101)
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %104 = call i32 @FreePacket(%struct.TYPE_25__* %103)
  br label %349

105:                                              ; preds = %91, %86
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @L3_IPV4, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %179

111:                                              ; preds = %105
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @L4_TCP, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = call i32 @IsZeroIP(i32* %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %8, align 8
  br label %126

126:                                              ; preds = %122, %117
  br label %178

127:                                              ; preds = %111
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @L4_UDP, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = call i32 @EthProcessIpPacketInnerIpRaw(%struct.TYPE_26__* %134, %struct.TYPE_25__* %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %8, align 8
  br label %142

142:                                              ; preds = %138, %133
  br label %177

143:                                              ; preds = %127
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @L4_ICMPV4, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = call i32 @IsZeroIP(i32* %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  store %struct.TYPE_24__* %157, %struct.TYPE_24__** %8, align 8
  br label %158

158:                                              ; preds = %154, %149
  br label %176

159:                                              ; preds = %143
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @L4_FRAGMENT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = call i32 @IsZeroIP(i32* %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %8, align 8
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174, %159
  br label %176

176:                                              ; preds = %175, %158
  br label %177

177:                                              ; preds = %176, %142
  br label %178

178:                                              ; preds = %177, %126
  br label %190

179:                                              ; preds = %105
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @L3_ARPV4, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %188 = call i32 @EthProcessIpPacketInnerIpRaw(%struct.TYPE_26__* %186, %struct.TYPE_25__* %187)
  br label %189

189:                                              ; preds = %185, %179
  br label %190

190:                                              ; preds = %189, %178
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %192 = icmp ne %struct.TYPE_24__* %191, null
  br i1 %192, label %193, label %344

193:                                              ; preds = %190
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %344

201:                                              ; preds = %193
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %344

206:                                              ; preds = %201
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 1
  %215 = call i64 @IPToUINT(i32* %214)
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %344

217:                                              ; preds = %206
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  store %struct.TYPE_23__* %220, %struct.TYPE_23__** %9, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %222, align 8
  store %struct.TYPE_23__* %223, %struct.TYPE_23__** %10, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %226 = ptrtoint %struct.TYPE_23__* %224 to i64
  %227 = ptrtoint %struct.TYPE_23__* %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 24
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %11, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %343

236:                                              ; preds = %217
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sub nsw i32 %239, %240
  store i32 %241, i32* %13, align 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @L4_UDP, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %236
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  store i64 0, i64* %252, align 8
  br label %289

253:                                              ; preds = %236
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @L4_TCP, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %288

259:                                              ; preds = %253
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = call i64 @IPToUINT(i32* %266)
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @IP_PROTO_TCP, align 4
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %277, align 8
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @CalcChecksumForIPv4(i64 %267, i32 %273, i32 %274, %struct.TYPE_19__* %278, i32 %281, i32 0)
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  store i64 %282, i64* %287, align 8
  br label %288

288:                                              ; preds = %259, %253
  br label %289

289:                                              ; preds = %288, %247
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @UINTToIP(i32* %12, i32 %295)
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %289
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @SendTo(%struct.TYPE_24__* %302, i32* %12, i32 0, %struct.TYPE_23__* %303, i32 %304)
  br label %342

306:                                              ; preds = %289
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  store %struct.TYPE_23__* %310, %struct.TYPE_23__** %14, align 8
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 0
  %313 = call i64 @IPToUINT(i32* %312)
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 1
  store i64 %313, i64* %315, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 2
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %320 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_23__* %319)
  %321 = mul nsw i32 %320, 4
  %322 = call i64 @IpChecksum(%struct.TYPE_23__* %318, i32 %321)
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 2
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %328, align 8
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %331 = ptrtoint %struct.TYPE_23__* %329 to i64
  %332 = ptrtoint %struct.TYPE_23__* %330 to i64
  %333 = sub i64 %331, %332
  %334 = sdiv exact i64 %333, 24
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %334, %338
  %340 = trunc i64 %339 to i32
  %341 = call i32 @SendTo(%struct.TYPE_24__* %325, i32* %12, i32 0, %struct.TYPE_23__* %326, i32 %340)
  br label %342

342:                                              ; preds = %306, %301
  br label %343

343:                                              ; preds = %342, %217
  br label %344

344:                                              ; preds = %343, %206, %201, %193, %190
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %346 = call i32 @FreePacket(%struct.TYPE_25__* %345)
  %347 = load i8*, i8** %5, align 8
  %348 = call i32 @Free(i8* %347)
  br label %349

349:                                              ; preds = %344, %100, %42, %33, %20
  ret void
}

declare dso_local i32 @Free(i8*) #1

declare dso_local %struct.TYPE_25__* @ParsePacket(i8*, i32) #1

declare dso_local i64 @Cmp(i32, i32, i32) #1

declare dso_local i32 @IsValidUnicastMacAddress(i32) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i64 @IsZero(i32, i32) #1

declare dso_local i32 @FreePacket(%struct.TYPE_25__*) #1

declare dso_local i32 @IsZeroIP(i32*) #1

declare dso_local i32 @EthProcessIpPacketInnerIpRaw(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i64 @CalcChecksumForIPv4(i64, i32, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local i32 @SendTo(%struct.TYPE_24__*, i32*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @IpChecksum(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
