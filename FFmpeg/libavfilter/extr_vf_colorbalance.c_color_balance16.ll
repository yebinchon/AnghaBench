; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, float, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i64* }

@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32, i32)* @color_balance16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_balance16(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %11, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %12, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %46, i64 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %13, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to float*
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %70, %75
  %77 = sdiv i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %69, i64 %78
  store float* %79, float** %16, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @R, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @G, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %18, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @B, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @A, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %20, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 2
  store i32 %107, i32* %21, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %22, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load float, float* %112, align 8
  store float %113, float* %23, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to float*
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %120, %125
  %127 = sdiv i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %119, i64 %128
  store float* %129, float** %24, align 8
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %25, align 4
  br label %131

131:                                              ; preds = %313, %4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %316

135:                                              ; preds = %131
  %136 = load float*, float** %16, align 8
  store float* %136, float** %27, align 8
  %137 = load float*, float** %24, align 8
  store float* %137, float** %28, align 8
  store i32 0, i32* %26, align 4
  br label %138

138:                                              ; preds = %290, %135
  %139 = load i32, i32* %26, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %21, align 4
  %144 = mul nsw i32 %142, %143
  %145 = icmp slt i32 %139, %144
  br i1 %145, label %146, label %294

146:                                              ; preds = %138
  %147 = load float*, float** %27, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %147, i64 %151
  %153 = load float, float* %152, align 4
  %154 = load float, float* %23, align 4
  %155 = fdiv float %153, %154
  store float %155, float* %29, align 4
  %156 = load float*, float** %27, align 8
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %156, i64 %160
  %162 = load float, float* %161, align 4
  %163 = load float, float* %23, align 4
  %164 = fdiv float %162, %163
  store float %164, float* %30, align 4
  %165 = load float*, float** %27, align 8
  %166 = load i32, i32* %26, align 4
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %165, i64 %169
  %171 = load float, float* %170, align 4
  %172 = load float, float* %23, align 4
  %173 = fdiv float %171, %172
  store float %173, float* %31, align 4
  %174 = load float, float* %29, align 4
  %175 = load float, float* %30, align 4
  %176 = load float, float* %31, align 4
  %177 = call float @FFMAX3(float %174, float %175, float %176)
  %178 = load float, float* %29, align 4
  %179 = load float, float* %30, align 4
  %180 = load float, float* %31, align 4
  %181 = call float @FFMIN3(float %178, float %179, float %180)
  %182 = fadd float %177, %181
  store float %182, float* %32, align 4
  %183 = load float, float* %29, align 4
  %184 = load float, float* %32, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call float @get_component(float %183, float %184, i32 %188, i32 %192, i32 %196)
  store float %197, float* %29, align 4
  %198 = load float, float* %30, align 4
  %199 = load float, float* %32, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call float @get_component(float %198, float %199, i32 %203, i32 %207, i32 %211)
  store float %212, float* %30, align 4
  %213 = load float, float* %31, align 4
  %214 = load float, float* %32, align 4
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call float @get_component(float %213, float %214, i32 %218, i32 %222, i32 %226)
  store float %227, float* %31, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %146
  %233 = load float, float* %32, align 4
  %234 = call i32 @preservel(float* %29, float* %30, float* %31, float %233)
  br label %235

235:                                              ; preds = %232, %146
  %236 = load float, float* %29, align 4
  %237 = load float, float* %23, align 4
  %238 = fmul float %236, %237
  %239 = load i32, i32* %22, align 4
  %240 = call float @av_clip_uintp2_c(float %238, i32 %239)
  %241 = load float*, float** %28, align 8
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %241, i64 %245
  store float %240, float* %246, align 4
  %247 = load float, float* %30, align 4
  %248 = load float, float* %23, align 4
  %249 = fmul float %247, %248
  %250 = load i32, i32* %22, align 4
  %251 = call float @av_clip_uintp2_c(float %249, i32 %250)
  %252 = load float*, float** %28, align 8
  %253 = load i32, i32* %26, align 4
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %252, i64 %256
  store float %251, float* %257, align 4
  %258 = load float, float* %31, align 4
  %259 = load float, float* %23, align 4
  %260 = fmul float %258, %259
  %261 = load i32, i32* %22, align 4
  %262 = call float @av_clip_uintp2_c(float %260, i32 %261)
  %263 = load float*, float** %28, align 8
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %19, align 4
  %266 = add nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %263, i64 %267
  store float %262, float* %268, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %271 = icmp ne %struct.TYPE_15__* %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %235
  %273 = load i32, i32* %21, align 4
  %274 = icmp eq i32 %273, 4
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  %276 = load float*, float** %27, align 8
  %277 = load i32, i32* %26, align 4
  %278 = load i32, i32* %20, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %276, i64 %280
  %282 = load float, float* %281, align 4
  %283 = load float*, float** %28, align 8
  %284 = load i32, i32* %26, align 4
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %283, i64 %287
  store float %282, float* %288, align 4
  br label %289

289:                                              ; preds = %275, %272, %235
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %26, align 4
  br label %138

294:                                              ; preds = %138
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = sdiv i32 %299, 2
  %301 = load float*, float** %16, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds float, float* %301, i64 %302
  store float* %303, float** %16, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = sdiv i32 %308, 2
  %310 = load float*, float** %24, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds float, float* %310, i64 %311
  store float* %312, float** %24, align 8
  br label %313

313:                                              ; preds = %294
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %25, align 4
  br label %131

316:                                              ; preds = %131
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
