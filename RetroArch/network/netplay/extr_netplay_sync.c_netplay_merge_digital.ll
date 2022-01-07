; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_merge_digital.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_merge_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32, %struct.TYPE_8__* }
%struct.delta_frame = type { %struct.TYPE_8__** }
%struct.vote_count = type { i64* }

@NETPLAY_SHARE_DIGITAL_BITS = common dso_local global i32 0, align 4
@NETPLAY_SHARE_DIGITAL_VOTE = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.delta_frame*, i64, i64, i64*)* @netplay_merge_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_merge_digital(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.delta_frame* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.delta_frame*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x %struct.vote_count], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.delta_frame* %2, %struct.delta_frame** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NETPLAY_SHARE_DIGITAL_BITS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.delta_frame*, %struct.delta_frame** %9, align 8
  %32 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %13, align 8
  br label %37

37:                                               ; preds = %62, %6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %40
  br label %62

54:                                               ; preds = %45
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %54, %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %13, align 8
  br label %37

66:                                               ; preds = %37
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @NETPLAY_SHARE_DIGITAL_VOTE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %225

70:                                               ; preds = %66
  store i64 0, i64* %21, align 8
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %18, align 4
  %73 = icmp ult i32 %72, 3
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  store i32 0, i32* %19, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %19, align 4
  %77 = icmp ult i32 %76, 32
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* %18, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [3 x %struct.vote_count], [3 x %struct.vote_count]* %20, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.vote_count, %struct.vote_count* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %19, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %19, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %75

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %18, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %71

94:                                               ; preds = %71
  store i64 0, i64* %16, align 8
  br label %95

95:                                               ; preds = %179, %94
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @MAX_CLIENTS, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %182

99:                                               ; preds = %95
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %16, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  %105 = and i64 %100, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %179

108:                                              ; preds = %99
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = load %struct.delta_frame*, %struct.delta_frame** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call %struct.TYPE_8__* @netplay_device_client_state(%struct.TYPE_7__* %109, %struct.delta_frame* %110, i64 %111, i64 %112)
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %13, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %179

117:                                              ; preds = %108
  %118 = load i64, i64* %21, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %21, align 8
  store i64 0, i64* %14, align 8
  br label %120

120:                                              ; preds = %175, %117
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %120
  %127 = load i64*, i64** %12, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %175

133:                                              ; preds = %126
  store i64 0, i64* %15, align 8
  br label %134

134:                                              ; preds = %171, %133
  %135 = load i64, i64* %15, align 8
  %136 = icmp ult i64 %135, 32
  br i1 %136, label %137, label %174

137:                                              ; preds = %134
  %138 = load i64*, i64** %12, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %15, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = and i64 %141, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %137
  br label %171

149:                                              ; preds = %137
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %15, align 8
  %157 = trunc i64 %156 to i32
  %158 = shl i32 1, %157
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %149
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds [3 x %struct.vote_count], [3 x %struct.vote_count]* %20, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.vote_count, %struct.vote_count* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %15, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  br label %170

170:                                              ; preds = %161, %149
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i64, i64* %15, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %15, align 8
  br label %134

174:                                              ; preds = %134
  br label %175

175:                                              ; preds = %174, %132
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %14, align 8
  br label %120

178:                                              ; preds = %120
  br label %179

179:                                              ; preds = %178, %116, %107
  %180 = load i64, i64* %16, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %16, align 8
  br label %95

182:                                              ; preds = %95
  %183 = load i64, i64* %21, align 8
  %184 = udiv i64 %183, 2
  store i64 %184, i64* %21, align 8
  store i64 0, i64* %14, align 8
  br label %185

185:                                              ; preds = %221, %182
  %186 = load i64, i64* %14, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %185
  store i64 0, i64* %15, align 8
  br label %192

192:                                              ; preds = %217, %191
  %193 = load i64, i64* %15, align 8
  %194 = icmp ult i64 %193, 32
  br i1 %194, label %195, label %220

195:                                              ; preds = %192
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds [3 x %struct.vote_count], [3 x %struct.vote_count]* %20, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.vote_count, %struct.vote_count* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* %15, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %21, align 8
  %204 = icmp ugt i64 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %195
  %206 = load i64, i64* %15, align 8
  %207 = trunc i64 %206 to i32
  %208 = shl i32 1, %207
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %14, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %208
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %205, %195
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %15, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %15, align 8
  br label %192

220:                                              ; preds = %192
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %14, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %14, align 8
  br label %185

224:                                              ; preds = %185
  br label %364

225:                                              ; preds = %66
  store i64 0, i64* %16, align 8
  br label %226

226:                                              ; preds = %360, %225
  %227 = load i64, i64* %16, align 8
  %228 = load i64, i64* @MAX_CLIENTS, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %363

230:                                              ; preds = %226
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %16, align 8
  %233 = trunc i64 %232 to i32
  %234 = shl i32 1, %233
  %235 = sext i32 %234 to i64
  %236 = and i64 %231, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  br label %360

239:                                              ; preds = %230
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = load %struct.delta_frame*, %struct.delta_frame** %9, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %16, align 8
  %244 = call %struct.TYPE_8__* @netplay_device_client_state(%struct.TYPE_7__* %240, %struct.delta_frame* %241, i64 %242, i64 %243)
  store %struct.TYPE_8__* %244, %struct.TYPE_8__** %13, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %246 = icmp ne %struct.TYPE_8__* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %239
  br label %360

248:                                              ; preds = %239
  store i64 0, i64* %14, align 8
  br label %249

249:                                              ; preds = %356, %248
  %250 = load i64, i64* %14, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ult i64 %250, %253
  br i1 %254, label %255, label %359

255:                                              ; preds = %249
  %256 = load i64*, i64** %12, align 8
  %257 = load i64, i64* %14, align 8
  %258 = getelementptr inbounds i64, i64* %256, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %255
  br label %356

262:                                              ; preds = %255
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %14, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %22, align 8
  %270 = load i64*, i64** %12, align 8
  %271 = load i64, i64* %14, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, -1
  br i1 %274, label %275, label %300

275:                                              ; preds = %262
  %276 = load i32, i32* %17, align 4
  switch i32 %276, label %288 [
    i32 128, label %277
  ]

277:                                              ; preds = %275
  %278 = load i64, i64* %22, align 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* %14, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = xor i64 %285, %278
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  br label %299

288:                                              ; preds = %275
  %289 = load i64, i64* %22, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* %14, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = or i64 %296, %289
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 4
  br label %299

299:                                              ; preds = %288, %277
  br label %355

300:                                              ; preds = %262
  store i64 0, i64* %15, align 8
  br label %301

301:                                              ; preds = %351, %300
  %302 = load i64, i64* %15, align 8
  %303 = icmp ult i64 %302, 32
  br i1 %303, label %304, label %354

304:                                              ; preds = %301
  %305 = load i64*, i64** %12, align 8
  %306 = load i64, i64* %14, align 8
  %307 = getelementptr inbounds i64, i64* %305, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* %15, align 8
  %310 = trunc i64 %309 to i32
  %311 = shl i32 1, %310
  %312 = sext i32 %311 to i64
  %313 = and i64 %308, %312
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %304
  br label %351

316:                                              ; preds = %304
  %317 = load i32, i32* %17, align 4
  switch i32 %317, label %334 [
    i32 128, label %318
  ]

318:                                              ; preds = %316
  %319 = load i64, i64* %22, align 8
  %320 = load i64, i64* %15, align 8
  %321 = trunc i64 %320 to i32
  %322 = shl i32 1, %321
  %323 = sext i32 %322 to i64
  %324 = and i64 %319, %323
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = load i64, i64* %14, align 8
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = xor i64 %331, %324
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %329, align 4
  br label %350

334:                                              ; preds = %316
  %335 = load i64, i64* %22, align 8
  %336 = load i64, i64* %15, align 8
  %337 = trunc i64 %336 to i32
  %338 = shl i32 1, %337
  %339 = sext i32 %338 to i64
  %340 = and i64 %335, %339
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* %14, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = or i64 %347, %340
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %345, align 4
  br label %350

350:                                              ; preds = %334, %318
  br label %351

351:                                              ; preds = %350, %315
  %352 = load i64, i64* %15, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %15, align 8
  br label %301

354:                                              ; preds = %301
  br label %355

355:                                              ; preds = %354, %299
  br label %356

356:                                              ; preds = %355, %261
  %357 = load i64, i64* %14, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %14, align 8
  br label %249

359:                                              ; preds = %249
  br label %360

360:                                              ; preds = %359, %247, %238
  %361 = load i64, i64* %16, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* %16, align 8
  br label %226

363:                                              ; preds = %226
  br label %364

364:                                              ; preds = %363, %224
  ret void
}

declare dso_local %struct.TYPE_8__* @netplay_device_client_state(%struct.TYPE_7__*, %struct.delta_frame*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
