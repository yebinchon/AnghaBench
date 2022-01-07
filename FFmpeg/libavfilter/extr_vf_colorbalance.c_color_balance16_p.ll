; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance16_p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance16_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, float, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32, i32)* @color_balance16_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_balance16_p(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %10, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %11, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to float*
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %63, %68
  %70 = sdiv i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %62, i64 %71
  store float* %72, float** %15, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to float*
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %79, %84
  %86 = sdiv i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %78, i64 %87
  store float* %88, float** %16, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to float*
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %95, %100
  %102 = sdiv i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %94, i64 %103
  store float* %104, float** %17, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 3
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to float*
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %111, %116
  %118 = sdiv i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %110, i64 %119
  store float* %120, float** %18, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to float*
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %127, %132
  %134 = sdiv i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %126, i64 %135
  store float* %136, float** %19, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to float*
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %143, %148
  %150 = sdiv i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %142, i64 %151
  store float* %152, float** %20, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 2
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to float*
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %159, %164
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %158, i64 %167
  store float* %168, float** %21, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 3
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to float*
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  %182 = sdiv i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %174, i64 %183
  store float* %184, float** %22, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %23, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load float, float* %189, align 4
  store float %190, float* %24, align 4
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %25, align 4
  br label %192

192:                                              ; preds = %411, %4
  %193 = load i32, i32* %25, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %414

196:                                              ; preds = %192
  store i32 0, i32* %26, align 4
  br label %197

197:                                              ; preds = %335, %196
  %198 = load i32, i32* %26, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %338

203:                                              ; preds = %197
  %204 = load float*, float** %17, align 8
  %205 = load i32, i32* %26, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float, float* %24, align 4
  %210 = fdiv float %208, %209
  store float %210, float* %27, align 4
  %211 = load float*, float** %15, align 8
  %212 = load i32, i32* %26, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = load float, float* %24, align 4
  %217 = fdiv float %215, %216
  store float %217, float* %28, align 4
  %218 = load float*, float** %16, align 8
  %219 = load i32, i32* %26, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load float, float* %24, align 4
  %224 = fdiv float %222, %223
  store float %224, float* %29, align 4
  %225 = load float, float* %27, align 4
  %226 = load float, float* %28, align 4
  %227 = load float, float* %29, align 4
  %228 = call float @FFMAX3(float %225, float %226, float %227)
  %229 = load float, float* %27, align 4
  %230 = load float, float* %28, align 4
  %231 = load float, float* %29, align 4
  %232 = call float @FFMIN3(float %229, float %230, float %231)
  %233 = fadd float %228, %232
  store float %233, float* %30, align 4
  %234 = load float, float* %27, align 4
  %235 = load float, float* %30, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call float @get_component(float %234, float %235, i32 %239, i32 %243, i32 %247)
  store float %248, float* %27, align 4
  %249 = load float, float* %28, align 4
  %250 = load float, float* %30, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call float @get_component(float %249, float %250, i32 %254, i32 %258, i32 %262)
  store float %263, float* %28, align 4
  %264 = load float, float* %29, align 4
  %265 = load float, float* %30, align 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call float @get_component(float %264, float %265, i32 %269, i32 %273, i32 %277)
  store float %278, float* %29, align 4
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %203
  %284 = load float, float* %30, align 4
  %285 = call i32 @preservel(float* %27, float* %28, float* %29, float %284)
  br label %286

286:                                              ; preds = %283, %203
  %287 = load float, float* %27, align 4
  %288 = load float, float* %24, align 4
  %289 = fmul float %287, %288
  %290 = load i32, i32* %23, align 4
  %291 = call float @av_clip_uintp2_c(float %289, i32 %290)
  %292 = load float*, float** %21, align 8
  %293 = load i32, i32* %26, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %292, i64 %294
  store float %291, float* %295, align 4
  %296 = load float, float* %28, align 4
  %297 = load float, float* %24, align 4
  %298 = fmul float %296, %297
  %299 = load i32, i32* %23, align 4
  %300 = call float @av_clip_uintp2_c(float %298, i32 %299)
  %301 = load float*, float** %19, align 8
  %302 = load i32, i32* %26, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  store float %300, float* %304, align 4
  %305 = load float, float* %29, align 4
  %306 = load float, float* %24, align 4
  %307 = fmul float %305, %306
  %308 = load i32, i32* %23, align 4
  %309 = call float @av_clip_uintp2_c(float %307, i32 %308)
  %310 = load float*, float** %20, align 8
  %311 = load i32, i32* %26, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %310, i64 %312
  store float %309, float* %313, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %316 = icmp ne %struct.TYPE_14__* %314, %315
  br i1 %316, label %317, label %334

317:                                              ; preds = %286
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %317
  %325 = load float*, float** %18, align 8
  %326 = load i32, i32* %26, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load float*, float** %22, align 8
  %331 = load i32, i32* %26, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %330, i64 %332
  store float %329, float* %333, align 4
  br label %334

334:                                              ; preds = %324, %317, %286
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %26, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %26, align 4
  br label %197

338:                                              ; preds = %197
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = sdiv i32 %343, 2
  %345 = load float*, float** %15, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds float, float* %345, i64 %346
  store float* %347, float** %15, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = sdiv i32 %352, 2
  %354 = load float*, float** %16, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds float, float* %354, i64 %355
  store float* %356, float** %16, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = sdiv i32 %361, 2
  %363 = load float*, float** %17, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds float, float* %363, i64 %364
  store float* %365, float** %17, align 8
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 3
  %370 = load i32, i32* %369, align 4
  %371 = sdiv i32 %370, 2
  %372 = load float*, float** %18, align 8
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds float, float* %372, i64 %373
  store float* %374, float** %18, align 8
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  %379 = load i32, i32* %378, align 4
  %380 = sdiv i32 %379, 2
  %381 = load float*, float** %19, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds float, float* %381, i64 %382
  store float* %383, float** %19, align 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = sdiv i32 %388, 2
  %390 = load float*, float** %20, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds float, float* %390, i64 %391
  store float* %392, float** %20, align 8
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 2
  %397 = load i32, i32* %396, align 4
  %398 = sdiv i32 %397, 2
  %399 = load float*, float** %21, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds float, float* %399, i64 %400
  store float* %401, float** %21, align 8
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 1
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 3
  %406 = load i32, i32* %405, align 4
  %407 = sdiv i32 %406, 2
  %408 = load float*, float** %22, align 8
  %409 = sext i32 %407 to i64
  %410 = getelementptr inbounds float, float* %408, i64 %409
  store float* %410, float** %22, align 8
  br label %411

411:                                              ; preds = %338
  %412 = load i32, i32* %25, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %25, align 4
  br label %192

414:                                              ; preds = %192
  ret i32 0
}

declare dso_local float @FFMAX3(float, float, float) #1

declare dso_local float @FFMIN3(float, float, float) #1

declare dso_local float @get_component(float, float, i32, i32, i32) #1

declare dso_local i32 @preservel(float*, float*, float*, float) #1

declare dso_local float @av_clip_uintp2_c(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
