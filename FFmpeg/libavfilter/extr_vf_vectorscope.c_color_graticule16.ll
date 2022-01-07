; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_color_graticule16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_color_graticule16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, i32 }
%struct.TYPE_7__ = type { i32*, i64, i64, i64* }

@positions = common dso_local global i32*** null, align 8
@positions_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32, i32)* @color_graticule16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_graticule16(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [4 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 4
  store float %35, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %217, %6
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 12
  br i1 %38, label %39, label %220

39:                                               ; preds = %36
  %40 = load i32***, i32**** @positions, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32**, i32*** %40, i64 %42
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32***, i32**** @positions, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %53, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32***, i32**** @positions, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32**, i32*** %66, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %86, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %85, %95
  %97 = load i32, i32* %16, align 4
  %98 = mul nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 2
  %110 = load i32, i32* %18, align 4
  %111 = load float, float* %14, align 4
  %112 = call i32 @draw_dots16(i32* %101, i32 %109, i32 %110, float %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %120, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %119, %129
  %131 = load i32, i32* %16, align 4
  %132 = mul nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %130, %133
  %135 = inttoptr i64 %134 to i32*
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* %16, align 4
  %145 = load float, float* %14, align 4
  %146 = call i32 @draw_dots16(i32* %135, i32 %143, i32 %144, float %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %154, %161
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %153, %163
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %164, %167
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %176, 2
  %178 = load i32, i32* %17, align 4
  %179 = load float, float* %14, align 4
  %180 = call i32 @draw_dots16(i32* %169, i32 %177, i32 %178, float %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %39
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 3
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %193, %198
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %192, %200
  %202 = load i32, i32* %16, align 4
  %203 = mul nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %201, %204
  %206 = inttoptr i64 %205 to i32*
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = sdiv i32 %211, 2
  %213 = load i32, i32* %13, align 4
  %214 = load float, float* %14, align 4
  %215 = call i32 @draw_dots16(i32* %206, i32 %212, i32 %213, float %214)
  br label %216

216:                                              ; preds = %187, %39
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %15, align 4
  br label %36

220:                                              ; preds = %36
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 1
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %398

226:                                              ; preds = %220
  %227 = load i32***, i32**** @positions, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32**, i32*** %227, i64 %229
  %231 = load i32**, i32*** %230, align 8
  %232 = getelementptr inbounds i32*, i32** %231, i64 12
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %19, align 4
  %238 = load i32***, i32**** @positions, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32**, i32*** %238, i64 %240
  %242 = load i32**, i32*** %241, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 12
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %20, align 4
  %249 = load i32***, i32**** @positions, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32**, i32*** %249, i64 %251
  %253 = load i32**, i32*** %252, align 8
  %254 = getelementptr inbounds i32*, i32** %253, i64 12
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %21, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 3
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %20, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 %267, %274
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %266, %276
  %278 = load i32, i32* %19, align 4
  %279 = mul nsw i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %277, %280
  %282 = inttoptr i64 %281 to i32*
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sdiv i32 %289, 2
  %291 = load i32, i32* %21, align 4
  %292 = load float, float* %14, align 4
  %293 = call i32 @draw_dots16(i32* %282, i32 %290, i32 %291, float %292)
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 3
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* %20, align 4
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = mul nsw i32 %301, %308
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %300, %310
  %312 = load i32, i32* %19, align 4
  %313 = mul nsw i32 %312, 2
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %311, %314
  %316 = inttoptr i64 %315 to i32*
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sdiv i32 %323, 2
  %325 = load i32, i32* %19, align 4
  %326 = load float, float* %14, align 4
  %327 = call i32 @draw_dots16(i32* %316, i32 %324, i32 %325, float %326)
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 3
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load i32, i32* %20, align 4
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %335, %342
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %334, %344
  %346 = load i32, i32* %19, align 4
  %347 = mul nsw i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = add nsw i64 %345, %348
  %350 = inttoptr i64 %349 to i32*
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = sdiv i32 %357, 2
  %359 = load i32, i32* %20, align 4
  %360 = load float, float* %14, align 4
  %361 = call i32 @draw_dots16(i32* %350, i32 %358, i32 %359, float %360)
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 3
  %364 = load i64*, i64** %363, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 3
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %397

368:                                              ; preds = %226
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 3
  %371 = load i64*, i64** %370, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 3
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* %20, align 4
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 3
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %374, %379
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %373, %381
  %383 = load i32, i32* %19, align 4
  %384 = mul nsw i32 %383, 2
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %382, %385
  %387 = inttoptr i64 %386 to i32*
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  %392 = load i32, i32* %391, align 4
  %393 = sdiv i32 %392, 2
  %394 = load i32, i32* %13, align 4
  %395 = load float, float* %14, align 4
  %396 = call i32 @draw_dots16(i32* %387, i32 %393, i32 %394, float %395)
  br label %397

397:                                              ; preds = %368, %226
  br label %398

398:                                              ; preds = %397, %220
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 2
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %576

404:                                              ; preds = %398
  %405 = load i32***, i32**** @positions, align 8
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32**, i32*** %405, i64 %407
  %409 = load i32**, i32*** %408, align 8
  %410 = getelementptr inbounds i32*, i32** %409, i64 13
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %9, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %22, align 4
  %416 = load i32***, i32**** @positions, align 8
  %417 = load i32, i32* %12, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32**, i32*** %416, i64 %418
  %420 = load i32**, i32*** %419, align 8
  %421 = getelementptr inbounds i32*, i32** %420, i64 13
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %23, align 4
  %427 = load i32***, i32**** @positions, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32**, i32*** %427, i64 %429
  %431 = load i32**, i32*** %430, align 8
  %432 = getelementptr inbounds i32*, i32** %431, i64 13
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %11, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %24, align 4
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 3
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %11, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = load i32, i32* %23, align 4
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %11, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = mul nsw i32 %445, %452
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %444, %454
  %456 = load i32, i32* %22, align 4
  %457 = mul nsw i32 %456, 2
  %458 = sext i32 %457 to i64
  %459 = add nsw i64 %455, %458
  %460 = inttoptr i64 %459 to i32*
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i32*, i32** %462, align 8
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = sdiv i32 %467, 2
  %469 = load i32, i32* %24, align 4
  %470 = load float, float* %14, align 4
  %471 = call i32 @draw_dots16(i32* %460, i32 %468, i32 %469, float %470)
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 3
  %474 = load i64*, i64** %473, align 8
  %475 = load i32, i32* %9, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i64, i64* %474, i64 %476
  %478 = load i64, i64* %477, align 8
  %479 = load i32, i32* %23, align 4
  %480 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %9, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = mul nsw i32 %479, %486
  %488 = sext i32 %487 to i64
  %489 = add nsw i64 %478, %488
  %490 = load i32, i32* %22, align 4
  %491 = mul nsw i32 %490, 2
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %489, %492
  %494 = inttoptr i64 %493 to i32*
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 0
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %9, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = sdiv i32 %501, 2
  %503 = load i32, i32* %22, align 4
  %504 = load float, float* %14, align 4
  %505 = call i32 @draw_dots16(i32* %494, i32 %502, i32 %503, float %504)
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 3
  %508 = load i64*, i64** %507, align 8
  %509 = load i32, i32* %10, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i64, i64* %508, i64 %510
  %512 = load i64, i64* %511, align 8
  %513 = load i32, i32* %23, align 4
  %514 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 0, i32 0
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* %10, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = mul nsw i32 %513, %520
  %522 = sext i32 %521 to i64
  %523 = add nsw i64 %512, %522
  %524 = load i32, i32* %22, align 4
  %525 = mul nsw i32 %524, 2
  %526 = sext i32 %525 to i64
  %527 = add nsw i64 %523, %526
  %528 = inttoptr i64 %527 to i32*
  %529 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 0
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %10, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = sdiv i32 %535, 2
  %537 = load i32, i32* %23, align 4
  %538 = load float, float* %14, align 4
  %539 = call i32 @draw_dots16(i32* %528, i32 %536, i32 %537, float %538)
  %540 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i32 0, i32 3
  %542 = load i64*, i64** %541, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 3
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %575

546:                                              ; preds = %404
  %547 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %547, i32 0, i32 3
  %549 = load i64*, i64** %548, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 3
  %551 = load i64, i64* %550, align 8
  %552 = load i32, i32* %23, align 4
  %553 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %554 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 3
  %557 = load i32, i32* %556, align 4
  %558 = mul nsw i32 %552, %557
  %559 = sext i32 %558 to i64
  %560 = add nsw i64 %551, %559
  %561 = load i32, i32* %22, align 4
  %562 = mul nsw i32 %561, 2
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %560, %563
  %565 = inttoptr i64 %564 to i32*
  %566 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 0
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 3
  %570 = load i32, i32* %569, align 4
  %571 = sdiv i32 %570, 2
  %572 = load i32, i32* %13, align 4
  %573 = load float, float* %14, align 4
  %574 = call i32 @draw_dots16(i32* %565, i32 %571, i32 %572, float %573)
  br label %575

575:                                              ; preds = %546, %404
  br label %576

576:                                              ; preds = %575, %398
  store i32 0, i32* %15, align 4
  br label %577

577:                                              ; preds = %692, %576
  %578 = load i32, i32* %15, align 4
  %579 = icmp slt i32 %578, 6
  br i1 %579, label %580, label %586

580:                                              ; preds = %577
  %581 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %582 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  %584 = and i32 %583, 4
  %585 = icmp ne i32 %584, 0
  br label %586

586:                                              ; preds = %580, %577
  %587 = phi i1 [ false, %577 ], [ %585, %580 ]
  br i1 %587, label %588, label %695

588:                                              ; preds = %586
  %589 = bitcast [4 x i32]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %589, i8 0, i64 16, i1 false)
  %590 = load i32***, i32**** @positions, align 8
  %591 = load i32, i32* %12, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32**, i32*** %590, i64 %592
  %594 = load i32**, i32*** %593, align 8
  %595 = load i32, i32* %15, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32*, i32** %594, i64 %596
  %598 = load i32*, i32** %597, align 8
  %599 = load i32, i32* %9, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %598, i64 %600
  %602 = load i32, i32* %601, align 4
  store i32 %602, i32* %26, align 4
  %603 = load i32***, i32**** @positions, align 8
  %604 = load i32, i32* %12, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32**, i32*** %603, i64 %605
  %607 = load i32**, i32*** %606, align 8
  %608 = load i32, i32* %15, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32*, i32** %607, i64 %609
  %611 = load i32*, i32** %610, align 8
  %612 = load i32, i32* %10, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %611, i64 %613
  %615 = load i32, i32* %614, align 4
  store i32 %615, i32* %27, align 4
  %616 = load i32***, i32**** @positions, align 8
  %617 = load i32, i32* %12, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32**, i32*** %616, i64 %618
  %620 = load i32**, i32*** %619, align 8
  %621 = load i32, i32* %15, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %620, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = load i32, i32* %11, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %624, i64 %626
  %628 = load i32, i32* %627, align 4
  store i32 %628, i32* %28, align 4
  %629 = load i32, i32* %28, align 4
  %630 = load i32, i32* %11, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 %631
  store i32 %629, i32* %632, align 4
  %633 = load i32, i32* %26, align 4
  %634 = load i32, i32* %9, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 %635
  store i32 %633, i32* %636, align 4
  %637 = load i32, i32* %27, align 4
  %638 = load i32, i32* %10, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 %639
  store i32 %637, i32* %640, align 4
  %641 = load i32, i32* %13, align 4
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 %641, i32* %642, align 4
  %643 = load i32, i32* %26, align 4
  %644 = load i32, i32* %13, align 4
  %645 = sdiv i32 %644, 2
  %646 = icmp sgt i32 %643, %645
  br i1 %646, label %647, label %650

647:                                              ; preds = %588
  %648 = load i32, i32* %26, align 4
  %649 = add nsw i32 %648, 8
  store i32 %649, i32* %26, align 4
  br label %653

650:                                              ; preds = %588
  %651 = load i32, i32* %26, align 4
  %652 = sub nsw i32 %651, 14
  store i32 %652, i32* %26, align 4
  br label %653

653:                                              ; preds = %650, %647
  %654 = load i32, i32* %27, align 4
  %655 = load i32, i32* %13, align 4
  %656 = sdiv i32 %655, 2
  %657 = icmp sgt i32 %654, %656
  br i1 %657, label %658, label %661

658:                                              ; preds = %653
  %659 = load i32, i32* %27, align 4
  %660 = add nsw i32 %659, 8
  store i32 %660, i32* %27, align 4
  br label %664

661:                                              ; preds = %653
  %662 = load i32, i32* %27, align 4
  %663 = sub nsw i32 %662, 14
  store i32 %663, i32* %27, align 4
  br label %664

664:                                              ; preds = %661, %658
  %665 = load i32, i32* %26, align 4
  %666 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %667 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %666, i32 0, i32 2
  %668 = load i64, i64* %667, align 8
  %669 = sub nsw i64 %668, 9
  %670 = call i32 @av_clip(i32 %665, i32 0, i64 %669)
  store i32 %670, i32* %26, align 4
  %671 = load i32, i32* %27, align 4
  %672 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %673 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %672, i32 0, i32 1
  %674 = load i64, i64* %673, align 8
  %675 = sub nsw i64 %674, 9
  %676 = call i32 @av_clip(i32 %671, i32 0, i64 %675)
  store i32 %676, i32* %27, align 4
  %677 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %678 = load i32, i32* %26, align 4
  %679 = load i32, i32* %27, align 4
  %680 = load float, float* %14, align 4
  %681 = load float, float* %14, align 4
  %682 = fpext float %681 to double
  %683 = fsub double 1.000000e+00, %682
  %684 = fptosi double %683 to i32
  %685 = load i32*, i32** @positions_name, align 8
  %686 = load i32, i32* %15, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %691 = call i32 @draw_htext16(%struct.TYPE_7__* %677, i32 %678, i32 %679, float %680, i32 %684, i32 %689, i32* %690)
  br label %692

692:                                              ; preds = %664
  %693 = load i32, i32* %15, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %15, align 4
  br label %577

695:                                              ; preds = %586
  ret void
}

declare dso_local i32 @draw_dots16(i32*, i32, i32, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_clip(i32, i32, i64) #1

declare dso_local i32 @draw_htext16(%struct.TYPE_7__*, i32, i32, float, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
