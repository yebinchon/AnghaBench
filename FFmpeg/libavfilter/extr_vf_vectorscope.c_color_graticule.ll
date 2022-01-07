; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_color_graticule.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_color_graticule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_7__ = type { i32*, i64, i64, i64* }

@positions = common dso_local global i32*** null, align 8
@__const.color_graticule.color = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 255], align 16
@positions_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32, i32)* @color_graticule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_graticule(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 4
  store float %30, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %199, %6
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 12
  br i1 %33, label %34, label %202

34:                                               ; preds = %31
  %35 = load i32***, i32**** @positions, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32**, i32*** %35, i64 %37
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32***, i32**** @positions, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32**, i32*** %48, i64 %50
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32***, i32**** @positions, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32**, i32*** %61, i64 %63
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %81, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %80, %90
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load float, float* %13, align 4
  %104 = call i32 @draw_dots(i64 %94, i32 %101, i32 %102, float %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %112, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %111, %121
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load float, float* %13, align 4
  %135 = call i32 @draw_dots(i64 %125, i32 %132, i32 %133, float %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %143, %150
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %142, %152
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load float, float* %13, align 4
  %166 = call i32 @draw_dots(i64 %156, i32 %163, i32 %164, float %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %34
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %179, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %178, %186
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = load float, float* %13, align 4
  %197 = call i32 @draw_dots(i64 %190, i32 %195, i32 255, float %196)
  br label %198

198:                                              ; preds = %173, %34
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %31

202:                                              ; preds = %31
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %367

208:                                              ; preds = %202
  %209 = load i32***, i32**** @positions, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32**, i32*** %209, i64 %211
  %213 = load i32**, i32*** %212, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 12
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %18, align 4
  %220 = load i32***, i32**** @positions, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32**, i32*** %220, i64 %222
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 12
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %19, align 4
  %231 = load i32***, i32**** @positions, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32**, i32*** %231, i64 %233
  %235 = load i32**, i32*** %234, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 12
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %20, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %249, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %248, %258
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %259, %261
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %20, align 4
  %271 = load float, float* %13, align 4
  %272 = call i32 @draw_dots(i64 %262, i32 %269, i32 %270, float %271)
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %19, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %280, %287
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %279, %289
  %291 = load i32, i32* %18, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load float, float* %13, align 4
  %303 = call i32 @draw_dots(i64 %293, i32 %300, i32 %301, float %302)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 3
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %10, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %19, align 4
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 %311, %318
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %310, %320
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %321, %323
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %19, align 4
  %333 = load float, float* %13, align 4
  %334 = call i32 @draw_dots(i64 %324, i32 %331, i32 %332, float %333)
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %366

341:                                              ; preds = %208
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 3
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 3
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %19, align 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 3
  %352 = load i32, i32* %351, align 4
  %353 = mul nsw i32 %347, %352
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %346, %354
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %355, %357
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 3
  %363 = load i32, i32* %362, align 4
  %364 = load float, float* %13, align 4
  %365 = call i32 @draw_dots(i64 %358, i32 %363, i32 255, float %364)
  br label %366

366:                                              ; preds = %341, %208
  br label %367

367:                                              ; preds = %366, %202
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, 2
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %532

373:                                              ; preds = %367
  %374 = load i32***, i32**** @positions, align 8
  %375 = load i32, i32* %12, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32**, i32*** %374, i64 %376
  %378 = load i32**, i32*** %377, align 8
  %379 = getelementptr inbounds i32*, i32** %378, i64 13
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %21, align 4
  %385 = load i32***, i32**** @positions, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32**, i32*** %385, i64 %387
  %389 = load i32**, i32*** %388, align 8
  %390 = getelementptr inbounds i32*, i32** %389, i64 13
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  store i32 %395, i32* %22, align 4
  %396 = load i32***, i32**** @positions, align 8
  %397 = load i32, i32* %12, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32**, i32*** %396, i64 %398
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 12
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %11, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %23, align 4
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 3
  %409 = load i64*, i64** %408, align 8
  %410 = load i32, i32* %11, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %409, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = load i32, i32* %22, align 4
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %11, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = mul nsw i32 %414, %421
  %423 = sext i32 %422 to i64
  %424 = add nsw i64 %413, %423
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %424, %426
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %11, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %23, align 4
  %436 = load float, float* %13, align 4
  %437 = call i32 @draw_dots(i64 %427, i32 %434, i32 %435, float %436)
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 3
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = load i32, i32* %22, align 4
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %9, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = mul nsw i32 %445, %452
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %444, %454
  %456 = load i32, i32* %21, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %455, %457
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %9, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %21, align 4
  %467 = load float, float* %13, align 4
  %468 = call i32 @draw_dots(i64 %458, i32 %465, i32 %466, float %467)
  %469 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 3
  %471 = load i64*, i64** %470, align 8
  %472 = load i32, i32* %10, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %471, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = load i32, i32* %22, align 4
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %10, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = mul nsw i32 %476, %483
  %485 = sext i32 %484 to i64
  %486 = add nsw i64 %475, %485
  %487 = load i32, i32* %21, align 4
  %488 = sext i32 %487 to i64
  %489 = add nsw i64 %486, %488
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* %22, align 4
  %498 = load float, float* %13, align 4
  %499 = call i32 @draw_dots(i64 %489, i32 %496, i32 %497, float %498)
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 3
  %502 = load i64*, i64** %501, align 8
  %503 = getelementptr inbounds i64, i64* %502, i64 3
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %531

506:                                              ; preds = %373
  %507 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 3
  %509 = load i64*, i64** %508, align 8
  %510 = getelementptr inbounds i64, i64* %509, i64 3
  %511 = load i64, i64* %510, align 8
  %512 = load i32, i32* %22, align 4
  %513 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 3
  %517 = load i32, i32* %516, align 4
  %518 = mul nsw i32 %512, %517
  %519 = sext i32 %518 to i64
  %520 = add nsw i64 %511, %519
  %521 = load i32, i32* %21, align 4
  %522 = sext i32 %521 to i64
  %523 = add nsw i64 %520, %522
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 0
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 3
  %528 = load i32, i32* %527, align 4
  %529 = load float, float* %13, align 4
  %530 = call i32 @draw_dots(i64 %523, i32 %528, i32 255, float %529)
  br label %531

531:                                              ; preds = %506, %373
  br label %532

532:                                              ; preds = %531, %367
  store i32 0, i32* %14, align 4
  br label %533

533:                                              ; preds = %642, %532
  %534 = load i32, i32* %14, align 4
  %535 = icmp slt i32 %534, 6
  br i1 %535, label %536, label %542

536:                                              ; preds = %533
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = and i32 %539, 4
  %541 = icmp ne i32 %540, 0
  br label %542

542:                                              ; preds = %536, %533
  %543 = phi i1 [ false, %533 ], [ %541, %536 ]
  br i1 %543, label %544, label %645

544:                                              ; preds = %542
  %545 = bitcast [4 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %545, i8* align 16 bitcast ([4 x i32]* @__const.color_graticule.color to i8*), i64 16, i1 false)
  %546 = load i32***, i32**** @positions, align 8
  %547 = load i32, i32* %12, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32**, i32*** %546, i64 %548
  %550 = load i32**, i32*** %549, align 8
  %551 = load i32, i32* %14, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32*, i32** %550, i64 %552
  %554 = load i32*, i32** %553, align 8
  %555 = load i32, i32* %9, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  store i32 %558, i32* %25, align 4
  %559 = load i32***, i32**** @positions, align 8
  %560 = load i32, i32* %12, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32**, i32*** %559, i64 %561
  %563 = load i32**, i32*** %562, align 8
  %564 = load i32, i32* %14, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32*, i32** %563, i64 %565
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %10, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  store i32 %571, i32* %26, align 4
  %572 = load i32***, i32**** @positions, align 8
  %573 = load i32, i32* %12, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32**, i32*** %572, i64 %574
  %576 = load i32**, i32*** %575, align 8
  %577 = load i32, i32* %14, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32*, i32** %576, i64 %578
  %580 = load i32*, i32** %579, align 8
  %581 = load i32, i32* %11, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  store i32 %584, i32* %27, align 4
  %585 = load i32, i32* %27, align 4
  %586 = load i32, i32* %11, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %587
  store i32 %585, i32* %588, align 4
  %589 = load i32, i32* %25, align 4
  %590 = load i32, i32* %9, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %591
  store i32 %589, i32* %592, align 4
  %593 = load i32, i32* %26, align 4
  %594 = load i32, i32* %10, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %595
  store i32 %593, i32* %596, align 4
  %597 = load i32, i32* %25, align 4
  %598 = icmp sgt i32 %597, 128
  br i1 %598, label %599, label %602

599:                                              ; preds = %544
  %600 = load i32, i32* %25, align 4
  %601 = add nsw i32 %600, 8
  store i32 %601, i32* %25, align 4
  br label %605

602:                                              ; preds = %544
  %603 = load i32, i32* %25, align 4
  %604 = sub nsw i32 %603, 14
  store i32 %604, i32* %25, align 4
  br label %605

605:                                              ; preds = %602, %599
  %606 = load i32, i32* %26, align 4
  %607 = icmp sgt i32 %606, 128
  br i1 %607, label %608, label %611

608:                                              ; preds = %605
  %609 = load i32, i32* %26, align 4
  %610 = add nsw i32 %609, 8
  store i32 %610, i32* %26, align 4
  br label %614

611:                                              ; preds = %605
  %612 = load i32, i32* %26, align 4
  %613 = sub nsw i32 %612, 14
  store i32 %613, i32* %26, align 4
  br label %614

614:                                              ; preds = %611, %608
  %615 = load i32, i32* %25, align 4
  %616 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %617 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %616, i32 0, i32 2
  %618 = load i64, i64* %617, align 8
  %619 = sub nsw i64 %618, 9
  %620 = call i32 @av_clip(i32 %615, i32 0, i64 %619)
  store i32 %620, i32* %25, align 4
  %621 = load i32, i32* %26, align 4
  %622 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %623 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %622, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = sub nsw i64 %624, 9
  %626 = call i32 @av_clip(i32 %621, i32 0, i64 %625)
  store i32 %626, i32* %26, align 4
  %627 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %628 = load i32, i32* %25, align 4
  %629 = load i32, i32* %26, align 4
  %630 = load float, float* %13, align 4
  %631 = load float, float* %13, align 4
  %632 = fpext float %631 to double
  %633 = fsub double 1.000000e+00, %632
  %634 = fptosi double %633 to i32
  %635 = load i32*, i32** @positions_name, align 8
  %636 = load i32, i32* %14, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32, i32* %635, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %641 = call i32 @draw_htext(%struct.TYPE_7__* %627, i32 %628, i32 %629, float %630, i32 %634, i32 %639, i32* %640)
  br label %642

642:                                              ; preds = %614
  %643 = load i32, i32* %14, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %14, align 4
  br label %533

645:                                              ; preds = %542
  ret void
}

declare dso_local i32 @draw_dots(i64, i32, i32, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_clip(i32, i32, i64) #1

declare dso_local i32 @draw_htext(%struct.TYPE_7__*, i32, i32, float, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
