; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_green_graticule.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_green_graticule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_7__ = type { i32*, i64, i64, i64* }

@positions = common dso_local global i32*** null, align 8
@__const.green_graticule.color = private unnamed_addr constant [4 x i32] [i32 128, i32 0, i32 0, i32 255], align 16
@positions_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32, i32)* @green_graticule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @green_graticule(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  store float %26, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %161, %6
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 12
  br i1 %29, label %30, label %164

30:                                               ; preds = %27
  %31 = load i32***, i32**** @positions, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32**, i32*** %31, i64 %33
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32***, i32**** @positions, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %61, %69
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load float, float* %13, align 4
  %80 = call i32 @draw_dots(i64 %73, i32 %78, i32 128, float %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %85, %93
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load float, float* %13, align 4
  %104 = call i32 @draw_dots(i64 %97, i32 %102, i32 0, float %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %110, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %109, %117
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load float, float* %13, align 4
  %128 = call i32 @draw_dots(i64 %121, i32 %126, i32 0, float %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %30
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 3
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %141, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %140, %148
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = load float, float* %13, align 4
  %159 = call i32 @draw_dots(i64 %152, i32 %157, i32 255, float %158)
  br label %160

160:                                              ; preds = %135, %30
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %27

164:                                              ; preds = %27
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %297

170:                                              ; preds = %164
  %171 = load i32***, i32**** @positions, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32**, i32*** %171, i64 %173
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 12
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %17, align 4
  %182 = load i32***, i32**** @positions, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32**, i32*** %182, i64 %184
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 12
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %18, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %198, %203
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %197, %205
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load float, float* %13, align 4
  %216 = call i32 @draw_dots(i64 %209, i32 %214, i32 128, float %215)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %222, %227
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %221, %229
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = load float, float* %13, align 4
  %240 = call i32 @draw_dots(i64 %233, i32 %238, i32 0, float %239)
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i64*, i64** %242, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 2
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %246, %251
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %245, %253
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = load float, float* %13, align 4
  %264 = call i32 @draw_dots(i64 %257, i32 %262, i32 0, float %263)
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %296

271:                                              ; preds = %170
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 3
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 3
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 3
  %282 = load i32, i32* %281, align 4
  %283 = mul nsw i32 %277, %282
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %276, %284
  %286 = load i32, i32* %17, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %285, %287
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = load float, float* %13, align 4
  %295 = call i32 @draw_dots(i64 %288, i32 %293, i32 255, float %294)
  br label %296

296:                                              ; preds = %271, %170
  br label %297

297:                                              ; preds = %296, %164
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 2
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %430

303:                                              ; preds = %297
  %304 = load i32***, i32**** @positions, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32**, i32*** %304, i64 %306
  %308 = load i32**, i32*** %307, align 8
  %309 = getelementptr inbounds i32*, i32** %308, i64 13
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %19, align 4
  %315 = load i32***, i32**** @positions, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32**, i32*** %315, i64 %317
  %319 = load i32**, i32*** %318, align 8
  %320 = getelementptr inbounds i32*, i32** %319, i64 13
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %20, align 4
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 3
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = load i32, i32* %20, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %331, %336
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %330, %338
  %340 = load i32, i32* %19, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %339, %341
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = load float, float* %13, align 4
  %349 = call i32 @draw_dots(i64 %342, i32 %347, i32 128, float %348)
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 3
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 1
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %355, %360
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %354, %362
  %364 = load i32, i32* %19, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %363, %365
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = load float, float* %13, align 4
  %373 = call i32 @draw_dots(i64 %366, i32 %371, i32 0, float %372)
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 3
  %376 = load i64*, i64** %375, align 8
  %377 = getelementptr inbounds i64, i64* %376, i64 2
  %378 = load i64, i64* %377, align 8
  %379 = load i32, i32* %20, align 4
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 2
  %384 = load i32, i32* %383, align 4
  %385 = mul nsw i32 %379, %384
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %378, %386
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %387, %389
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 2
  %395 = load i32, i32* %394, align 4
  %396 = load float, float* %13, align 4
  %397 = call i32 @draw_dots(i64 %390, i32 %395, i32 0, float %396)
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 3
  %400 = load i64*, i64** %399, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 3
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %429

404:                                              ; preds = %303
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 3
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds i64, i64* %407, i64 3
  %409 = load i64, i64* %408, align 8
  %410 = load i32, i32* %20, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 3
  %415 = load i32, i32* %414, align 4
  %416 = mul nsw i32 %410, %415
  %417 = sext i32 %416 to i64
  %418 = add nsw i64 %409, %417
  %419 = load i32, i32* %19, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %418, %420
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 0
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 3
  %426 = load i32, i32* %425, align 4
  %427 = load float, float* %13, align 4
  %428 = call i32 @draw_dots(i64 %421, i32 %426, i32 255, float %427)
  br label %429

429:                                              ; preds = %404, %303
  br label %430

430:                                              ; preds = %429, %297
  store i32 0, i32* %14, align 4
  br label %431

431:                                              ; preds = %515, %430
  %432 = load i32, i32* %14, align 4
  %433 = icmp slt i32 %432, 6
  br i1 %433, label %434, label %440

434:                                              ; preds = %431
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = and i32 %437, 4
  %439 = icmp ne i32 %438, 0
  br label %440

440:                                              ; preds = %434, %431
  %441 = phi i1 [ false, %431 ], [ %439, %434 ]
  br i1 %441, label %442, label %518

442:                                              ; preds = %440
  %443 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %443, i8* align 16 bitcast ([4 x i32]* @__const.green_graticule.color to i8*), i64 16, i1 false)
  %444 = load i32***, i32**** @positions, align 8
  %445 = load i32, i32* %12, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32**, i32*** %444, i64 %446
  %448 = load i32**, i32*** %447, align 8
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %448, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* %22, align 4
  %457 = load i32***, i32**** @positions, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32**, i32*** %457, i64 %459
  %461 = load i32**, i32*** %460, align 8
  %462 = load i32, i32* %14, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32*, i32** %461, i64 %463
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %10, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %23, align 4
  %470 = load i32, i32* %22, align 4
  %471 = icmp sgt i32 %470, 128
  br i1 %471, label %472, label %475

472:                                              ; preds = %442
  %473 = load i32, i32* %22, align 4
  %474 = add nsw i32 %473, 8
  store i32 %474, i32* %22, align 4
  br label %478

475:                                              ; preds = %442
  %476 = load i32, i32* %22, align 4
  %477 = sub nsw i32 %476, 14
  store i32 %477, i32* %22, align 4
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* %23, align 4
  %480 = icmp sgt i32 %479, 128
  br i1 %480, label %481, label %484

481:                                              ; preds = %478
  %482 = load i32, i32* %23, align 4
  %483 = add nsw i32 %482, 8
  store i32 %483, i32* %23, align 4
  br label %487

484:                                              ; preds = %478
  %485 = load i32, i32* %23, align 4
  %486 = sub nsw i32 %485, 14
  store i32 %486, i32* %23, align 4
  br label %487

487:                                              ; preds = %484, %481
  %488 = load i32, i32* %22, align 4
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 2
  %491 = load i64, i64* %490, align 8
  %492 = sub nsw i64 %491, 9
  %493 = call i32 @av_clip(i32 %488, i32 0, i64 %492)
  store i32 %493, i32* %22, align 4
  %494 = load i32, i32* %23, align 4
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = sub nsw i64 %497, 9
  %499 = call i32 @av_clip(i32 %494, i32 0, i64 %498)
  store i32 %499, i32* %23, align 4
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %501 = load i32, i32* %22, align 4
  %502 = load i32, i32* %23, align 4
  %503 = load float, float* %13, align 4
  %504 = load float, float* %13, align 4
  %505 = fpext float %504 to double
  %506 = fsub double 1.000000e+00, %505
  %507 = fptosi double %506 to i32
  %508 = load i32*, i32** @positions_name, align 8
  %509 = load i32, i32* %14, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %514 = call i32 @draw_htext(%struct.TYPE_7__* %500, i32 %501, i32 %502, float %503, i32 %507, i32 %512, i32* %513)
  br label %515

515:                                              ; preds = %487
  %516 = load i32, i32* %14, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %14, align 4
  br label %431

518:                                              ; preds = %440
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
