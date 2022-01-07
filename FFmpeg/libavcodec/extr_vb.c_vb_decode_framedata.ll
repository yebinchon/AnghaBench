; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vb.c_vb_decode_framedata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vb.c_vb_decode_framedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Insufficient data\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@vb_patterns = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid opcode seen @%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @vb_decode_framedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb_decode_framedata(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %21, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %20, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %34, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %33, i64 %41
  store i32* %42, i32** %22, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %8, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 2
  %67 = mul nsw i32 %60, %66
  store i32 %67, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %395, %2
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %398

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = call i32 @bytestream2_get_bytes_left(i32* %6)
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %82, i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %3, align 4
  br label %399

86:                                               ; preds = %76
  %87 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %72
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 192
  switch i32 %90, label %370 [
    i32 0, label %91
    i32 64, label %133
    i32 128, label %225
    i32 192, label %243
  ]

91:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %129, %91
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32*, i32** %21, align 8
  %103 = load i32*, i32** %22, align 8
  %104 = call i32 @check_line(i32* %101, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %95
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %20, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %20, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = call i32 @memcpy(i32* %112, i32* %118, i32 4)
  br label %128

120:                                              ; preds = %95
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %20, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = call i32 @memset(i32* %126, i32 0, i32 4)
  br label %128

128:                                              ; preds = %120, %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %92

132:                                              ; preds = %92
  br label %370

133:                                              ; preds = %88
  %134 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %133
  %138 = call i32 @bytestream2_get_bytes_left(i32* %6)
  %139 = icmp slt i32 %138, 16
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %143, i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %3, align 4
  br label %399

147:                                              ; preds = %137
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %159, %147
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %20, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = call i32 @bytestream2_get_buffer(i32* %6, i32* %157, i32 4)
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %148

162:                                              ; preds = %148
  br label %224

163:                                              ; preds = %133
  %164 = load i32, i32* %11, align 4
  %165 = and i32 %164, 15
  %166 = xor i32 %165, 8
  %167 = sub nsw i32 %166, 8
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %11, align 4
  %169 = ashr i32 %168, 4
  %170 = xor i32 %169, 8
  %171 = sub nsw i32 %170, 8
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %20, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %172, %175
  store i32 %176, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %220, %163
  %178 = load i32, i32* %15, align 4
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %180, label %223

180:                                              ; preds = %177
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %20, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32*, i32** %21, align 8
  %191 = load i32*, i32** %22, align 8
  %192 = call i32 @check_line(i32* %189, i32* %190, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %180
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %20, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %20, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = call i32 @memcpy(i32* %200, i32* %209, i32 4)
  br label %219

211:                                              ; preds = %180
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %20, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = call i32 @memset(i32* %217, i32 0, i32 4)
  br label %219

219:                                              ; preds = %211, %194
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %177

223:                                              ; preds = %177
  br label %224

224:                                              ; preds = %223, %162
  br label %370

225:                                              ; preds = %88
  %226 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %226, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %227

227:                                              ; preds = %239, %225
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %20, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %11, align 4
  %238 = call i32 @memset(i32* %236, i32 %237, i32 4)
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  br label %227

242:                                              ; preds = %227
  br label %370

243:                                              ; preds = %88
  %244 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = ashr i32 %245, 6
  store i32 %246, i32* %18, align 4
  %247 = load i32*, i32** @vb_patterns, align 8
  %248 = load i32, i32* %11, align 4
  %249 = and i32 %248, 63
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %19, align 4
  %253 = load i32, i32* %18, align 4
  switch i32 %253, label %369 [
    i32 0, label %254
    i32 1, label %292
    i32 2, label %295
    i32 3, label %361
  ]

254:                                              ; preds = %243
  %255 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %255, i32* %16, align 4
  %256 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %256, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %288, %254
  %258 = load i32, i32* %15, align 4
  %259 = icmp slt i32 %258, 4
  br i1 %259, label %260, label %291

260:                                              ; preds = %257
  store i32 0, i32* %14, align 4
  br label %261

261:                                              ; preds = %282, %260
  %262 = load i32, i32* %14, align 4
  %263 = icmp slt i32 %262, 4
  br i1 %263, label %264, label %287

264:                                              ; preds = %261
  %265 = load i32, i32* %19, align 4
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i32, i32* %17, align 4
  br label %272

270:                                              ; preds = %264
  %271 = load i32, i32* %16, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %20, align 4
  %278 = mul nsw i32 %276, %277
  %279 = add nsw i32 %275, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %274, i64 %280
  store i32 %273, i32* %281, align 4
  br label %282

282:                                              ; preds = %272
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %14, align 4
  %285 = load i32, i32* %19, align 4
  %286 = ashr i32 %285, 1
  store i32 %286, i32* %19, align 4
  br label %261

287:                                              ; preds = %261
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %257

291:                                              ; preds = %257
  br label %369

292:                                              ; preds = %243
  %293 = load i32, i32* %19, align 4
  %294 = xor i32 %293, -1
  store i32 %294, i32* %19, align 4
  br label %295

295:                                              ; preds = %243, %292
  %296 = call i32 @bytestream2_get_byte(i32* %6)
  store i32 %296, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %297

297:                                              ; preds = %357, %295
  %298 = load i32, i32* %15, align 4
  %299 = icmp slt i32 %298, 4
  br i1 %299, label %300, label %360

300:                                              ; preds = %297
  store i32 0, i32* %14, align 4
  br label %301

301:                                              ; preds = %351, %300
  %302 = load i32, i32* %14, align 4
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %356

304:                                              ; preds = %301
  %305 = load i32, i32* %19, align 4
  %306 = and i32 %305, 1
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %340

308:                                              ; preds = %304
  %309 = load i32*, i32** %7, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %20, align 4
  %315 = mul nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %312, i64 %316
  %318 = load i32*, i32** %21, align 8
  %319 = load i32*, i32** %22, align 8
  %320 = call i32 @check_pixel(i32* %317, i32* %318, i32* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %308
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %20, align 4
  %327 = mul nsw i32 %325, %326
  %328 = add nsw i32 %324, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %323, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %8, align 8
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %20, align 4
  %336 = mul nsw i32 %334, %335
  %337 = add nsw i32 %333, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %332, i64 %338
  store i32 %331, i32* %339, align 4
  br label %350

340:                                              ; preds = %308, %304
  %341 = load i32, i32* %16, align 4
  %342 = load i32*, i32** %8, align 8
  %343 = load i32, i32* %14, align 4
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %20, align 4
  %346 = mul nsw i32 %344, %345
  %347 = add nsw i32 %343, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %342, i64 %348
  store i32 %341, i32* %349, align 4
  br label %350

350:                                              ; preds = %340, %322
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %19, align 4
  %355 = ashr i32 %354, 1
  store i32 %355, i32* %19, align 4
  br label %301

356:                                              ; preds = %301
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %15, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %15, align 4
  br label %297

360:                                              ; preds = %297
  br label %369

361:                                              ; preds = %243
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %363, align 8
  %365 = load i32, i32* @AV_LOG_ERROR, align 4
  %366 = load i32, i32* %9, align 4
  %367 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %364, i32 %365, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %366)
  %368 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %368, i32* %3, align 4
  br label %399

369:                                              ; preds = %243, %360, %291
  br label %370

370:                                              ; preds = %88, %369, %242, %224, %132
  %371 = load i32, i32* %13, align 4
  %372 = shl i32 %371, 2
  store i32 %372, i32* %13, align 4
  %373 = load i32*, i32** %8, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 4
  store i32* %374, i32** %8, align 8
  %375 = load i32*, i32** %7, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 4
  store i32* %376, i32** %7, align 8
  %377 = load i32, i32* %12, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %12, align 4
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %20, align 4
  %381 = ashr i32 %380, 2
  %382 = icmp eq i32 %379, %381
  br i1 %382, label %383, label %394

383:                                              ; preds = %370
  store i32 0, i32* %12, align 4
  %384 = load i32, i32* %20, align 4
  %385 = mul nsw i32 %384, 3
  %386 = load i32*, i32** %8, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  store i32* %388, i32** %8, align 8
  %389 = load i32, i32* %20, align 4
  %390 = mul nsw i32 %389, 3
  %391 = load i32*, i32** %7, align 8
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  store i32* %393, i32** %7, align 8
  br label %394

394:                                              ; preds = %383, %370
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %9, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %9, align 4
  br label %68

398:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %399

399:                                              ; preds = %398, %361, %140, %79
  %400 = load i32, i32* %3, align 4
  ret i32 %400
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @check_line(i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @check_pixel(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
