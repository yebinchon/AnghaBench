; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxa.c_decode_13.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxa.c_decode_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MV %d %d out of bounds\0A\00", align 1
@shift1 = common dso_local global i32* null, align 8
@shift2 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown opcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32*, i32, i32*)* @decode_13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_13(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %22, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = ashr i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add i64 12, %44
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @AV_RB32(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = call i32 @AV_RB32(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = add i64 %50, %54
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %7
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %8, align 4
  br label %682

61:                                               ; preds = %7
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  store i32* %63, i32** %16, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = ashr i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %64, i64 %73
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @AV_RB32(i32* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32* %80, i32** %18, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = call i32 @AV_RB32(i32* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  store i32* %86, i32** %19, align 8
  store i32 0, i32* %24, align 4
  br label %87

87:                                               ; preds = %678, %61
  %88 = load i32, i32* %24, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %681

93:                                               ; preds = %87
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %664, %93
  %95 = load i32, i32* %23, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %667

100:                                              ; preds = %94
  %101 = load i32*, i32** %17, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = icmp ugt i32* %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %18, align 8
  %106 = load i32*, i32** %22, align 8
  %107 = icmp ugt i32* %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %19, align 8
  %110 = load i32*, i32** %22, align 8
  %111 = icmp ugt i32* %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %104, %100
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %8, align 4
  br label %682

114:                                              ; preds = %108
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32* %118, i32** %20, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32* %122, i32** %21, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %16, align 8
  %125 = load i32, i32* %123, align 4
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  switch i32 %126, label %657 [
    i32 4, label %127
    i32 0, label %192
    i32 5, label %192
    i32 1, label %212
    i32 10, label %212
    i32 11, label %212
    i32 12, label %212
    i32 13, label %212
    i32 14, label %212
    i32 15, label %212
    i32 2, label %292
    i32 3, label %312
    i32 8, label %330
    i32 32, label %568
    i32 33, label %611
    i32 34, label %611
  ]

127:                                              ; preds = %114
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 4
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %27, align 4
  %132 = and i32 %131, 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* %27, align 4
  %136 = sub nsw i32 8, %135
  store i32 %136, i32* %27, align 4
  br label %137

137:                                              ; preds = %134, %127
  %138 = load i32*, i32** %18, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %18, align 8
  %140 = load i32, i32* %138, align 4
  %141 = and i32 %140, 15
  store i32 %141, i32* %28, align 4
  %142 = load i32, i32* %28, align 4
  %143 = and i32 %142, 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %28, align 4
  %147 = sub nsw i32 8, %146
  store i32 %147, i32* %28, align 4
  br label %148

148:                                              ; preds = %145, %137
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %27, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %176, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %23, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sub nsw i32 %158, 4
  %160 = load i32, i32* %27, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %176, label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %28, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %24, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sub nsw i32 %172, 4
  %174 = load i32, i32* %28, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %167, %162, %153, %148
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %28, align 4
  %181 = call i32 (%struct.TYPE_4__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_4__* %177, i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %182, i32* %8, align 4
  br label %682

183:                                              ; preds = %167
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %12, align 4
  %187 = mul nsw i32 %185, %186
  %188 = add nsw i32 %184, %187
  %189 = load i32*, i32** %21, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %21, align 8
  br label %192

192:                                              ; preds = %114, %114, %183
  store i32 0, i32* %28, align 4
  br label %193

193:                                              ; preds = %208, %192
  %194 = load i32, i32* %28, align 4
  %195 = icmp slt i32 %194, 4
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load i32*, i32** %20, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @memcpy(i32* %197, i32* %198, i32 4)
  %200 = load i32, i32* %12, align 4
  %201 = load i32*, i32** %20, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %20, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i32*, i32** %21, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %21, align 8
  br label %208

208:                                              ; preds = %196
  %209 = load i32, i32* %28, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %28, align 4
  br label %193

211:                                              ; preds = %193
  br label %663

212:                                              ; preds = %114, %114, %114, %114, %114, %114, %114
  %213 = load i32, i32* %26, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32*, i32** %19, align 8
  %217 = call i32 @AV_RB16(i32* %216)
  store i32 %217, i32* %31, align 4
  %218 = load i32*, i32** %19, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  store i32* %219, i32** %19, align 8
  br label %246

220:                                              ; preds = %212
  %221 = load i32, i32* %26, align 4
  %222 = sub nsw i32 %221, 10
  store i32 %222, i32* %26, align 4
  %223 = load i32*, i32** %19, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 240
  %227 = load i32*, i32** @shift1, align 8
  %228 = load i32, i32* %26, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %226, %231
  %233 = load i32*, i32** %19, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 15
  %237 = load i32*, i32** @shift2, align 8
  %238 = load i32, i32* %26, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %236, %241
  %243 = or i32 %232, %242
  store i32 %243, i32* %31, align 4
  %244 = load i32*, i32** %19, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %19, align 8
  br label %246

246:                                              ; preds = %220, %215
  store i32 0, i32* %28, align 4
  br label %247

247:                                              ; preds = %288, %246
  %248 = load i32, i32* %28, align 4
  %249 = icmp slt i32 %248, 4
  br i1 %249, label %250, label %291

250:                                              ; preds = %247
  store i32 0, i32* %27, align 4
  br label %251

251:                                              ; preds = %276, %250
  %252 = load i32, i32* %27, align 4
  %253 = icmp slt i32 %252, 4
  br i1 %253, label %254, label %279

254:                                              ; preds = %251
  %255 = load i32, i32* %31, align 4
  %256 = and i32 %255, 32768
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load i32*, i32** %17, align 8
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %17, align 8
  %261 = load i32, i32* %259, align 4
  br label %268

262:                                              ; preds = %254
  %263 = load i32*, i32** %21, align 8
  %264 = load i32, i32* %27, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  br label %268

268:                                              ; preds = %262, %258
  %269 = phi i32 [ %261, %258 ], [ %267, %262 ]
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %27, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %269, i32* %273, align 4
  %274 = load i32, i32* %31, align 4
  %275 = shl i32 %274, 1
  store i32 %275, i32* %31, align 4
  br label %276

276:                                              ; preds = %268
  %277 = load i32, i32* %27, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %27, align 4
  br label %251

279:                                              ; preds = %251
  %280 = load i32, i32* %12, align 4
  %281 = load i32*, i32** %20, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %20, align 8
  %284 = load i32, i32* %12, align 4
  %285 = load i32*, i32** %21, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %21, align 8
  br label %288

288:                                              ; preds = %279
  %289 = load i32, i32* %28, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %28, align 4
  br label %247

291:                                              ; preds = %247
  br label %663

292:                                              ; preds = %114
  store i32 0, i32* %28, align 4
  br label %293

293:                                              ; preds = %306, %292
  %294 = load i32, i32* %28, align 4
  %295 = icmp slt i32 %294, 4
  br i1 %295, label %296, label %309

296:                                              ; preds = %293
  %297 = load i32*, i32** %20, align 8
  %298 = load i32*, i32** %17, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @memset(i32* %297, i32 %300, i32 4)
  %302 = load i32, i32* %12, align 4
  %303 = load i32*, i32** %20, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %20, align 8
  br label %306

306:                                              ; preds = %296
  %307 = load i32, i32* %28, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %28, align 4
  br label %293

309:                                              ; preds = %293
  %310 = load i32*, i32** %17, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %17, align 8
  br label %663

312:                                              ; preds = %114
  store i32 0, i32* %28, align 4
  br label %313

313:                                              ; preds = %326, %312
  %314 = load i32, i32* %28, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = load i32*, i32** %20, align 8
  %318 = load i32*, i32** %17, align 8
  %319 = call i32 @memcpy(i32* %317, i32* %318, i32 4)
  %320 = load i32*, i32** %17, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  store i32* %321, i32** %17, align 8
  %322 = load i32, i32* %12, align 4
  %323 = load i32*, i32** %20, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %20, align 8
  br label %326

326:                                              ; preds = %316
  %327 = load i32, i32* %28, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %28, align 4
  br label %313

329:                                              ; preds = %313
  br label %663

330:                                              ; preds = %114
  %331 = load i32*, i32** %19, align 8
  %332 = getelementptr inbounds i32, i32* %331, i32 1
  store i32* %332, i32** %19, align 8
  %333 = load i32, i32* %331, align 4
  store i32 %333, i32* %31, align 4
  store i32 0, i32* %25, align 4
  br label %334

334:                                              ; preds = %564, %330
  %335 = load i32, i32* %25, align 4
  %336 = icmp slt i32 %335, 4
  br i1 %336, label %337, label %567

337:                                              ; preds = %334
  %338 = load i32, i32* %25, align 4
  %339 = and i32 %338, 1
  %340 = shl i32 %339, 1
  %341 = load i32, i32* %25, align 4
  %342 = and i32 %341, 2
  %343 = load i32, i32* %12, align 4
  %344 = mul nsw i32 %342, %343
  %345 = add nsw i32 %340, %344
  store i32 %345, i32* %29, align 4
  %346 = load i32, i32* %25, align 4
  %347 = and i32 %346, 1
  %348 = shl i32 %347, 1
  %349 = load i32, i32* %25, align 4
  %350 = and i32 %349, 2
  %351 = load i32, i32* %12, align 4
  %352 = mul nsw i32 %350, %351
  %353 = add nsw i32 %348, %352
  store i32 %353, i32* %30, align 4
  %354 = load i32*, i32** %15, align 8
  %355 = load i32, i32* %23, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %30, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32* %360, i32** %21, align 8
  %361 = load i32, i32* %31, align 4
  %362 = and i32 %361, 192
  switch i32 %362, label %561 [
    i32 128, label %363
    i32 0, label %442
    i32 64, label %485
    i32 192, label %524
  ]

363:                                              ; preds = %337
  %364 = load i32*, i32** %18, align 8
  %365 = load i32, i32* %364, align 4
  %366 = ashr i32 %365, 4
  store i32 %366, i32* %27, align 4
  %367 = load i32, i32* %27, align 4
  %368 = and i32 %367, 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %363
  %371 = load i32, i32* %27, align 4
  %372 = sub nsw i32 8, %371
  store i32 %372, i32* %27, align 4
  br label %373

373:                                              ; preds = %370, %363
  %374 = load i32*, i32** %18, align 8
  %375 = getelementptr inbounds i32, i32* %374, i32 1
  store i32* %375, i32** %18, align 8
  %376 = load i32, i32* %374, align 4
  %377 = and i32 %376, 15
  store i32 %377, i32* %28, align 4
  %378 = load i32, i32* %28, align 4
  %379 = and i32 %378, 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %373
  %382 = load i32, i32* %28, align 4
  %383 = sub nsw i32 8, %382
  store i32 %383, i32* %28, align 4
  br label %384

384:                                              ; preds = %381, %373
  %385 = load i32, i32* %23, align 4
  %386 = load i32, i32* %25, align 4
  %387 = and i32 %386, 1
  %388 = mul nsw i32 2, %387
  %389 = add nsw i32 %385, %388
  %390 = load i32, i32* %27, align 4
  %391 = sub nsw i32 0, %390
  %392 = icmp slt i32 %389, %391
  br i1 %392, label %426, label %393

393:                                              ; preds = %384
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %23, align 4
  %398 = sub nsw i32 %396, %397
  %399 = load i32, i32* %25, align 4
  %400 = and i32 %399, 1
  %401 = mul nsw i32 2, %400
  %402 = sub nsw i32 %398, %401
  %403 = sub nsw i32 %402, 2
  %404 = load i32, i32* %27, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %426, label %406

406:                                              ; preds = %393
  %407 = load i32, i32* %24, align 4
  %408 = load i32, i32* %25, align 4
  %409 = and i32 %408, 2
  %410 = add nsw i32 %407, %409
  %411 = load i32, i32* %28, align 4
  %412 = sub nsw i32 0, %411
  %413 = icmp slt i32 %410, %412
  br i1 %413, label %426, label %414

414:                                              ; preds = %406
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %24, align 4
  %419 = sub nsw i32 %417, %418
  %420 = load i32, i32* %25, align 4
  %421 = and i32 %420, 2
  %422 = sub nsw i32 %419, %421
  %423 = sub nsw i32 %422, 2
  %424 = load i32, i32* %28, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %414, %406, %393, %384
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %428 = load i32, i32* @AV_LOG_ERROR, align 4
  %429 = load i32, i32* %27, align 4
  %430 = load i32, i32* %28, align 4
  %431 = call i32 (%struct.TYPE_4__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_4__* %427, i32 %428, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %429, i32 %430)
  %432 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %432, i32* %8, align 4
  br label %682

433:                                              ; preds = %414
  %434 = load i32, i32* %27, align 4
  %435 = load i32, i32* %28, align 4
  %436 = load i32, i32* %12, align 4
  %437 = mul nsw i32 %435, %436
  %438 = add nsw i32 %434, %437
  %439 = load i32*, i32** %21, align 8
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %439, i64 %440
  store i32* %441, i32** %21, align 8
  br label %442

442:                                              ; preds = %337, %433
  %443 = load i32*, i32** %21, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 0
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %20, align 8
  %447 = load i32, i32* %29, align 4
  %448 = add nsw i32 %447, 0
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  store i32 %445, i32* %450, align 4
  %451 = load i32*, i32** %21, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 1
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %20, align 8
  %455 = load i32, i32* %29, align 4
  %456 = add nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  store i32 %453, i32* %458, align 4
  %459 = load i32*, i32** %21, align 8
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 0, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %459, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32*, i32** %20, align 8
  %466 = load i32, i32* %29, align 4
  %467 = add nsw i32 %466, 0
  %468 = load i32, i32* %12, align 4
  %469 = add nsw i32 %467, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %465, i64 %470
  store i32 %464, i32* %471, align 4
  %472 = load i32*, i32** %21, align 8
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 1, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = load i32*, i32** %20, align 8
  %479 = load i32, i32* %29, align 4
  %480 = add nsw i32 %479, 1
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %480, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %478, i64 %483
  store i32 %477, i32* %484, align 4
  br label %561

485:                                              ; preds = %337
  %486 = load i32*, i32** %17, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 0
  %488 = load i32, i32* %487, align 4
  %489 = load i32*, i32** %20, align 8
  %490 = load i32, i32* %29, align 4
  %491 = add nsw i32 %490, 0
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  store i32 %488, i32* %493, align 4
  %494 = load i32*, i32** %17, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 0
  %496 = load i32, i32* %495, align 4
  %497 = load i32*, i32** %20, align 8
  %498 = load i32, i32* %29, align 4
  %499 = add nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %497, i64 %500
  store i32 %496, i32* %501, align 4
  %502 = load i32*, i32** %17, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** %20, align 8
  %506 = load i32, i32* %29, align 4
  %507 = add nsw i32 %506, 0
  %508 = load i32, i32* %12, align 4
  %509 = add nsw i32 %507, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %505, i64 %510
  store i32 %504, i32* %511, align 4
  %512 = load i32*, i32** %17, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  %514 = load i32, i32* %513, align 4
  %515 = load i32*, i32** %20, align 8
  %516 = load i32, i32* %29, align 4
  %517 = add nsw i32 %516, 1
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %517, %518
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %515, i64 %520
  store i32 %514, i32* %521, align 4
  %522 = load i32*, i32** %17, align 8
  %523 = getelementptr inbounds i32, i32* %522, i32 1
  store i32* %523, i32** %17, align 8
  br label %561

524:                                              ; preds = %337
  %525 = load i32*, i32** %17, align 8
  %526 = getelementptr inbounds i32, i32* %525, i32 1
  store i32* %526, i32** %17, align 8
  %527 = load i32, i32* %525, align 4
  %528 = load i32*, i32** %20, align 8
  %529 = load i32, i32* %29, align 4
  %530 = add nsw i32 %529, 0
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %528, i64 %531
  store i32 %527, i32* %532, align 4
  %533 = load i32*, i32** %17, align 8
  %534 = getelementptr inbounds i32, i32* %533, i32 1
  store i32* %534, i32** %17, align 8
  %535 = load i32, i32* %533, align 4
  %536 = load i32*, i32** %20, align 8
  %537 = load i32, i32* %29, align 4
  %538 = add nsw i32 %537, 1
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %536, i64 %539
  store i32 %535, i32* %540, align 4
  %541 = load i32*, i32** %17, align 8
  %542 = getelementptr inbounds i32, i32* %541, i32 1
  store i32* %542, i32** %17, align 8
  %543 = load i32, i32* %541, align 4
  %544 = load i32*, i32** %20, align 8
  %545 = load i32, i32* %29, align 4
  %546 = add nsw i32 %545, 0
  %547 = load i32, i32* %12, align 4
  %548 = add nsw i32 %546, %547
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %544, i64 %549
  store i32 %543, i32* %550, align 4
  %551 = load i32*, i32** %17, align 8
  %552 = getelementptr inbounds i32, i32* %551, i32 1
  store i32* %552, i32** %17, align 8
  %553 = load i32, i32* %551, align 4
  %554 = load i32*, i32** %20, align 8
  %555 = load i32, i32* %29, align 4
  %556 = add nsw i32 %555, 1
  %557 = load i32, i32* %12, align 4
  %558 = add nsw i32 %556, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %554, i64 %559
  store i32 %553, i32* %560, align 4
  br label %561

561:                                              ; preds = %337, %524, %485, %442
  %562 = load i32, i32* %31, align 4
  %563 = shl i32 %562, 2
  store i32 %563, i32* %31, align 4
  br label %564

564:                                              ; preds = %561
  %565 = load i32, i32* %25, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %25, align 4
  br label %334

567:                                              ; preds = %334
  br label %663

568:                                              ; preds = %114
  %569 = load i32*, i32** %19, align 8
  %570 = call i32 @AV_RB16(i32* %569)
  store i32 %570, i32* %31, align 4
  %571 = load i32*, i32** %19, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 2
  store i32* %572, i32** %19, align 8
  store i32 0, i32* %28, align 4
  br label %573

573:                                              ; preds = %605, %568
  %574 = load i32, i32* %28, align 4
  %575 = icmp slt i32 %574, 4
  br i1 %575, label %576, label %608

576:                                              ; preds = %573
  store i32 0, i32* %27, align 4
  br label %577

577:                                              ; preds = %593, %576
  %578 = load i32, i32* %27, align 4
  %579 = icmp slt i32 %578, 4
  br i1 %579, label %580, label %596

580:                                              ; preds = %577
  %581 = load i32*, i32** %17, align 8
  %582 = load i32, i32* %31, align 4
  %583 = and i32 %582, 1
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %581, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = load i32*, i32** %20, align 8
  %588 = load i32, i32* %27, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  store i32 %586, i32* %590, align 4
  %591 = load i32, i32* %31, align 4
  %592 = ashr i32 %591, 1
  store i32 %592, i32* %31, align 4
  br label %593

593:                                              ; preds = %580
  %594 = load i32, i32* %27, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %27, align 4
  br label %577

596:                                              ; preds = %577
  %597 = load i32, i32* %12, align 4
  %598 = load i32*, i32** %20, align 8
  %599 = sext i32 %597 to i64
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  store i32* %600, i32** %20, align 8
  %601 = load i32, i32* %12, align 4
  %602 = load i32*, i32** %21, align 8
  %603 = sext i32 %601 to i64
  %604 = getelementptr inbounds i32, i32* %602, i64 %603
  store i32* %604, i32** %21, align 8
  br label %605

605:                                              ; preds = %596
  %606 = load i32, i32* %28, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %28, align 4
  br label %573

608:                                              ; preds = %573
  %609 = load i32*, i32** %17, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 2
  store i32* %610, i32** %17, align 8
  br label %663

611:                                              ; preds = %114, %114
  %612 = load i32*, i32** %19, align 8
  %613 = call i32 @AV_RB32(i32* %612)
  store i32 %613, i32* %31, align 4
  %614 = load i32*, i32** %19, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 4
  store i32* %615, i32** %19, align 8
  store i32 0, i32* %28, align 4
  br label %616

616:                                              ; preds = %648, %611
  %617 = load i32, i32* %28, align 4
  %618 = icmp slt i32 %617, 4
  br i1 %618, label %619, label %651

619:                                              ; preds = %616
  store i32 0, i32* %27, align 4
  br label %620

620:                                              ; preds = %636, %619
  %621 = load i32, i32* %27, align 4
  %622 = icmp slt i32 %621, 4
  br i1 %622, label %623, label %639

623:                                              ; preds = %620
  %624 = load i32*, i32** %17, align 8
  %625 = load i32, i32* %31, align 4
  %626 = and i32 %625, 3
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, i32* %624, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = load i32*, i32** %20, align 8
  %631 = load i32, i32* %27, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  store i32 %629, i32* %633, align 4
  %634 = load i32, i32* %31, align 4
  %635 = ashr i32 %634, 2
  store i32 %635, i32* %31, align 4
  br label %636

636:                                              ; preds = %623
  %637 = load i32, i32* %27, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %27, align 4
  br label %620

639:                                              ; preds = %620
  %640 = load i32, i32* %12, align 4
  %641 = load i32*, i32** %20, align 8
  %642 = sext i32 %640 to i64
  %643 = getelementptr inbounds i32, i32* %641, i64 %642
  store i32* %643, i32** %20, align 8
  %644 = load i32, i32* %12, align 4
  %645 = load i32*, i32** %21, align 8
  %646 = sext i32 %644 to i64
  %647 = getelementptr inbounds i32, i32* %645, i64 %646
  store i32* %647, i32** %21, align 8
  br label %648

648:                                              ; preds = %639
  %649 = load i32, i32* %28, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %28, align 4
  br label %616

651:                                              ; preds = %616
  %652 = load i32, i32* %26, align 4
  %653 = sub nsw i32 %652, 30
  %654 = load i32*, i32** %17, align 8
  %655 = sext i32 %653 to i64
  %656 = getelementptr inbounds i32, i32* %654, i64 %655
  store i32* %656, i32** %17, align 8
  br label %663

657:                                              ; preds = %114
  %658 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %659 = load i32, i32* @AV_LOG_ERROR, align 4
  %660 = load i32, i32* %26, align 4
  %661 = call i32 (%struct.TYPE_4__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_4__* %658, i32 %659, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %660)
  %662 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %662, i32* %8, align 4
  br label %682

663:                                              ; preds = %651, %608, %567, %329, %309, %291, %211
  br label %664

664:                                              ; preds = %663
  %665 = load i32, i32* %23, align 4
  %666 = add nsw i32 %665, 4
  store i32 %666, i32* %23, align 4
  br label %94

667:                                              ; preds = %94
  %668 = load i32, i32* %12, align 4
  %669 = mul nsw i32 %668, 4
  %670 = load i32*, i32** %11, align 8
  %671 = sext i32 %669 to i64
  %672 = getelementptr inbounds i32, i32* %670, i64 %671
  store i32* %672, i32** %11, align 8
  %673 = load i32, i32* %12, align 4
  %674 = mul nsw i32 %673, 4
  %675 = load i32*, i32** %15, align 8
  %676 = sext i32 %674 to i64
  %677 = getelementptr inbounds i32, i32* %675, i64 %676
  store i32* %677, i32** %15, align 8
  br label %678

678:                                              ; preds = %667
  %679 = load i32, i32* %24, align 4
  %680 = add nsw i32 %679, 4
  store i32 %680, i32* %24, align 4
  br label %87

681:                                              ; preds = %87
  store i32 0, i32* %8, align 4
  br label %682

682:                                              ; preds = %681, %657, %426, %176, %112, %59
  %683 = load i32, i32* %8, align 4
  ret i32 %683
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
