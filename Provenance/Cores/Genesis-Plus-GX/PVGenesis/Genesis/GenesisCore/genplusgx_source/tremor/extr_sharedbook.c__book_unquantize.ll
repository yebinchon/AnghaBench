; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c__book_unquantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c__book_unquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_book_unquantize(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %391

39:                                               ; preds = %34, %4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_float32_unpack(i32 %42, i32* %14)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @_float32_unpack(i32 %46, i32* %15)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = call i64 @_ogg_calloc(i32 %52, i32 4)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %18, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = call i64 @_ogg_calloc(i32 %59, i32 4)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %19, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %352 [
    i32 1, label %67
    i32 2, label %213
  ]

67:                                               ; preds = %39
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = call i32 @_book_maptype1_quantvals(%struct.TYPE_4__* %68)
  store i32 %69, i32* %13, align 4
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %209, %67
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %212

76:                                               ; preds = %70
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79, %76
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %208, label %90

90:                                               ; preds = %87, %79
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %202, %90
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %205

98:                                               ; preds = %91
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = sdiv i64 %99, %101
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = srem i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @abs(i32 %115) #3
  %117 = call i32 @VFLOAT_MULTI(i32 %107, i32 %108, i32 %116, i32* %24)
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %24, align 4
  %122 = call i32 @VFLOAT_ADD(i32 %118, i32 %119, i32 %120, i32 %121, i32* %24)
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @VFLOAT_ADD(i32 %123, i32 %124, i32 %125, i32 %126, i32* %24)
  store i32 %127, i32* %25, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %98
  %133 = load i32, i32* %25, align 4
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %24, align 4
  store i32 %134, i32* %21, align 4
  br label %135

135:                                              ; preds = %132, %98
  %136 = load i32*, i32** %8, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %167

138:                                              ; preds = %135
  %139 = load i32, i32* %25, align 4
  %140 = load i32*, i32** %18, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %11, align 8
  %151 = add nsw i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %140, i64 %151
  store i32 %139, i32* %152, align 4
  %153 = load i32, i32* %24, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %158, %161
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %11, align 8
  %165 = add nsw i64 %163, %164
  %166 = getelementptr inbounds i32, i32* %154, i64 %165
  store i32 %153, i32* %166, align 4
  br label %190

167:                                              ; preds = %135
  %168 = load i32, i32* %25, align 4
  %169 = load i32*, i32** %18, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %170, %174
  %176 = load i64, i64* %11, align 8
  %177 = add nsw i64 %175, %176
  %178 = getelementptr inbounds i32, i32* %169, i64 %177
  store i32 %168, i32* %178, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32*, i32** %19, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %181, %185
  %187 = load i64, i64* %11, align 8
  %188 = add nsw i64 %186, %187
  %189 = getelementptr inbounds i32, i32* %180, i64 %188
  store i32 %179, i32* %189, align 4
  br label %190

190:                                              ; preds = %167, %138
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %24, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %24, align 4
  %197 = load i32*, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %22, align 4
  %201 = mul nsw i32 %200, %199
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %198
  %203 = load i64, i64* %11, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %11, align 8
  br label %91

205:                                              ; preds = %91
  %206 = load i64, i64* %12, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %12, align 8
  br label %208

208:                                              ; preds = %205, %87
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %10, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %10, align 8
  br label %70

212:                                              ; preds = %70
  br label %352

213:                                              ; preds = %39
  store i64 0, i64* %10, align 8
  br label %214

214:                                              ; preds = %348, %213
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %351

220:                                              ; preds = %214
  %221 = load i32*, i32** %8, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* %10, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %223, %220
  %232 = load i32*, i32** %8, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %347, label %234

234:                                              ; preds = %231, %223
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i64 0, i64* %11, align 8
  br label %235

235:                                              ; preds = %341, %234
  %236 = load i64, i64* %11, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %236, %240
  br i1 %241, label %242, label %344

242:                                              ; preds = %235
  store i32 0, i32* %28, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %10, align 8
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = mul nsw i64 %248, %252
  %254 = load i64, i64* %11, align 8
  %255 = add nsw i64 %253, %254
  %256 = getelementptr inbounds i32, i32* %247, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @abs(i32 %257) #3
  %259 = call i32 @VFLOAT_MULTI(i32 %243, i32 %244, i32 %258, i32* %28)
  store i32 %259, i32* %29, align 4
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %29, align 4
  %263 = load i32, i32* %28, align 4
  %264 = call i32 @VFLOAT_ADD(i32 %260, i32 %261, i32 %262, i32 %263, i32* %28)
  store i32 %264, i32* %29, align 4
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %27, align 4
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %28, align 4
  %269 = call i32 @VFLOAT_ADD(i32 %265, i32 %266, i32 %267, i32 %268, i32* %28)
  store i32 %269, i32* %29, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %242
  %275 = load i32, i32* %29, align 4
  store i32 %275, i32* %26, align 4
  %276 = load i32, i32* %28, align 4
  store i32 %276, i32* %27, align 4
  br label %277

277:                                              ; preds = %274, %242
  %278 = load i32*, i32** %8, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %309

280:                                              ; preds = %277
  %281 = load i32, i32* %29, align 4
  %282 = load i32*, i32** %18, align 8
  %283 = load i32*, i32** %8, align 8
  %284 = load i64, i64* %12, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %286, %289
  %291 = sext i32 %290 to i64
  %292 = load i64, i64* %11, align 8
  %293 = add nsw i64 %291, %292
  %294 = getelementptr inbounds i32, i32* %282, i64 %293
  store i32 %281, i32* %294, align 4
  %295 = load i32, i32* %28, align 4
  %296 = load i32*, i32** %19, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = load i64, i64* %12, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %300, %303
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %11, align 8
  %307 = add nsw i64 %305, %306
  %308 = getelementptr inbounds i32, i32* %296, i64 %307
  store i32 %295, i32* %308, align 4
  br label %332

309:                                              ; preds = %277
  %310 = load i32, i32* %29, align 4
  %311 = load i32*, i32** %18, align 8
  %312 = load i64, i64* %12, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %312, %316
  %318 = load i64, i64* %11, align 8
  %319 = add nsw i64 %317, %318
  %320 = getelementptr inbounds i32, i32* %311, i64 %319
  store i32 %310, i32* %320, align 4
  %321 = load i32, i32* %28, align 4
  %322 = load i32*, i32** %19, align 8
  %323 = load i64, i64* %12, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %323, %327
  %329 = load i64, i64* %11, align 8
  %330 = add nsw i64 %328, %329
  %331 = getelementptr inbounds i32, i32* %322, i64 %330
  store i32 %321, i32* %331, align 4
  br label %332

332:                                              ; preds = %309, %280
  %333 = load i32*, i32** %9, align 8
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %28, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i32, i32* %28, align 4
  %339 = load i32*, i32** %9, align 8
  store i32 %338, i32* %339, align 4
  br label %340

340:                                              ; preds = %337, %332
  br label %341

341:                                              ; preds = %340
  %342 = load i64, i64* %11, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %11, align 8
  br label %235

344:                                              ; preds = %235
  %345 = load i64, i64* %12, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %12, align 8
  br label %347

347:                                              ; preds = %344, %231
  br label %348

348:                                              ; preds = %347
  %349 = load i64, i64* %10, align 8
  %350 = add nsw i64 %349, 1
  store i64 %350, i64* %10, align 8
  br label %214

351:                                              ; preds = %214
  br label %352

352:                                              ; preds = %39, %351, %212
  store i64 0, i64* %10, align 8
  br label %353

353:                                              ; preds = %384, %352
  %354 = load i64, i64* %10, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %355, %358
  %360 = sext i32 %359 to i64
  %361 = icmp slt i64 %354, %360
  br i1 %361, label %362, label %387

362:                                              ; preds = %353
  %363 = load i32*, i32** %19, align 8
  %364 = load i64, i64* %10, align 8
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32*, i32** %9, align 8
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %366, %368
  br i1 %369, label %370, label %383

370:                                              ; preds = %362
  %371 = load i32*, i32** %9, align 8
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %19, align 8
  %374 = load i64, i64* %10, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %372, %376
  %378 = load i32*, i32** %18, align 8
  %379 = load i64, i64* %10, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = ashr i32 %381, %377
  store i32 %382, i32* %380, align 4
  br label %383

383:                                              ; preds = %370, %362
  br label %384

384:                                              ; preds = %383
  %385 = load i64, i64* %10, align 8
  %386 = add nsw i64 %385, 1
  store i64 %386, i64* %10, align 8
  br label %353

387:                                              ; preds = %353
  %388 = load i32*, i32** %19, align 8
  %389 = call i32 @_ogg_free(i32* %388)
  %390 = load i32*, i32** %18, align 8
  store i32* %390, i32** %5, align 8
  br label %392

391:                                              ; preds = %34
  store i32* null, i32** %5, align 8
  br label %392

392:                                              ; preds = %391, %387
  %393 = load i32*, i32** %5, align 8
  ret i32* %393
}

declare dso_local i32 @_float32_unpack(i32, i32*) #1

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_4__*) #1

declare dso_local i32 @VFLOAT_MULTI(i32, i32, i32, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @VFLOAT_ADD(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_ogg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
