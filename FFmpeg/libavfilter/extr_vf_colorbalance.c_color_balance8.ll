; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32*, float, i32, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32**, i32* }

@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32, i32)* @color_balance8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_balance8(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %10, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %11, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %12, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %45, i64 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %13, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %68, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %67, i64 %75
  store i32* %76, i32** %16, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @R, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @G, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %18, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @B, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @A, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 8
  store float %103, float* %21, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %112, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %111, i64 %119
  store i32* %120, i32** %23, align 8
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %24, align 4
  br label %122

122:                                              ; preds = %302, %4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %305

126:                                              ; preds = %122
  %127 = load i32*, i32** %16, align 8
  store i32* %127, i32** %26, align 8
  %128 = load i32*, i32** %23, align 8
  store i32* %128, i32** %27, align 8
  store i32 0, i32* %25, align 4
  br label %129

129:                                              ; preds = %281, %126
  %130 = load i32, i32* %25, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %22, align 4
  %135 = mul nsw i32 %133, %134
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %285

137:                                              ; preds = %129
  %138 = load i32*, i32** %26, align 8
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sitofp i32 %144 to float
  %146 = load float, float* %21, align 4
  %147 = fdiv float %145, %146
  store float %147, float* %28, align 4
  %148 = load i32*, i32** %26, align 8
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sitofp i32 %154 to float
  %156 = load float, float* %21, align 4
  %157 = fdiv float %155, %156
  store float %157, float* %29, align 4
  %158 = load i32*, i32** %26, align 8
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sitofp i32 %164 to float
  %166 = load float, float* %21, align 4
  %167 = fdiv float %165, %166
  store float %167, float* %30, align 4
  %168 = load float, float* %28, align 4
  %169 = load float, float* %29, align 4
  %170 = load float, float* %30, align 4
  %171 = call float @FFMAX3(float %168, float %169, float %170)
  %172 = load float, float* %28, align 4
  %173 = load float, float* %29, align 4
  %174 = load float, float* %30, align 4
  %175 = call float @FFMIN3(float %172, float %173, float %174)
  %176 = fadd float %171, %175
  store float %176, float* %31, align 4
  %177 = load float, float* %28, align 4
  %178 = load float, float* %31, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call float @get_component(float %177, float %178, i32 %182, i32 %186, i32 %190)
  store float %191, float* %28, align 4
  %192 = load float, float* %29, align 4
  %193 = load float, float* %31, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call float @get_component(float %192, float %193, i32 %197, i32 %201, i32 %205)
  store float %206, float* %29, align 4
  %207 = load float, float* %30, align 4
  %208 = load float, float* %31, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call float @get_component(float %207, float %208, i32 %212, i32 %216, i32 %220)
  store float %221, float* %30, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %137
  %227 = load float, float* %31, align 4
  %228 = call i32 @preservel(float* %28, float* %29, float* %30, float %227)
  br label %229

229:                                              ; preds = %226, %137
  %230 = load float, float* %28, align 4
  %231 = load float, float* %21, align 4
  %232 = fmul float %230, %231
  %233 = call i32 @av_clip_uint8(float %232)
  %234 = load i32*, i32** %27, align 8
  %235 = load i32, i32* %25, align 4
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  store i32 %233, i32* %239, align 4
  %240 = load float, float* %29, align 4
  %241 = load float, float* %21, align 4
  %242 = fmul float %240, %241
  %243 = call i32 @av_clip_uint8(float %242)
  %244 = load i32*, i32** %27, align 8
  %245 = load i32, i32* %25, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load float, float* %30, align 4
  %251 = load float, float* %21, align 4
  %252 = fmul float %250, %251
  %253 = call i32 @av_clip_uint8(float %252)
  %254 = load i32*, i32** %27, align 8
  %255 = load i32, i32* %25, align 4
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  store i32 %253, i32* %259, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %262 = icmp ne %struct.TYPE_15__* %260, %261
  br i1 %262, label %263, label %280

263:                                              ; preds = %229
  %264 = load i32, i32* %22, align 4
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load i32*, i32** %26, align 8
  %268 = load i32, i32* %25, align 4
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %27, align 8
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %20, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  store i32 %273, i32* %279, align 4
  br label %280

280:                                              ; preds = %266, %263, %229
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %25, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %25, align 4
  br label %129

285:                                              ; preds = %129
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %16, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %16, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %23, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %23, align 8
  br label %302

302:                                              ; preds = %285
  %303 = load i32, i32* %24, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %24, align 4
  br label %122

305:                                              ; preds = %122
  ret i32 0
}

declare dso_local float @FFMAX3(float, float, float) #1

declare dso_local float @FFMIN3(float, float, float) #1

declare dso_local float @get_component(float, float, i32, i32, i32) #1

declare dso_local i32 @preservel(float*, float*, float*, float) #1

declare dso_local i32 @av_clip_uint8(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
