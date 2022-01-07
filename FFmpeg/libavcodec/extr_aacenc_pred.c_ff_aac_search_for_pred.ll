; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_pred.c_ff_aac_search_for_pred.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_pred.c_ff_aac_search_for_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, float*, i64, i32, i32 (float*, float*, i32)*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_14__, i32*, i64*, i32 }
%struct.TYPE_14__ = type { i64*, i32, i32, i32*, i32*, i32*, i32 }

@ff_aac_pred_sfb_max = common dso_local global i32* null, align 8
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@PRED_SFB_START = common dso_local global i32 0, align 4
@RESERVED_BT = common dso_local global i32 0, align 4
@MAX_PREDICTORS = common dso_local global i32 0, align 4
@INTENSITY_BT2 = common dso_local global i32 0, align 4
@NOISE_BT = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_search_for_pred(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** @ff_aac_pred_sfb_max, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FFMIN(i32 %31, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  store float* %42, float** %11, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 128
  store float* %46, float** %12, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 256
  store float* %50, float** %13, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 384
  store float* %54, float** %14, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load float*, float** %56, align 8
  %58 = getelementptr inbounds float, float* %57, i64 512
  store float* %58, float** %15, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  br label %594

71:                                               ; preds = %2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @reset_all_predictors(i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @memcpy(i32* %87, i32* %90, i32 4096)
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %104, %77
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 31
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %96, i32* %103, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %92

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = call i32 @update_pred_resets(%struct.TYPE_15__* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @memcpy(i32* %113, i32* %116, i32 8)
  %118 = load i32, i32* @PRED_SFB_START, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %557, %108
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %560

123:                                              ; preds = %119
  store float 0.000000e+00, float* %21, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 6
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %141

133:                                              ; preds = %123
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  br label %141

141:                                              ; preds = %133, %132
  %142 = phi i32 [ 0, %132 ], [ %140, %133 ]
  store i32 %142, i32* %22, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 0, i32 1
  store i32 %152, i32* %23, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 6
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %141
  br label %164

162:                                              ; preds = %141
  %163 = load i32, i32* @RESERVED_BT, align 4
  br label %164

164:                                              ; preds = %162, %161
  %165 = phi i32 [ 0, %161 ], [ %163, %162 ]
  store i32 %165, i32* %24, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %25, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %25, align 4
  %184 = sub nsw i32 %182, %183
  store i32 %184, i32* %26, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 %196
  store %struct.TYPE_16__* %197, %struct.TYPE_16__** %27, align 8
  %198 = load i32, i32* %25, align 4
  %199 = load i32, i32* %26, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* @MAX_PREDICTORS, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %228, label %203

203:                                              ; preds = %164
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @INTENSITY_BT2, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %228, label %218

218:                                              ; preds = %208, %203
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @NOISE_BT, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %218, %208, %164
  br label %557

229:                                              ; preds = %218
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 4
  %232 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %231, align 8
  %233 = load float*, float** %11, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %25, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = bitcast i32* %239 to float*
  %241 = load i32, i32* %26, align 4
  %242 = call i32 %232(float* %233, float* %240, i32 %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %25, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = bitcast i32* %249 to float*
  %251 = load float*, float** %11, align 8
  %252 = load i32, i32* %26, align 4
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %22, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = sdiv i32 %263, %266
  %268 = load i32, i32* @INFINITY, align 4
  %269 = call float @quantize_and_encode_band_cost(%struct.TYPE_17__* %243, i32* null, float* %250, float* null, float* %251, i32 %252, i32 %259, i32 %260, i32 %267, i32 %268, i32* %16, i32* null, i32 0)
  store float %269, float* %19, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %273

273:                                              ; preds = %302, %229
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* %26, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %305

277:                                              ; preds = %273
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %25, align 4
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %289, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %286, %295
  %297 = sitofp i32 %296 to float
  %298 = load float*, float** %13, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  store float %297, float* %301, align 4
  br label %302

302:                                              ; preds = %277
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %273

305:                                              ; preds = %273
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 4
  %308 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %307, align 8
  %309 = load float*, float** %14, align 8
  %310 = load float*, float** %13, align 8
  %311 = load i32, i32* %26, align 4
  %312 = call i32 %308(float* %309, float* %310, i32 %311)
  %313 = load i32, i32* %22, align 4
  %314 = load i32, i32* @RESERVED_BT, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %331

316:                                              ; preds = %305
  %317 = load i32, i32* %26, align 4
  %318 = load float*, float** %14, align 8
  %319 = call i32 @find_max_val(i32 1, i32 %317, float* %318)
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @find_min_book(i32 %319, i32 %326)
  %328 = load i32, i32* %23, align 4
  %329 = load i32, i32* %24, align 4
  %330 = call i32 @av_clip(i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %18, align 4
  br label %333

331:                                              ; preds = %305
  %332 = load i32, i32* %22, align 4
  store i32 %332, i32* %18, align 4
  br label %333

333:                                              ; preds = %331, %316
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %335 = load float*, float** %13, align 8
  %336 = load float*, float** %15, align 8
  %337 = load float*, float** %14, align 8
  %338 = load i32, i32* %26, align 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 5
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = sdiv i32 %349, %352
  %354 = load i32, i32* @INFINITY, align 4
  %355 = call float @quantize_and_encode_band_cost(%struct.TYPE_17__* %334, i32* null, float* %335, float* %336, float* %337, i32 %338, i32 %345, i32 %346, i32 %353, i32 %354, i32* %17, i32* null, i32 0)
  store i32 0, i32* %6, align 4
  br label %356

356:                                              ; preds = %399, %333
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* %26, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %402

360:                                              ; preds = %356
  %361 = load float*, float** %15, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = fcmp une float %365, 0.000000e+00
  br i1 %366, label %367, label %384

367:                                              ; preds = %360
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %25, align 4
  %372 = load i32, i32* %6, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %370, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sitofp i32 %376 to float
  %378 = load float*, float** %15, align 8
  %379 = load i32, i32* %6, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %378, i64 %380
  %382 = load float, float* %381, align 4
  %383 = fsub float %377, %382
  br label %385

384:                                              ; preds = %360
  br label %385

385:                                              ; preds = %384, %367
  %386 = phi float [ %383, %367 ], [ 0.000000e+00, %384 ]
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %25, align 4
  %391 = load i32, i32* %6, align 4
  %392 = add nsw i32 %390, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %389, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = sitofp i32 %395 to float
  %397 = fadd float %396, %386
  %398 = fptosi float %397 to i32
  store i32 %398, i32* %394, align 4
  br label %399

399:                                              ; preds = %385
  %400 = load i32, i32* %6, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %6, align 4
  br label %356

402:                                              ; preds = %356
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %403, i32 0, i32 4
  %405 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %404, align 8
  %406 = load float*, float** %12, align 8
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %25, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = bitcast i32* %412 to float*
  %414 = load i32, i32* %26, align 4
  %415 = call i32 %405(float* %406, float* %413, i32 %414)
  %416 = load i32, i32* %22, align 4
  %417 = load i32, i32* @RESERVED_BT, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %434

419:                                              ; preds = %402
  %420 = load i32, i32* %26, align 4
  %421 = load float*, float** %12, align 8
  %422 = call i32 @find_max_val(i32 1, i32 %420, float* %421)
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 5
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %5, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @find_min_book(i32 %422, i32 %429)
  %431 = load i32, i32* %23, align 4
  %432 = load i32, i32* %24, align 4
  %433 = call i32 @av_clip(i32 %430, i32 %431, i32 %432)
  store i32 %433, i32* %18, align 4
  br label %436

434:                                              ; preds = %402
  %435 = load i32, i32* %22, align 4
  store i32 %435, i32* %18, align 4
  br label %436

436:                                              ; preds = %434, %419
  %437 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %25, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = bitcast i32* %443 to float*
  %445 = load float*, float** %12, align 8
  %446 = load i32, i32* %26, align 4
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 5
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %18, align 4
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = sdiv i32 %457, %460
  %462 = load i32, i32* @INFINITY, align 4
  %463 = call float @quantize_and_encode_band_cost(%struct.TYPE_17__* %437, i32* null, float* %444, float* null, float* %445, i32 %446, i32 %453, i32 %454, i32 %461, i32 %462, i32* null, i32* null, i32 0)
  store float %463, float* %20, align 4
  store i32 0, i32* %6, align 4
  br label %464

464:                                              ; preds = %494, %436
  %465 = load i32, i32* %6, align 4
  %466 = load i32, i32* %26, align 4
  %467 = icmp slt i32 %465, %466
  br i1 %467, label %468, label %497

468:                                              ; preds = %464
  %469 = load float*, float** %11, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %469, i64 %471
  %473 = load float, float* %472, align 4
  %474 = load float*, float** %12, align 8
  %475 = load i32, i32* %6, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %474, i64 %476
  %478 = load float, float* %477, align 4
  %479 = fsub float %473, %478
  %480 = load float*, float** %11, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds float, float* %480, i64 %482
  %484 = load float, float* %483, align 4
  %485 = load float*, float** %12, align 8
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float, float* %485, i64 %487
  %489 = load float, float* %488, align 4
  %490 = fsub float %484, %489
  %491 = fmul float %479, %490
  %492 = load float, float* %21, align 4
  %493 = fadd float %492, %491
  store float %493, float* %21, align 4
  br label %494

494:                                              ; preds = %468
  %495 = load i32, i32* %6, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %6, align 4
  br label %464

497:                                              ; preds = %464
  %498 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = sdiv i32 %500, %503
  %505 = sitofp i32 %504 to float
  %506 = load float, float* %21, align 4
  %507 = fmul float %506, %505
  store float %507, float* %21, align 4
  %508 = load float, float* %21, align 4
  %509 = load float, float* %20, align 4
  %510 = fadd float %509, %508
  store float %510, float* %20, align 4
  %511 = load float, float* %20, align 4
  %512 = load float, float* %19, align 4
  %513 = fcmp ole float %511, %512
  br i1 %513, label %514, label %545

514:                                              ; preds = %497
  %515 = load i32, i32* %18, align 4
  %516 = load i32, i32* %22, align 4
  %517 = icmp sle i32 %515, %516
  br i1 %517, label %518, label %545

518:                                              ; preds = %514
  %519 = load i32, i32* %17, align 4
  %520 = load i32, i32* %9, align 4
  %521 = add nsw i32 %520, %519
  store i32 %521, i32* %9, align 4
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i32 0, i32 4
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 5
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* %5, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  store i32 1, i32* %528, align 4
  %529 = load i32, i32* %22, align 4
  %530 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 2
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %5, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %529, i32* %535, align 4
  %536 = load i32, i32* %18, align 4
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 3
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %5, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  store i32 %536, i32* %542, align 4
  %543 = load i32, i32* %7, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %7, align 4
  br label %556

545:                                              ; preds = %514, %497
  %546 = load i32, i32* %16, align 4
  %547 = load i32, i32* %9, align 4
  %548 = add nsw i32 %547, %546
  store i32 %548, i32* %9, align 4
  %549 = load i32, i32* %18, align 4
  %550 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %550, i32 0, i32 2
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  store i32 %549, i32* %555, align 4
  br label %556

556:                                              ; preds = %545, %518
  br label %557

557:                                              ; preds = %556, %228
  %558 = load i32, i32* %5, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %5, align 4
  br label %119

560:                                              ; preds = %119
  %561 = load i32, i32* %7, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %585

563:                                              ; preds = %560
  %564 = load i32, i32* %8, align 4
  %565 = load i32, i32* %9, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %585

567:                                              ; preds = %563
  store i32 0, i32* %7, align 4
  %568 = load i32, i32* @PRED_SFB_START, align 4
  store i32 %568, i32* %5, align 4
  br label %569

569:                                              ; preds = %577, %567
  %570 = load i32, i32* %5, align 4
  %571 = load i32, i32* %10, align 4
  %572 = icmp slt i32 %570, %571
  br i1 %572, label %573, label %580

573:                                              ; preds = %569
  %574 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %575 = load i32, i32* %5, align 4
  %576 = call i32 @RESTORE_PRED(%struct.TYPE_15__* %574, i32 %575)
  br label %577

577:                                              ; preds = %573
  %578 = load i32, i32* %5, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %5, align 4
  br label %569

580:                                              ; preds = %569
  %581 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %581, i32 0, i32 4
  %583 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i32 0, i32 5
  %584 = call i32 @memset(i32** %583, i32 0, i32 8)
  br label %585

585:                                              ; preds = %580, %563, %560
  %586 = load i32, i32* %7, align 4
  %587 = icmp ne i32 %586, 0
  %588 = xor i1 %587, true
  %589 = xor i1 %588, true
  %590 = zext i1 %589 to i32
  %591 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %592 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %591, i32 0, i32 4
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 1
  store i32 %590, i32* %593, align 8
  br label %594

594:                                              ; preds = %585, %67
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @reset_all_predictors(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @update_pred_resets(%struct.TYPE_15__*) #1

declare dso_local float @quantize_and_encode_band_cost(%struct.TYPE_17__*, i32*, float*, float*, float*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @find_min_book(i32, i32) #1

declare dso_local i32 @find_max_val(i32, i32, float*) #1

declare dso_local i32 @RESTORE_PRED(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
