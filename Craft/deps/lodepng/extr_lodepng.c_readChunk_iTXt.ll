; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_iTXt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @readChunk_iTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readChunk_iTXt(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %18 = call i32 @ucvector_init(%struct.TYPE_6__* %17)
  br label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %326

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @CERROR_BREAK(i32 %27, i32 30)
  br label %29

29:                                               ; preds = %26, %23
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi i1 [ false, %30 ], [ %42, %35 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %30

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @CERROR_BREAK(i32 %56, i32 75)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* %11, align 4
  %60 = icmp ult i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ugt i32 %62, 79
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @CERROR_BREAK(i32 %65, i32 89)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  %70 = call i64 @lodepng_malloc(i32 %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @CERROR_BREAK(i32 %75, i32 83)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %96, %77
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %91, i8* %95, align 1
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  store i32 %106, i32* %13, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 2
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @CERROR_BREAK(i32 %116, i32 72)
  br label %118

118:                                              ; preds = %115, %99
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 3
  store i32 %120, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %140, %118
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %8, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %127, %122
  %136 = phi i1 [ false, %122 ], [ %134, %127 ]
  br i1 %136, label %137, label %143

137:                                              ; preds = %135
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %122

143:                                              ; preds = %135
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  %146 = call i64 @lodepng_malloc(i32 %145)
  %147 = inttoptr i64 %146 to i8*
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @CERROR_BREAK(i32 %151, i32 83)
  br label %153

153:                                              ; preds = %150, %143
  %154 = load i8*, i8** %15, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 0, i8* %157, align 1
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %174, %153
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %164, %165
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %163, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %15, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  store i8 %169, i8* %173, align 1
  br label %174

174:                                              ; preds = %162
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %158

177:                                              ; preds = %158
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  %180 = load i32, i32* %12, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %201, %177
  %184 = load i32, i32* %10, align 4
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %8, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %188, %183
  %197 = phi i1 [ false, %183 ], [ %195, %188 ]
  br i1 %197, label %198, label %204

198:                                              ; preds = %196
  %199 = load i32, i32* %11, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %183

204:                                              ; preds = %196
  %205 = load i32, i32* %11, align 4
  %206 = add i32 %205, 1
  %207 = call i64 @lodepng_malloc(i32 %206)
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** %16, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @CERROR_BREAK(i32 %212, i32 83)
  br label %214

214:                                              ; preds = %211, %204
  %215 = load i8*, i8** %16, align 8
  %216 = load i32, i32* %11, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8 0, i8* %218, align 1
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %235, %214
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %219
  %224 = load i8*, i8** %7, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %10, align 4
  %227 = add i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %224, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %16, align 8
  %232 = load i32, i32* %10, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8 %230, i8* %234, align 1
  br label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %10, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %219

238:                                              ; preds = %219
  %239 = load i32, i32* %11, align 4
  %240 = add i32 %239, 1
  %241 = load i32, i32* %12, align 4
  %242 = add i32 %241, %240
  store i32 %242, i32* %12, align 4
  %243 = load i64, i64* %8, align 8
  %244 = load i32, i32* %12, align 4
  %245 = zext i32 %244 to i64
  %246 = icmp ult i64 %243, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  br label %253

248:                                              ; preds = %238
  %249 = load i64, i64* %8, align 8
  %250 = load i32, i32* %12, align 4
  %251 = zext i32 %250 to i64
  %252 = sub i64 %249, %251
  br label %253

253:                                              ; preds = %248, %247
  %254 = phi i64 [ 0, %247 ], [ %252, %248 ]
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %283

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %261 = load i8*, i8** %7, align 8
  %262 = load i32, i32* %12, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i32, i32* %11, align 4
  %266 = load i32*, i32** %6, align 8
  %267 = call i32 @zlib_decompress(i8** %259, i64* %260, i8* %264, i32 %265, i32* %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %258
  br label %326

271:                                              ; preds = %258
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %273, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i64 %279, i64* %280, align 8
  br label %281

281:                                              ; preds = %277, %271
  %282 = call i32 @ucvector_push_back(%struct.TYPE_6__* %17, i32 0)
  br label %318

283:                                              ; preds = %253
  %284 = load i32, i32* %11, align 4
  %285 = add i32 %284, 1
  %286 = call i32 @ucvector_resize(%struct.TYPE_6__* %17, i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @CERROR_BREAK(i32 %289, i32 83)
  br label %291

291:                                              ; preds = %288, %283
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  store i8 0, i8* %296, align 1
  store i32 0, i32* %10, align 4
  br label %297

297:                                              ; preds = %314, %291
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %297
  %302 = load i8*, i8** %7, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %10, align 4
  %305 = add i32 %303, %304
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %302, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  store i8 %308, i8* %313, align 1
  br label %314

314:                                              ; preds = %301
  %315 = load i32, i32* %10, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %297

317:                                              ; preds = %297
  br label %318

318:                                              ; preds = %317, %281
  %319 = load i32*, i32** %5, align 8
  %320 = load i8*, i8** %14, align 8
  %321 = load i8*, i8** %15, align 8
  %322 = load i8*, i8** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @lodepng_add_itext(i32* %319, i8* %320, i8* %321, i8* %322, i8* %324)
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %318, %270, %19
  %327 = load i8*, i8** %14, align 8
  %328 = call i32 @lodepng_free(i8* %327)
  %329 = load i8*, i8** %15, align 8
  %330 = call i32 @lodepng_free(i8* %329)
  %331 = load i8*, i8** %16, align 8
  %332 = call i32 @lodepng_free(i8* %331)
  %333 = call i32 @ucvector_cleanup(%struct.TYPE_6__* %17)
  %334 = load i32, i32* %9, align 4
  ret i32 %334
}

declare dso_local i32 @ucvector_init(%struct.TYPE_6__*) #1

declare dso_local i32 @CERROR_BREAK(i32, i32) #1

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @zlib_decompress(i8**, i64*, i8*, i32, i32*) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ucvector_resize(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lodepng_add_itext(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
