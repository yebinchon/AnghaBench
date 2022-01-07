; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactUdp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactUdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64, i8*, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_23__*, i64, i32, i32, i64, i64 }
%struct.TYPE_23__ = type { i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }

@SOCK_LATER = common dso_local global i64 0, align 8
@MAX_NUM_IGNORE_ERRORS = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_WSD = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_SSDP = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_NBTDGM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NatTransactUdp(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i64 0, i64* %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = icmp eq %struct.TYPE_19__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %2
  store i32 1, i32* %3, align 4
  br label %378

28:                                               ; preds = %24
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %358

37:                                               ; preds = %28
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = call %struct.TYPE_23__* @NewUDP(i32 0)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 8
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = icmp eq %struct.TYPE_23__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %358

51:                                               ; preds = %42
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = call i64 @IPToUINT(i32* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 12
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 9
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @JoinSockToSockEvent(%struct.TYPE_23__* %68, i32 %71)
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @UINTToIP(i32* %9, i64 %87)
  br label %94

89:                                               ; preds = %76
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @UINTToIP(i32* %9, i64 %92)
  br label %94

94:                                               ; preds = %89, %84
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %94, %192
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @RecvFrom(%struct.TYPE_23__* %98, i32* %12, i64* %13, i8* %99, i32 65536)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @SOCK_LATER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %193

105:                                              ; preds = %95
  %106 = load i64, i64* %7, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %358

116:                                              ; preds = %108
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* @MAX_NUM_IGNORE_ERRORS, align 8
  %120 = icmp sgt i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %358

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  br label %191

124:                                              ; preds = %105
  %125 = call i64 @IPToUINT(i32* %12)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %152, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 4294967295
  br i1 %134, label %152, label %135

135:                                              ; preds = %130
  %136 = call i64 @IPToUINT(i32* %12)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %190

141:                                              ; preds = %135
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %190

146:                                              ; preds = %141
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %190

152:                                              ; preds = %146, %130, %124
  %153 = load i64, i64* %7, align 8
  %154 = call i8* @Malloc(i64 %153)
  store i8* %154, i8** %14, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @Copy(i8* %155, i8* %156, i64 %157)
  %159 = load i8*, i8** %14, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call %struct.TYPE_22__* @NewBlock(i8* %159, i64 %160, i32 0)
  store %struct.TYPE_22__* %161, %struct.TYPE_22__** %8, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %163 = icmp ne %struct.TYPE_22__* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %152
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* @SPECIAL_UDP_PORT_WSD, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* @SPECIAL_UDP_PORT_SSDP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168, %164
  %173 = call i64 @IPToUINT(i32* %12)
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %152
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %182 = call i32 @InsertQueue(i32 %180, %struct.TYPE_22__* %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %177, %146, %141, %135
  br label %191

191:                                              ; preds = %190, %123
  br label %192

192:                                              ; preds = %191
  br label %95

193:                                              ; preds = %104
  br label %194

194:                                              ; preds = %335, %193
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 10
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.TYPE_22__* @GetNext(i32 %197)
  store %struct.TYPE_22__* %198, %struct.TYPE_22__** %8, align 8
  %199 = icmp ne %struct.TYPE_22__* %198, null
  br i1 %199, label %200, label %336

200:                                              ; preds = %194
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* @SPECIAL_UDP_PORT_NBTDGM, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %242

204:                                              ; preds = %200
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %208, %struct.TYPE_20__** %18, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %210 = icmp ne %struct.TYPE_20__* %209, null
  br i1 %210, label %211, label %241

211:                                              ; preds = %204
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = icmp uge i64 %215, 16
  br i1 %216, label %217, label %241

217:                                              ; preds = %211
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %217
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @Endian16(i64 %228)
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %225
  %235 = call i32* (...) @GetHostIPAddressList()
  store i32* %235, i32** %17, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 1, i32* %16, align 4
  br label %239

239:                                              ; preds = %238, %234
  br label %240

240:                                              ; preds = %239, %225, %217
  br label %241

241:                                              ; preds = %240, %211, %204
  br label %242

242:                                              ; preds = %241, %200
  %243 = load i32, i32* %16, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = load i64, i64* %11, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @SendTo(%struct.TYPE_23__* %248, i32* %9, i64 %249, i64 %252, i32 %255)
  store i64 %256, i64* %15, align 8
  br label %309

257:                                              ; preds = %242
  store i64 0, i64* %19, align 8
  br label %258

258:                                              ; preds = %305, %257
  %259 = load i64, i64* %19, align 8
  %260 = load i32*, i32** %17, align 8
  %261 = call i64 @LIST_NUM(i32* %260)
  %262 = icmp slt i64 %259, %261
  br i1 %262, label %263, label %308

263:                                              ; preds = %258
  %264 = load i32*, i32** %17, align 8
  %265 = load i64, i64* %19, align 8
  %266 = call i32* @LIST_DATA(i32* %264, i64 %265)
  store i32* %266, i32** %20, align 8
  %267 = load i32*, i32** %20, align 8
  %268 = call i64 @IsIP4(i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %304

270:                                              ; preds = %263
  %271 = load i32*, i32** %20, align 8
  %272 = call i32 @IsZeroIp(i32* %271)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %304

274:                                              ; preds = %270
  %275 = load i32*, i32** %20, align 8
  %276 = call i32 @IsLocalHostIP(i32* %275)
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %304

278:                                              ; preds = %274
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %282, %struct.TYPE_20__** %21, align 8
  %283 = load i32*, i32** %20, align 8
  %284 = call i64 @IPToUINT(i32* %283)
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 9
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @Endian16(i64 %289)
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %294, align 8
  %296 = load i64, i64* %11, align 8
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @SendTo(%struct.TYPE_23__* %295, i32* %9, i64 %296, i64 %299, i32 %302)
  store i64 %303, i64* %15, align 8
  br label %304

304:                                              ; preds = %278, %274, %270, %263
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %19, align 8
  %307 = add nsw i64 %306, 1
  store i64 %307, i64* %19, align 8
  br label %258

308:                                              ; preds = %258
  br label %309

309:                                              ; preds = %308, %245
  %310 = load i32*, i32** %17, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load i32*, i32** %17, align 8
  %314 = call i32 @FreeHostIPAddressList(i32* %313)
  br label %315

315:                                              ; preds = %312, %309
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %317 = call i32 @FreeBlock(%struct.TYPE_22__* %316)
  %318 = load i64, i64* %15, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 8
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %358

328:                                              ; preds = %320
  br label %335

329:                                              ; preds = %315
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 5
  store i64 %332, i64* %334, align 8
  br label %335

335:                                              ; preds = %329, %328
  br label %194

336:                                              ; preds = %194
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %339, %342
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp slt i64 %343, %346
  br i1 %347, label %356, label %348

348:                                              ; preds = %336
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 5
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp sgt i64 %351, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %348, %336
  br label %358

357:                                              ; preds = %348
  store i32 1, i32* %3, align 4
  br label %378

358:                                              ; preds = %356, %327, %121, %115, %50, %36
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %358
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 8
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %365, align 8
  %367 = call i32 @Disconnect(%struct.TYPE_23__* %366)
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 8
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %369, align 8
  %371 = call i32 @ReleaseSock(%struct.TYPE_23__* %370)
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %373, align 8
  br label %374

374:                                              ; preds = %363, %358
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %377 = call i32 @DeleteNatUdp(%struct.TYPE_19__* %375, %struct.TYPE_21__* %376)
  store i32 0, i32* %3, align 4
  br label %378

378:                                              ; preds = %374, %357, %27
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local %struct.TYPE_23__* @NewUDP(i32) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i64 @RecvFrom(%struct.TYPE_23__*, i32*, i64*, i8*, i32) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @Copy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_22__* @NewBlock(i8*, i64, i32) #1

declare dso_local i32 @InsertQueue(i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @GetNext(i32) #1

declare dso_local i64 @Endian16(i64) #1

declare dso_local i32* @GetHostIPAddressList(...) #1

declare dso_local i64 @SendTo(%struct.TYPE_23__*, i32*, i64, i64, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i32 @IsLocalHostIP(i32*) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_22__*) #1

declare dso_local i32 @Disconnect(%struct.TYPE_23__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_23__*) #1

declare dso_local i32 @DeleteNatUdp(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
