; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_is.c_ff_aac_is_encoding_err.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_is.c_ff_aac_is_encoding_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AACISError = type { i32, i32, float, float, float, float, i32 }
%struct.TYPE_17__ = type { float*, i32, float, i32 (float*, float*, i32)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { float }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { float*, float*, i32*, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32* }

@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_is_encoding_err(%struct.AACISError* noalias sret %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca %struct.TYPE_15__*, align 8
  %35 = alloca %struct.TYPE_15__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 %10, i32* %21, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 0
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %24, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 1
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %25, align 8
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %11
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  br label %60

56:                                               ; preds = %11
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load float*, float** %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi float* [ %55, %52 ], [ %59, %56 ]
  store float* %61, float** %26, align 8
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load float*, float** %70, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi float* [ %67, %64 ], [ %71, %68 ]
  store float* %73, float** %27, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 0
  store float* %77, float** %28, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 256
  store float* %81, float** %29, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 512
  store float* %85, float** %30, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 768
  store float* %89, float** %31, align 8
  store float 0.000000e+00, float* %32, align 4
  store float 0.000000e+00, float* %33, align 4
  %90 = bitcast %struct.AACISError* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %90, i8 0, i64 28, i1 false)
  %91 = load float, float* %19, align 4
  %92 = fcmp ole float %91, 0.000000e+00
  br i1 %92, label %96, label %93

93:                                               ; preds = %72
  %94 = load float, float* %17, align 4
  %95 = fcmp ole float %94, 0.000000e+00
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %72
  %97 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %527

98:                                               ; preds = %93
  store i32 0, i32* %23, align 4
  br label %99

99:                                               ; preds = %506, %98
  %100 = load i32, i32* %23, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %100, %108
  br i1 %109, label %110, label %509

110:                                              ; preds = %99
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 0
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %23, align 4
  %125 = add nsw i32 %123, %124
  %126 = mul nsw i32 %125, 16
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %129
  store %struct.TYPE_15__* %130, %struct.TYPE_15__** %34, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %143, %144
  %146 = mul nsw i32 %145, 16
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %149
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %35, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = mul nsw i32 %154, 16
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 4
  %162 = call i32 @FFMAX(i32 1, i32 %161)
  store i32 %162, i32* %37, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load float, float* %18, align 4
  %165 = load float, float* %17, align 4
  %166 = fdiv float %164, %165
  %167 = call i32 @pos_pow34(float %166)
  %168 = mul nsw i32 %163, %167
  %169 = sitofp i32 %168 to float
  store float %169, float* %38, align 4
  store float 0.000000e+00, float* %40, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load float, float* %171, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load float, float* %174, align 4
  %176 = call float @FFMIN(float %172, float %175)
  store float %176, float* %41, align 4
  store i32 0, i32* %22, align 4
  br label %177

177:                                              ; preds = %226, %110
  %178 = load i32, i32* %22, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %178, %186
  br i1 %187, label %188, label %229

188:                                              ; preds = %177
  %189 = load float*, float** %26, align 8
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %23, align 4
  %193 = add nsw i32 %191, %192
  %194 = mul nsw i32 %193, 128
  %195 = add nsw i32 %190, %194
  %196 = load i32, i32* %22, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %189, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load i32, i32* %21, align 4
  %202 = sitofp i32 %201 to float
  %203 = load float*, float** %27, align 8
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %23, align 4
  %207 = add nsw i32 %205, %206
  %208 = mul nsw i32 %207, 128
  %209 = add nsw i32 %204, %208
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %203, i64 %212
  %214 = load float, float* %213, align 4
  %215 = fmul float %202, %214
  %216 = fadd float %200, %215
  %217 = load float, float* %17, align 4
  %218 = load float, float* %19, align 4
  %219 = fdiv float %217, %218
  %220 = call float @sqrt(float %219)
  %221 = fmul float %216, %220
  %222 = load float*, float** %30, align 8
  %223 = load i32, i32* %22, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  store float %221, float* %225, align 4
  br label %226

226:                                              ; preds = %188
  %227 = load i32, i32* %22, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %22, align 4
  br label %177

229:                                              ; preds = %177
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 3
  %232 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %231, align 8
  %233 = load float*, float** %28, align 8
  %234 = load float*, float** %26, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %23, align 4
  %238 = add nsw i32 %236, %237
  %239 = mul nsw i32 %238, 128
  %240 = add nsw i32 %235, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %234, i64 %241
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 %232(float* %233, float* %242, i32 %250)
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 3
  %254 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %253, align 8
  %255 = load float*, float** %29, align 8
  %256 = load float*, float** %27, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %23, align 4
  %260 = add nsw i32 %258, %259
  %261 = mul nsw i32 %260, 128
  %262 = add nsw i32 %257, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %256, i64 %263
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 %254(float* %255, float* %264, i32 %272)
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 3
  %276 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %275, align 8
  %277 = load float*, float** %31, align 8
  %278 = load float*, float** %30, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 %276(float* %277, float* %278, i32 %286)
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load float*, float** %31, align 8
  %297 = call float @find_max_val(i32 1, i32 %295, float* %296)
  store float %297, float* %39, align 4
  %298 = load float, float* %39, align 4
  %299 = load i32, i32* %37, align 4
  %300 = call i32 @find_min_book(float %298, i32 %299)
  store i32 %300, i32* %36, align 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %302 = load float*, float** %26, align 8
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* %23, align 4
  %306 = add nsw i32 %304, %305
  %307 = mul nsw i32 %306, 128
  %308 = add nsw i32 %303, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %302, i64 %309
  %311 = load float*, float** %28, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %16, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = mul nsw i32 %323, 16
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %322, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %15, align 4
  %334 = mul nsw i32 %333, 16
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %332, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 2
  %342 = load float, float* %341, align 4
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load float, float* %344, align 4
  %346 = fdiv float %342, %345
  %347 = load i32, i32* @INFINITY, align 4
  %348 = call i64 @quantize_band_cost(%struct.TYPE_17__* %301, float* %310, float* %311, i32 %319, i32 %329, i32 %339, float %346, i32 %347, i32* null, i32* null, i32 0)
  %349 = sitofp i64 %348 to float
  %350 = load float, float* %32, align 4
  %351 = fadd float %350, %349
  store float %351, float* %32, align 4
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %353 = load float*, float** %27, align 8
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* %23, align 4
  %357 = add nsw i32 %355, %356
  %358 = mul nsw i32 %357, 128
  %359 = add nsw i32 %354, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %353, i64 %360
  %362 = load float*, float** %29, align 8
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %16, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %15, align 4
  %375 = mul nsw i32 %374, 16
  %376 = load i32, i32* %16, align 4
  %377 = add nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %373, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %15, align 4
  %385 = mul nsw i32 %384, 16
  %386 = load i32, i32* %16, align 4
  %387 = add nsw i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %383, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 2
  %393 = load float, float* %392, align 4
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 0
  %396 = load float, float* %395, align 4
  %397 = fdiv float %393, %396
  %398 = load i32, i32* @INFINITY, align 4
  %399 = call i64 @quantize_band_cost(%struct.TYPE_17__* %352, float* %361, float* %362, i32 %370, i32 %380, i32 %390, float %397, i32 %398, i32* null, i32* null, i32 0)
  %400 = sitofp i64 %399 to float
  %401 = load float, float* %32, align 4
  %402 = fadd float %401, %400
  store float %402, float* %32, align 4
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %404 = load float*, float** %30, align 8
  %405 = load float*, float** %31, align 8
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 4
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %16, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %37, align 4
  %415 = load i32, i32* %36, align 4
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 2
  %418 = load float, float* %417, align 4
  %419 = load float, float* %41, align 4
  %420 = fdiv float %418, %419
  %421 = load i32, i32* @INFINITY, align 4
  %422 = call i64 @quantize_band_cost(%struct.TYPE_17__* %403, float* %404, float* %405, i32 %413, i32 %414, i32 %415, float %420, i32 %421, i32* null, i32* null, i32 0)
  %423 = sitofp i64 %422 to float
  %424 = load float, float* %33, align 4
  %425 = fadd float %424, %423
  store float %425, float* %33, align 4
  store i32 0, i32* %22, align 4
  br label %426

426:                                              ; preds = %492, %229
  %427 = load i32, i32* %22, align 4
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 4
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = icmp slt i32 %427, %435
  br i1 %436, label %437, label %495

437:                                              ; preds = %426
  %438 = load float*, float** %28, align 8
  %439 = load i32, i32* %22, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds float, float* %438, i64 %440
  %442 = load float, float* %441, align 4
  %443 = load float*, float** %31, align 8
  %444 = load i32, i32* %22, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, float* %443, i64 %445
  %447 = load float, float* %446, align 4
  %448 = fsub float %442, %447
  %449 = load float*, float** %28, align 8
  %450 = load i32, i32* %22, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %449, i64 %451
  %453 = load float, float* %452, align 4
  %454 = load float*, float** %31, align 8
  %455 = load i32, i32* %22, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %454, i64 %456
  %458 = load float, float* %457, align 4
  %459 = fsub float %453, %458
  %460 = fmul float %448, %459
  %461 = load float, float* %40, align 4
  %462 = fadd float %461, %460
  store float %462, float* %40, align 4
  %463 = load float*, float** %29, align 8
  %464 = load i32, i32* %22, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds float, float* %463, i64 %465
  %467 = load float, float* %466, align 4
  %468 = load float*, float** %31, align 8
  %469 = load i32, i32* %22, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %468, i64 %470
  %472 = load float, float* %471, align 4
  %473 = load float, float* %38, align 4
  %474 = fmul float %472, %473
  %475 = fsub float %467, %474
  %476 = load float*, float** %29, align 8
  %477 = load i32, i32* %22, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds float, float* %476, i64 %478
  %480 = load float, float* %479, align 4
  %481 = load float*, float** %31, align 8
  %482 = load i32, i32* %22, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %481, i64 %483
  %485 = load float, float* %484, align 4
  %486 = load float, float* %38, align 4
  %487 = fmul float %485, %486
  %488 = fsub float %480, %487
  %489 = fmul float %475, %488
  %490 = load float, float* %40, align 4
  %491 = fadd float %490, %489
  store float %491, float* %40, align 4
  br label %492

492:                                              ; preds = %437
  %493 = load i32, i32* %22, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %22, align 4
  br label %426

495:                                              ; preds = %426
  %496 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %497 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %496, i32 0, i32 2
  %498 = load float, float* %497, align 4
  %499 = load float, float* %41, align 4
  %500 = fdiv float %498, %499
  %501 = load float, float* %40, align 4
  %502 = fmul float %501, %500
  store float %502, float* %40, align 4
  %503 = load float, float* %40, align 4
  %504 = load float, float* %33, align 4
  %505 = fadd float %504, %503
  store float %505, float* %33, align 4
  br label %506

506:                                              ; preds = %495
  %507 = load i32, i32* %23, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %23, align 4
  br label %99

509:                                              ; preds = %99
  %510 = load float, float* %33, align 4
  %511 = load float, float* %32, align 4
  %512 = fcmp ole float %510, %511
  %513 = zext i1 %512 to i32
  %514 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 0
  store i32 %513, i32* %514, align 4
  %515 = load i32, i32* %21, align 4
  %516 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 1
  store i32 %515, i32* %516, align 4
  %517 = load float, float* %33, align 4
  %518 = load float, float* %32, align 4
  %519 = fsub float %517, %518
  %520 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 2
  store float %519, float* %520, align 4
  %521 = load float, float* %32, align 4
  %522 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 3
  store float %521, float* %522, align 4
  %523 = load float, float* %33, align 4
  %524 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 4
  store float %523, float* %524, align 4
  %525 = load float, float* %19, align 4
  %526 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %0, i32 0, i32 5
  store float %525, float* %526, align 4
  br label %527

527:                                              ; preds = %509, %96
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @pos_pow34(float) #2

declare dso_local float @FFMIN(float, float) #2

declare dso_local float @sqrt(float) #2

declare dso_local float @find_max_val(i32, i32, float*) #2

declare dso_local i32 @find_min_book(float, i32) #2

declare dso_local i64 @quantize_band_cost(%struct.TYPE_17__*, float*, float*, i32, i32, i32, float, i32, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
