; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_init_quantization_noise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_init_quantization_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32**, i32*, i32**, i32**, i32*, i32**, i32**, i32**, i32*, i64, i64 }

@USED_26ABITS = common dso_local global i32 0, align 4
@USED_1ABITS = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@DCA_CODE_BOOKS = common dso_local global i32 0, align 4
@bit_consumption = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @init_quantization_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_quantization_noise(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @USED_26ABITS, align 4
  %18 = load i32, i32* @USED_1ABITS, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @MAX_CHANNELS, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = mul nuw i64 %21, %23
  %26 = alloca [7 x i64], i64 %25, align 16
  store i64 %21, i64* %11, align 8
  store i64 %23, i64* %12, align 8
  %27 = load i32, i32* @MAX_CHANNELS, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %28, %30
  %32 = alloca i64, i64 %31, align 16
  store i64 %28, i64* %13, align 8
  store i64 %30, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 333, %35
  %37 = add nsw i32 132, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 72
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %3
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %223, %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %226

65:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %199, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %202

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %80, %87
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp sge i32 %91, 1312
  br i1 %92, label %93, label %108

93:                                               ; preds = %69
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 26, i32* %103, align 4
  %104 = load i32, i32* @USED_1ABITS, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %198

108:                                              ; preds = %69
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 222
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %112, 222
  %114 = call i8* @mul32(i32 %113, i32 69000000)
  %115 = getelementptr i8, i8* %114, i64 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %116, i32* %126, align 4
  %127 = load i32, i32* @USED_26ABITS, align 4
  %128 = load i32, i32* @USED_1ABITS, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %197

133:                                              ; preds = %108
  %134 = load i32, i32* %16, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = load i32, i32* %16, align 4
  %138 = call i8* @mul32(i32 %137, i32 106000000)
  %139 = getelementptr i8, i8* %138, i64 2
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %140, i32* %150, align 4
  %151 = load i32, i32* @USED_26ABITS, align 4
  %152 = load i32, i32* @USED_1ABITS, align 4
  %153 = or i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %196

157:                                              ; preds = %133
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %16, align 4
  %162 = icmp sge i32 %161, -140
  br i1 %162, label %163, label %178

163:                                              ; preds = %160, %157
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 1, i32* %173, align 4
  %174 = load i32, i32* @USED_26ABITS, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %9, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %195

178:                                              ; preds = %160
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 0, i32* %188, align 4
  %189 = load i32, i32* @USED_26ABITS, align 4
  %190 = load i32, i32* @USED_1ABITS, align 4
  %191 = or i32 %189, %190
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %178, %163
  br label %196

196:                                              ; preds = %195, %136
  br label %197

197:                                              ; preds = %196, %111
  br label %198

198:                                              ; preds = %197, %93
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %66

202:                                              ; preds = %66
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 10
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i64 @set_best_abits_code(i32* %209, i32 32, i32* %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  br label %223

223:                                              ; preds = %202
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %59

226:                                              ; preds = %59
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %300, %226
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %303

233:                                              ; preds = %227
  store i32 0, i32* %8, align 4
  br label %234

234:                                              ; preds = %296, %233
  %235 = load i32, i32* %8, align 4
  %236 = icmp slt i32 %235, 32
  br i1 %236, label %237, label %299

237:                                              ; preds = %234
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 5
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %295

250:                                              ; preds = %237
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 2
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 4
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 8
  %276 = load i32**, i32*** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %276, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = call i32 @calc_one_scale(%struct.TYPE_6__* %251, i32 %262, i32 %273, i32* %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 9
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %284, i32* %294, align 4
  br label %295

295:                                              ; preds = %250, %237
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %8, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %8, align 4
  br label %234

299:                                              ; preds = %234
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %227

303:                                              ; preds = %227
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %305 = call i32 @quantize_adpcm(%struct.TYPE_6__* %304)
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = call i32 @quantize_pcm(%struct.TYPE_6__* %306)
  %308 = bitcast [7 x i64]* %26 to i64**
  %309 = load i32, i32* @MAX_CHANNELS, align 4
  %310 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %311 = mul nsw i32 %309, %310
  %312 = mul nsw i32 %311, 7
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 8
  %315 = trunc i64 %314 to i32
  %316 = call i32 @memset(i64** %308, i32 0, i32 %315)
  %317 = bitcast i64* %32 to i64**
  %318 = load i32, i32* @MAX_CHANNELS, align 4
  %319 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %320 = mul nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = mul i64 %321, 8
  %323 = trunc i64 %322 to i32
  %324 = call i32 @memset(i64** %317, i32 0, i32 %323)
  store i32 0, i32* %7, align 4
  br label %325

325:                                              ; preds = %463, %303
  %326 = load i32, i32* %7, align 4
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %466

331:                                              ; preds = %325
  store i32 0, i32* %8, align 4
  br label %332

332:                                              ; preds = %459, %331
  %333 = load i32, i32* %8, align 4
  %334 = icmp slt i32 %333, 32
  br i1 %334, label %335, label %462

335:                                              ; preds = %332
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 4
  %338 = load i32**, i32*** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %338, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %440

348:                                              ; preds = %335
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 4
  %351 = load i32**, i32*** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %361 = icmp sle i32 %359, %360
  br i1 %361, label %362, label %440

362:                                              ; preds = %348
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 4
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 7
  %376 = load i32**, i32*** %375, align 8
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32*, i32** %376, i64 %378
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, %23
  %388 = getelementptr inbounds [7 x i64], [7 x i64]* %26, i64 %387
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 4
  %391 = load i32**, i32*** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [7 x i64], [7 x i64]* %388, i64 %401
  %403 = getelementptr inbounds [7 x i64], [7 x i64]* %402, i64 0, i64 0
  %404 = call i32 @accumulate_huff_bit_consumption(i32 %373, i32 %384, i64* %403)
  %405 = load i64*, i64** @bit_consumption, align 8
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 4
  %408 = load i32**, i32*** %407, align 8
  %409 = load i32, i32* %7, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64, i64* %405, i64 %417
  %419 = load i64, i64* %418, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = mul nsw i64 %421, %30
  %423 = getelementptr inbounds i64, i64* %32, i64 %422
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 4
  %426 = load i32**, i32*** %425, align 8
  %427 = load i32, i32* %7, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %8, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = sub nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %423, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, %419
  store i64 %439, i64* %437, align 8
  br label %458

440:                                              ; preds = %348, %335
  %441 = load i64*, i64** @bit_consumption, align 8
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 4
  %444 = load i32**, i32*** %443, align 8
  %445 = load i32, i32* %7, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32*, i32** %444, i64 %446
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %441, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* %15, align 8
  %457 = add nsw i64 %456, %455
  store i64 %457, i64* %15, align 8
  br label %458

458:                                              ; preds = %440, %362
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %8, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %8, align 4
  br label %332

462:                                              ; preds = %332
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %7, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %7, align 4
  br label %325

466:                                              ; preds = %325
  store i32 0, i32* %7, align 4
  br label %467

467:                                              ; preds = %493, %466
  %468 = load i32, i32* %7, align 4
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %496

473:                                              ; preds = %467
  %474 = load i32, i32* %7, align 4
  %475 = sext i32 %474 to i64
  %476 = mul nsw i64 %475, %23
  %477 = getelementptr inbounds [7 x i64], [7 x i64]* %26, i64 %476
  %478 = bitcast [7 x i64]* %477 to i64**
  %479 = load i32, i32* %7, align 4
  %480 = sext i32 %479 to i64
  %481 = mul nsw i64 %480, %30
  %482 = getelementptr inbounds i64, i64* %32, i64 %481
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 6
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = call i64 @set_best_code(i64** %478, i64* %482, i32 %489)
  %491 = load i64, i64* %15, align 8
  %492 = add nsw i64 %491, %490
  store i64 %492, i64* %15, align 8
  br label %493

493:                                              ; preds = %473
  %494 = load i32, i32* %7, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %7, align 4
  br label %467

496:                                              ; preds = %467
  %497 = load i64, i64* %15, align 8
  %498 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = add nsw i64 %501, %497
  %503 = trunc i64 %502 to i32
  store i32 %503, i32* %499, align 8
  %504 = load i32, i32* %9, align 4
  %505 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %505)
  ret i32 %504
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @mul32(i32, i32) #2

declare dso_local i64 @set_best_abits_code(i32*, i32, i32*) #2

declare dso_local i32 @calc_one_scale(%struct.TYPE_6__*, i32, i32, i32*) #2

declare dso_local i32 @quantize_adpcm(%struct.TYPE_6__*) #2

declare dso_local i32 @quantize_pcm(%struct.TYPE_6__*) #2

declare dso_local i32 @memset(i64**, i32, i32) #2

declare dso_local i32 @accumulate_huff_bit_consumption(i32, i32, i64*) #2

declare dso_local i64 @set_best_code(i64**, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
