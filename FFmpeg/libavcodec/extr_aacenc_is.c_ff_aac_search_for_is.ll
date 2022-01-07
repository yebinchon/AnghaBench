; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_is.c_ff_aac_search_for_is.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_is.c_ff_aac_search_for_is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float }
%struct.TYPE_16__ = type { float }
%struct.TYPE_15__ = type { i32*, i32*, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64*, float*, float*, i32*, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { float, i32*, i32, i32* }
%struct.AACISError = type { i64, float, i64, i64 }

@INT_STEREO_LOW_LIMIT = common dso_local global float 0.000000e+00, align 4
@NOISE_BT = common dso_local global i64 0, align 8
@INTENSITY_BT = common dso_local global i8* null, align 8
@INTENSITY_BT2 = common dso_local global i8* null, align 8
@RESERVED_BT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_search_for_is(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca [128 x i32], align 16
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.AACISError, align 8
  %25 = alloca %struct.AACISError, align 8
  %26 = alloca %struct.AACISError*, align 8
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca %struct.AACISError, align 8
  %30 = alloca %struct.AACISError, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 0
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %7, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 1
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = fdiv float 1.024000e+03, %45
  %47 = fdiv float %41, %46
  %48 = fdiv float %47, 2.000000e+00
  store float %48, float* %18, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %3
  br label %509

54:                                               ; preds = %3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds [128 x i32], [128 x i32]* %19, i64 0, i64 0
  %57 = call i32 @ff_init_nextband_map(%struct.TYPE_14__* %55, i32* %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %490, %54
  %59 = load i32, i32* %11, align 4
  %60 = sitofp i32 %59 to float
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 8
  %65 = fcmp olt float %60, %64
  br i1 %65, label %66, label %501

66:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %486, %66
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %489

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = sitofp i32 %75 to float
  %77 = load float, float* %18, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* @INT_STEREO_LOW_LIMIT, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 4
  %83 = fdiv float %82, 1.700000e+02
  %84 = fmul float %79, %83
  %85 = fcmp ogt float %78, %84
  br i1 %85, label %86, label %429

86:                                               ; preds = %74
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %93, 16
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %92, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NOISE_BT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %429

102:                                              ; preds = %86
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 %109, 16
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %429, label %117

117:                                              ; preds = %102
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 16
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %123, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NOISE_BT, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %429

133:                                              ; preds = %117
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 %140, 16
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %429, label %148

148:                                              ; preds = %133
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %150 = getelementptr inbounds [128 x i32], [128 x i32]* %19, i64 0, i64 0
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %152, 16
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i64 @ff_sfdelta_can_remove_band(%struct.TYPE_14__* %149, i32* %150, i32 %151, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %429

158:                                              ; preds = %148
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %243, %158
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %160, %168
  br i1 %169, label %170, label %246

170:                                              ; preds = %159
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %239, %170
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %172, %180
  br i1 %181, label %182, label %242

182:                                              ; preds = %171
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load float*, float** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %187, %188
  %190 = mul nsw i32 %189, 128
  %191 = add nsw i32 %186, %190
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %185, i64 %194
  %196 = load float, float* %195, align 4
  store float %196, float* %27, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load float*, float** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %201, %202
  %204 = mul nsw i32 %203, 128
  %205 = add nsw i32 %200, %204
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %199, i64 %208
  %210 = load float, float* %209, align 4
  store float %210, float* %28, align 4
  %211 = load float, float* %27, align 4
  %212 = load float, float* %27, align 4
  %213 = fmul float %211, %212
  %214 = load float, float* %20, align 4
  %215 = fadd float %214, %213
  store float %215, float* %20, align 4
  %216 = load float, float* %28, align 4
  %217 = load float, float* %28, align 4
  %218 = fmul float %216, %217
  %219 = load float, float* %21, align 4
  %220 = fadd float %219, %218
  store float %220, float* %21, align 4
  %221 = load float, float* %27, align 4
  %222 = load float, float* %28, align 4
  %223 = fadd float %221, %222
  %224 = load float, float* %27, align 4
  %225 = load float, float* %28, align 4
  %226 = fadd float %224, %225
  %227 = fmul float %223, %226
  %228 = load float, float* %22, align 4
  %229 = fadd float %228, %227
  store float %229, float* %22, align 4
  %230 = load float, float* %27, align 4
  %231 = load float, float* %28, align 4
  %232 = fsub float %230, %231
  %233 = load float, float* %27, align 4
  %234 = load float, float* %28, align 4
  %235 = fsub float %233, %234
  %236 = fmul float %232, %235
  %237 = load float, float* %23, align 4
  %238 = fadd float %237, %236
  store float %238, float* %23, align 4
  br label %239

239:                                              ; preds = %182
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %171

242:                                              ; preds = %171
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %159

246:                                              ; preds = %159
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %13, align 4
  %252 = load float, float* %20, align 4
  %253 = load float, float* %21, align 4
  %254 = load float, float* %23, align 4
  call void @ff_aac_is_encoding_err(%struct.AACISError* sret %29, %struct.TYPE_17__* %247, %struct.TYPE_15__* %248, i32 %249, i32 %250, i32 %251, float %252, float %253, float %254, i32 0, i32 -1)
  %255 = bitcast %struct.AACISError* %24 to i8*
  %256 = bitcast %struct.AACISError* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 32, i1 false)
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load float, float* %20, align 4
  %263 = load float, float* %21, align 4
  %264 = load float, float* %22, align 4
  call void @ff_aac_is_encoding_err(%struct.AACISError* sret %30, %struct.TYPE_17__* %257, %struct.TYPE_15__* %258, i32 %259, i32 %260, i32 %261, float %262, float %263, float %264, i32 0, i32 1)
  %265 = bitcast %struct.AACISError* %25 to i8*
  %266 = bitcast %struct.AACISError* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 32, i1 false)
  %267 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %24, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %246
  %271 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %24, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %25, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp slt i64 %272, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  br label %278

277:                                              ; preds = %270, %246
  br label %278

278:                                              ; preds = %277, %276
  %279 = phi %struct.AACISError* [ %24, %276 ], [ %25, %277 ]
  store %struct.AACISError* %279, %struct.AACISError** %26, align 8
  %280 = load %struct.AACISError*, %struct.AACISError** %26, align 8
  %281 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %428

284:                                              ; preds = %278
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = mul nsw i32 %288, 16
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %287, i64 %292
  store i32 1, i32* %293, align 4
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %11, align 4
  %298 = mul nsw i32 %297, 16
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  store i32 0, i32* %302, align 4
  %303 = load float, float* %20, align 4
  %304 = load %struct.AACISError*, %struct.AACISError** %26, align 8
  %305 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %304, i32 0, i32 1
  %306 = load float, float* %305, align 8
  %307 = fdiv float %303, %306
  %308 = call float @sqrt(float %307)
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i64 0
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load float*, float** %313, align 8
  %315 = load i32, i32* %11, align 4
  %316 = mul nsw i32 %315, 16
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %316, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %314, i64 %319
  store float %308, float* %320, align 4
  %321 = load float, float* %20, align 4
  %322 = load float, float* %21, align 4
  %323 = fdiv float %321, %322
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i64 1
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = load float*, float** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = mul nsw i32 %330, 16
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %329, i64 %334
  store float %323, float* %335, align 4
  %336 = load %struct.AACISError*, %struct.AACISError** %26, align 8
  %337 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %284
  %341 = load i8*, i8** @INTENSITY_BT, align 8
  br label %344

342:                                              ; preds = %284
  %343 = load i8*, i8** @INTENSITY_BT2, align 8
  br label %344

344:                                              ; preds = %342, %340
  %345 = phi i8* [ %341, %340 ], [ %343, %342 ]
  %346 = ptrtoint i8* %345 to i64
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i64 1
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i64*, i64** %351, align 8
  %353 = load i32, i32* %11, align 4
  %354 = mul nsw i32 %353, 16
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %352, i64 %357
  store i64 %346, i64* %358, align 8
  %359 = load i32, i32* %17, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %411

361:                                              ; preds = %344
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i64 1
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %11, align 4
  %371 = mul nsw i32 %370, 16
  %372 = load i32, i32* %13, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %369, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %363, %376
  br i1 %377, label %378, label %411

378:                                              ; preds = %361
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %11, align 4
  %383 = mul nsw i32 %382, 16
  %384 = load i32, i32* %13, align 4
  %385 = add nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %381, i64 %386
  store i32 1, i32* %387, align 4
  %388 = load %struct.AACISError*, %struct.AACISError** %26, align 8
  %389 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = icmp sgt i64 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %378
  %393 = load i8*, i8** @INTENSITY_BT2, align 8
  br label %396

394:                                              ; preds = %378
  %395 = load i8*, i8** @INTENSITY_BT, align 8
  br label %396

396:                                              ; preds = %394, %392
  %397 = phi i8* [ %393, %392 ], [ %395, %394 ]
  %398 = ptrtoint i8* %397 to i64
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 3
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i64 1
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 0
  %404 = load i64*, i64** %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = mul nsw i32 %405, 16
  %407 = load i32, i32* %13, align 4
  %408 = add nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64, i64* %404, i64 %409
  store i64 %398, i64* %410, align 8
  br label %411

411:                                              ; preds = %396, %361, %344
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 3
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i64 1
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = load i32, i32* %11, align 4
  %419 = mul nsw i32 %418, 16
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %417, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %16, align 4
  %426 = load i32, i32* %10, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %10, align 4
  br label %428

428:                                              ; preds = %411, %278
  br label %429

429:                                              ; preds = %428, %148, %133, %117, %102, %86, %74
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 5
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %11, align 4
  %434 = mul nsw i32 %433, 16
  %435 = load i32, i32* %13, align 4
  %436 = add nsw i32 %434, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %432, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %465, label %441

441:                                              ; preds = %429
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 0
  %444 = load i64*, i64** %443, align 8
  %445 = load i32, i32* %11, align 4
  %446 = mul nsw i32 %445, 16
  %447 = load i32, i32* %13, align 4
  %448 = add nsw i32 %446, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i64, i64* %444, i64 %449
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @RESERVED_BT, align 8
  %453 = icmp slt i64 %451, %452
  br i1 %453, label %454, label %465

454:                                              ; preds = %441
  %455 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %455, i32 0, i32 3
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %11, align 4
  %459 = mul nsw i32 %458, 16
  %460 = load i32, i32* %13, align 4
  %461 = add nsw i32 %459, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %457, i64 %462
  %464 = load i32, i32* %463, align 4
  store i32 %464, i32* %15, align 4
  br label %465

465:                                              ; preds = %454, %441, %429
  %466 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 0
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %11, align 4
  %470 = mul nsw i32 %469, 16
  %471 = load i32, i32* %13, align 4
  %472 = add nsw i32 %470, %471
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %468, i64 %473
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %17, align 4
  %476 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %476, i32 0, i32 4
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 3
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %13, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* %9, align 4
  %485 = add nsw i32 %484, %483
  store i32 %485, i32* %9, align 4
  br label %486

486:                                              ; preds = %465
  %487 = load i32, i32* %13, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %13, align 4
  br label %67

489:                                              ; preds = %67
  br label %490

490:                                              ; preds = %489
  %491 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 4
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %11, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %499, %498
  store i32 %500, i32* %11, align 4
  br label %58

501:                                              ; preds = %58
  %502 = load i32, i32* %10, align 4
  %503 = icmp ne i32 %502, 0
  %504 = xor i1 %503, true
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 2
  store i32 %506, i32* %508, align 8
  br label %509

509:                                              ; preds = %501, %53
  ret void
}

declare dso_local i32 @ff_init_nextband_map(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ff_sfdelta_can_remove_band(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local void @ff_aac_is_encoding_err(%struct.AACISError* sret, %struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32, i32, float, float, float, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
