; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_aw_pulse_set2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_aw_pulse_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i64, double* }

@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, %struct.TYPE_6__*)* @aw_pulse_set2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_pulse_set2(%struct.TYPE_5__* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca [9 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %47, %39
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %40

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 32, i32* %16, align 4
  br label %79

65:                                               ; preds = %61
  store i32 8, i32* %16, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %64
  br label %81

80:                                               ; preds = %54
  store i32 16, i32* %16, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %16, align 4
  %93 = sdiv i32 %92, 2
  %94 = sub nsw i32 %91, %93
  br label %96

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i32 [ %94, %90 ], [ 0, %95 ]
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 -2
  %100 = call i32 @memset(i32* %99, i32 0, i32 8)
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @memset(i32* %101, i32 -1, i32 20)
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = call i32 @memset(i32* %104, i32 0, i32 8)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %167

114:                                              ; preds = %96
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %160, %114
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @MAX_FRAMESIZE, align 4
  %119 = sdiv i32 %118, 2
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %166

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %19, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = ashr i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32* %129, i32** %20, align 8
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %130, 15
  %132 = sub nsw i32 16, %131
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = shl i32 65535, %133
  %135 = load i32*, i32** %20, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %20, align 8
  %137 = load i32, i32* %135, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %135, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp sge i32 %142, 16
  br i1 %143, label %144, label %153

144:                                              ; preds = %121
  %145 = load i32*, i32** %20, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %20, align 8
  store i32 0, i32* %145, align 4
  %147 = load i32, i32* %19, align 4
  %148 = sub nsw i32 %147, 16
  %149 = ashr i32 65535, %148
  %150 = load i32*, i32** %20, align 8
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %159

153:                                              ; preds = %121
  %154 = load i32, i32* %19, align 4
  %155 = ashr i32 65535, %154
  %156 = load i32*, i32** %20, align 8
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %155
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %144
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %15, align 4
  br label %116

166:                                              ; preds = %116
  br label %167

167:                                              ; preds = %166, %96
  %168 = load i32*, i32** %7, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load i32, i32* %8, align 4
  %177 = mul nsw i32 2, %176
  %178 = sub nsw i32 5, %177
  br label %180

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi i32 [ %178, %175 ], [ 4, %179 ]
  %182 = call i32 @get_bits(i32* %168, i32 %181)
  store i32 %182, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %183

183:                                              ; preds = %279, %180
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %282

187:                                              ; preds = %183
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %193, %187
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %15, align 4
  br label %189

199:                                              ; preds = %189
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @MAX_FRAMESIZE, align 4
  %202 = sdiv i32 %201, 2
  %203 = icmp sge i32 %200, %202
  br i1 %203, label %204, label %251

204:                                              ; preds = %199
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 15, i32* %15, align 4
  br label %239

210:                                              ; preds = %204
  %211 = load i32*, i32** %11, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 31, i32* %15, align 4
  br label %238

216:                                              ; preds = %210
  %217 = load i32*, i32** %11, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 47, i32* %15, align 4
  br label %237

222:                                              ; preds = %216
  %223 = load i32*, i32** %11, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 63, i32* %15, align 4
  br label %236

228:                                              ; preds = %222
  %229 = load i32*, i32** %11, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  store i32 79, i32* %15, align 4
  br label %235

234:                                              ; preds = %228
  store i32 -1, i32* %5, align 4
  br label %328

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %235, %227
  br label %237

237:                                              ; preds = %236, %221
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %209
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %15, align 4
  %242 = ashr i32 %241, 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @av_log2_16bit(i32 %245)
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = sub nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %239, %199
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %15, align 4
  %254 = ashr i32 %253, 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %15, align 4
  %259 = and i32 %258, 15
  %260 = ashr i32 32768, %259
  %261 = and i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %251
  %264 = load i32, i32* %15, align 4
  %265 = and i32 %264, 15
  %266 = ashr i32 32768, %265
  %267 = xor i32 %266, -1
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %15, align 4
  %270 = ashr i32 %269, 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %267
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %15, align 4
  store i32 %277, i32* %18, align 4
  br label %278

278:                                              ; preds = %263, %251
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %183

282:                                              ; preds = %183
  %283 = load i32, i32* %18, align 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  store i32 %283, i32* %290, align 4
  %291 = load i32*, i32** %7, align 8
  %292 = call i64 @get_bits1(i32* %291)
  %293 = icmp ne i64 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, double -1.000000e+00, double 1.000000e+00
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 3
  %298 = load double*, double** %297, align 8
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds double, double* %298, i64 %301
  store double %295, double* %302, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %304, align 8
  %307 = load i32, i32* @MAX_FRAMESIZE, align 4
  %308 = sdiv i32 %307, 2
  %309 = load i32, i32* %18, align 4
  %310 = sub nsw i32 %308, %309
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = srem i32 %310, %313
  store i32 %314, i32* %14, align 4
  %315 = load i32, i32* %14, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %282
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sub nsw i32 %320, %321
  br label %324

323:                                              ; preds = %282
  br label %324

324:                                              ; preds = %323, %317
  %325 = phi i32 [ %322, %317 ], [ 0, %323 ]
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 4
  store i32 0, i32* %5, align 4
  br label %328

328:                                              ; preds = %324, %234
  %329 = load i32, i32* %5, align 4
  ret i32 %329
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @av_log2_16bit(i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
