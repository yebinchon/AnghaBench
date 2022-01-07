; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_fir_quantum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_fir_quantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_21__, i32, i32, %struct.TYPE_16__*, %struct.TYPE_23__** }
%struct.TYPE_27__ = type { i32 (float*, float*, i32, i32)* }
%struct.TYPE_21__ = type { i32 (float*, float*, float*, i32)* }
%struct.TYPE_16__ = type { i32, i32*, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_22__*, i32*, %struct.TYPE_20__*, %struct.TYPE_28__*, i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64* }
%struct.TYPE_20__ = type { i64* }
%struct.TYPE_28__ = type { i64* }
%struct.TYPE_26__ = type { i64* }
%struct.TYPE_25__ = type { i64* }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_23__ = type { i64* }
%struct.TYPE_18__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32)* @fir_quantum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fir_quantum(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %31, i64 0
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float* %43, float** %10, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to float*
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float* %54, float** %13, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @FFMIN(i32 %57, i32 %62)
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %504, %4
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %507

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %75
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %19, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 16
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to float*
  store float* %86, float** %20, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 15
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to float*
  store float* %96, float** %21, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 14
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to float*
  store float* %106, float** %22, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %110, align 8
  %112 = load float*, float** %20, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %112, i64 %116
  %118 = load float*, float** %10, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @FFALIGN(i32 %122, i32 4)
  %124 = call i32 %111(float* %117, float* %118, i32 %121, i32 %123)
  %125 = call i32 (...) @emms_c()
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %128
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %70
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 0, i32* %154, align 4
  br label %204

155:                                              ; preds = %70
  %156 = load float*, float** %20, align 8
  %157 = load float*, float** %20, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %157, i64 %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memmove(float* %156, float* %162, i32 %172)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load float*, float** %21, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds float, float* %181, i64 %182
  store float* %183, float** %21, align 8
  store i32 0, i32* %15, align 4
  br label %184

184:                                              ; preds = %200, %155
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load float*, float** %21, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  %193 = load float, float* %192, align 4
  %194 = load float*, float** %13, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fadd float %198, %193
  store float %199, float* %197, align 4
  br label %200

200:                                              ; preds = %188
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %184

203:                                              ; preds = %184
  br label %504

204:                                              ; preds = %148
  %205 = load float*, float** %22, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = mul i64 4, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 @memset(float* %205, i32 0, i32 %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 12
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to float*
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %222, i64 %234
  store float* %235, float** %11, align 8
  %236 = load float*, float** %11, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %236, i64 %240
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %244, %247
  %249 = sext i32 %248 to i64
  %250 = mul i64 4, %249
  %251 = trunc i64 %250 to i32
  %252 = call i32 @memset(float* %241, i32 0, i32 %251)
  %253 = load float*, float** %11, align 8
  %254 = load float*, float** %20, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = mul i64 4, %258
  %260 = trunc i64 %259 to i32
  %261 = call i32 @memcpy(float* %253, float* %254, i32 %260)
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 13
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load float*, float** %11, align 8
  %270 = call i32 @av_rdft_calc(i32 %268, float* %269)
  %271 = load float*, float** %11, align 8
  %272 = getelementptr inbounds float, float* %271, i64 1
  %273 = load float, float* %272, align 4
  %274 = load float*, float** %11, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 2, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %274, i64 %279
  store float %273, float* %280, align 4
  %281 = load float*, float** %11, align 8
  %282 = getelementptr inbounds float, float* %281, i64 1
  store float 0.000000e+00, float* %282, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 5
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %290

290:                                              ; preds = %360, %204
  %291 = load i32, i32* %16, align 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %363

296:                                              ; preds = %290
  %297 = load i32, i32* %17, align 4
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 8
  %300 = load i32, i32* %299, align 8
  %301 = mul nsw i32 %297, %300
  store i32 %301, i32* %23, align 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 12
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 0
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = inttoptr i64 %310 to float*
  %312 = load i32, i32* %16, align 4
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %312, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %311, i64 %317
  store float* %318, float** %24, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 11
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = mul nsw i32 %324, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %323, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = inttoptr i64 %334 to i32*
  %336 = load i32, i32* %23, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  store i32* %338, i32** %25, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = load i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)** %341, align 8
  %343 = load float*, float** %22, align 8
  %344 = load float*, float** %24, align 8
  %345 = load i32*, i32** %25, align 8
  %346 = bitcast i32* %345 to float*
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 %342(float* %343, float* %344, float* %346, i32 %349)
  %351 = load i32, i32* %17, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %296
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  store i32 %356, i32* %17, align 4
  br label %357

357:                                              ; preds = %353, %296
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %17, align 4
  br label %360

360:                                              ; preds = %357
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %16, align 4
  br label %290

363:                                              ; preds = %290
  %364 = load float*, float** %22, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = mul nsw i32 2, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %364, i64 %369
  %371 = load float, float* %370, align 4
  %372 = load float*, float** %22, align 8
  %373 = getelementptr inbounds float, float* %372, i64 1
  store float %371, float* %373, align 4
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 10
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load float*, float** %22, align 8
  %382 = call i32 @av_rdft_calc(i32 %380, float* %381)
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 9
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = inttoptr i64 %391 to float*
  store float* %392, float** %12, align 8
  store i32 0, i32* %15, align 4
  br label %393

393:                                              ; preds = %411, %363
  %394 = load i32, i32* %15, align 4
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp slt i32 %394, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %393
  %400 = load float*, float** %22, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  %404 = load float, float* %403, align 4
  %405 = load float*, float** %12, align 8
  %406 = load i32, i32* %15, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %405, i64 %407
  %409 = load float, float* %408, align 4
  %410 = fadd float %409, %404
  store float %410, float* %408, align 4
  br label %411

411:                                              ; preds = %399
  %412 = load i32, i32* %15, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %15, align 4
  br label %393

414:                                              ; preds = %393
  %415 = load float*, float** %21, align 8
  %416 = load float*, float** %12, align 8
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = sext i32 %419 to i64
  %421 = mul i64 %420, 4
  %422 = trunc i64 %421 to i32
  %423 = call i32 @memcpy(float* %415, float* %416, i32 %422)
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 9
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 0
  %428 = load i64*, i64** %427, align 8
  %429 = load i32, i32* %7, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i64, i64* %428, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = inttoptr i64 %432 to float*
  store float* %433, float** %12, align 8
  %434 = load float*, float** %12, align 8
  %435 = load float*, float** %22, align 8
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %435, i64 %439
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = sext i32 %443 to i64
  %445 = mul i64 %444, 4
  %446 = trunc i64 %445 to i32
  %447 = call i32 @memcpy(float* %434, float* %440, i32 %446)
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 5
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %7, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, 1
  %456 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %459 = srem i32 %455, %458
  %460 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i32 0, i32 5
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %7, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  %466 = load float*, float** %20, align 8
  %467 = load float*, float** %20, align 8
  %468 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %467, i64 %471
  %473 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = sub nsw i32 %475, %478
  %480 = sext i32 %479 to i64
  %481 = mul i64 %480, 4
  %482 = trunc i64 %481 to i32
  %483 = call i32 @memmove(float* %466, float* %472, i32 %482)
  store i32 0, i32* %15, align 4
  br label %484

484:                                              ; preds = %500, %414
  %485 = load i32, i32* %15, align 4
  %486 = load i32, i32* %14, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %488, label %503

488:                                              ; preds = %484
  %489 = load float*, float** %21, align 8
  %490 = load i32, i32* %15, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = load float*, float** %13, align 8
  %495 = load i32, i32* %15, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %494, i64 %496
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %493
  store float %499, float* %497, align 4
  br label %500

500:                                              ; preds = %488
  %501 = load i32, i32* %15, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %15, align 4
  br label %484

503:                                              ; preds = %484
  br label %504

504:                                              ; preds = %503, %203
  %505 = load i32, i32* %18, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %18, align 4
  br label %64

507:                                              ; preds = %64
  %508 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %509 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %508, i32 0, i32 3
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %510, i32 0, i32 0
  %512 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %511, align 8
  %513 = load float*, float** %13, align 8
  %514 = load float*, float** %13, align 8
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* %14, align 4
  %519 = call i32 @FFALIGN(i32 %518, i32 4)
  %520 = call i32 %512(float* %513, float* %514, i32 %517, i32 %519)
  %521 = call i32 (...) @emms_c()
  ret i32 0
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @av_rdft_calc(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
