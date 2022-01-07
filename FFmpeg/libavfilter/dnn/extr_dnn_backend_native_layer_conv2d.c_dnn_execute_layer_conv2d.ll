; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_conv2d.c_dnn_execute_layer_conv2d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_conv2d.c_dnn_execute_layer_conv2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, float*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, float*, float*, i32, i64 }

@VALID = common dso_local global i64 0, align 8
@SAME_CLAMP_TO_EDGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnn_execute_layer_conv2d(%struct.TYPE_5__* %0, i64* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load float*, float** %69, align 8
  store float* %70, float** %16, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast i8* %71 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %17, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %19, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %20, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %20, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %21, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VALID, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sdiv i32 %103, 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  br label %110

109:                                              ; preds = %4
  br label %110

110:                                              ; preds = %109, %99
  %111 = phi i32 [ %108, %99 ], [ 0, %109 ]
  store i32 %111, i32* %22, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %113
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %23, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %22, align 4
  %122 = mul nsw i32 %121, 2
  %123 = sub nsw i32 %120, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %22, align 4
  %130 = mul nsw i32 %129, 2
  %131 = sub nsw i32 %128, %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %131, i32* %135, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %151 = call i32 @calculate_operand_data_length(%struct.TYPE_5__* %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load float*, float** %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call float* @av_realloc(float* %156, i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store float* %160, float** %162, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load float*, float** %164, align 8
  %166 = icmp ne float* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %469

168:                                              ; preds = %110
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load float*, float** %170, align 8
  store float* %171, float** %10, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %172, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @av_assert0(i32 %177)
  %179 = load i32, i32* %22, align 4
  store i32 %179, i32* %24, align 4
  br label %180

180:                                              ; preds = %465, %168
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %22, align 4
  %184 = sub nsw i32 %182, %183
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %468

186:                                              ; preds = %180
  %187 = load i32, i32* %22, align 4
  store i32 %187, i32* %25, align 4
  br label %188

188:                                              ; preds = %461, %186
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %22, align 4
  %192 = sub nsw i32 %190, %191
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %464

194:                                              ; preds = %188
  store i32 0, i32* %26, align 4
  br label %195

195:                                              ; preds = %451, %194
  %196 = load i32, i32* %26, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %454

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 8
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %201
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 5
  %209 = load float*, float** %208, align 8
  %210 = load i32, i32* %26, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = load float*, float** %10, align 8
  %215 = load i32, i32* %26, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  store float %213, float* %217, align 4
  br label %223

218:                                              ; preds = %201
  %219 = load float*, float** %10, align 8
  %220 = load i32, i32* %26, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  store float 0.000000e+00, float* %222, align 4
  br label %223

223:                                              ; preds = %218, %206
  store i32 0, i32* %27, align 4
  br label %224

224:                                              ; preds = %379, %223
  %225 = load i32, i32* %27, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %382

230:                                              ; preds = %224
  store i32 0, i32* %28, align 4
  br label %231

231:                                              ; preds = %375, %230
  %232 = load i32, i32* %28, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %378

237:                                              ; preds = %231
  store i32 0, i32* %29, align 4
  br label %238

238:                                              ; preds = %371, %237
  %239 = load i32, i32* %29, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %374

244:                                              ; preds = %238
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @SAME_CLAMP_TO_EDGE, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %288

250:                                              ; preds = %244
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* %28, align 4
  %253 = load i32, i32* %18, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %254, %257
  %259 = add nsw i32 %251, %258
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @CLAMP_TO_EDGE(i32 %259, i32 %260)
  store i32 %261, i32* %31, align 4
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* %29, align 4
  %264 = load i32, i32* %18, align 4
  %265 = sub nsw i32 %263, %264
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = add nsw i32 %262, %269
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @CLAMP_TO_EDGE(i32 %270, i32 %271)
  store i32 %272, i32* %32, align 4
  %273 = load float*, float** %16, align 8
  %274 = load i32, i32* %31, align 4
  %275 = load i32, i32* %19, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i32, i32* %32, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 %277, %280
  %282 = add nsw i32 %276, %281
  %283 = load i32, i32* %27, align 4
  %284 = add nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %273, i64 %285
  %287 = load float, float* %286, align 4
  store float %287, float* %30, align 4
  br label %341

288:                                              ; preds = %244
  %289 = load i32, i32* %24, align 4
  %290 = load i32, i32* %28, align 4
  %291 = load i32, i32* %18, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = mul nsw i32 %292, %295
  %297 = add nsw i32 %289, %296
  store i32 %297, i32* %33, align 4
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %29, align 4
  %300 = load i32, i32* %18, align 4
  %301 = sub nsw i32 %299, %300
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = mul nsw i32 %301, %304
  %306 = add nsw i32 %298, %305
  store i32 %306, i32* %34, align 4
  %307 = load i32, i32* %34, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %320, label %309

309:                                              ; preds = %288
  %310 = load i32, i32* %34, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp sge i32 %310, %311
  br i1 %312, label %320, label %313

313:                                              ; preds = %309
  %314 = load i32, i32* %33, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %33, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp sge i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %316, %313, %309, %288
  br label %338

321:                                              ; preds = %316
  %322 = load float*, float** %16, align 8
  %323 = load i32, i32* %33, align 4
  %324 = load i32, i32* %19, align 4
  %325 = mul nsw i32 %323, %324
  %326 = load i32, i32* %34, align 4
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %326, %329
  %331 = add nsw i32 %325, %330
  %332 = load i32, i32* %27, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %322, i64 %334
  %336 = load float, float* %335, align 4
  %337 = fpext float %336 to double
  br label %338

338:                                              ; preds = %321, %320
  %339 = phi double [ 0.000000e+00, %320 ], [ %337, %321 ]
  %340 = fptrunc double %339 to float
  store float %340, float* %30, align 4
  br label %341

341:                                              ; preds = %338, %250
  %342 = load float, float* %30, align 4
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 6
  %345 = load float*, float** %344, align 8
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %21, align 4
  %348 = mul nsw i32 %346, %347
  %349 = load i32, i32* %28, align 4
  %350 = load i32, i32* %20, align 4
  %351 = mul nsw i32 %349, %350
  %352 = add nsw i32 %348, %351
  %353 = load i32, i32* %29, align 4
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 %353, %356
  %358 = add nsw i32 %352, %357
  %359 = load i32, i32* %27, align 4
  %360 = add nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %345, i64 %361
  %363 = load float, float* %362, align 4
  %364 = fmul float %342, %363
  %365 = load float*, float** %10, align 8
  %366 = load i32, i32* %26, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %365, i64 %367
  %369 = load float, float* %368, align 4
  %370 = fadd float %369, %364
  store float %370, float* %368, align 4
  br label %371

371:                                              ; preds = %341
  %372 = load i32, i32* %29, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %29, align 4
  br label %238

374:                                              ; preds = %238
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %28, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %28, align 4
  br label %231

378:                                              ; preds = %231
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %27, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %27, align 4
  br label %224

382:                                              ; preds = %224
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 8
  switch i32 %385, label %450 [
    i32 130, label %386
    i32 128, label %397
    i32 129, label %413
    i32 131, label %428
    i32 132, label %429
  ]

386:                                              ; preds = %382
  %387 = load float*, float** %10, align 8
  %388 = load i32, i32* %26, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %387, i64 %389
  %391 = load float, float* %390, align 4
  %392 = call float @FFMAX(float %391, double 0.000000e+00)
  %393 = load float*, float** %10, align 8
  %394 = load i32, i32* %26, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %393, i64 %395
  store float %392, float* %396, align 4
  br label %450

397:                                              ; preds = %382
  %398 = load float*, float** %10, align 8
  %399 = load i32, i32* %26, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, float* %398, i64 %400
  %402 = load float, float* %401, align 4
  %403 = fmul float -2.000000e+00, %402
  %404 = call i32 @exp(float %403)
  %405 = sitofp i32 %404 to float
  %406 = fadd float 1.000000e+00, %405
  %407 = fdiv float 2.000000e+00, %406
  %408 = fsub float %407, 1.000000e+00
  %409 = load float*, float** %10, align 8
  %410 = load i32, i32* %26, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float* %409, i64 %411
  store float %408, float* %412, align 4
  br label %450

413:                                              ; preds = %382
  %414 = load float*, float** %10, align 8
  %415 = load i32, i32* %26, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %414, i64 %416
  %418 = load float, float* %417, align 4
  %419 = fneg float %418
  %420 = call i32 @exp(float %419)
  %421 = sitofp i32 %420 to float
  %422 = fadd float 1.000000e+00, %421
  %423 = fdiv float 1.000000e+00, %422
  %424 = load float*, float** %10, align 8
  %425 = load i32, i32* %26, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %424, i64 %426
  store float %423, float* %427, align 4
  br label %450

428:                                              ; preds = %382
  br label %450

429:                                              ; preds = %382
  %430 = load float*, float** %10, align 8
  %431 = load i32, i32* %26, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %430, i64 %432
  %434 = load float, float* %433, align 4
  %435 = call float @FFMAX(float %434, double 0.000000e+00)
  %436 = fpext float %435 to double
  %437 = load float*, float** %10, align 8
  %438 = load i32, i32* %26, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %437, i64 %439
  %441 = load float, float* %440, align 4
  %442 = call double @FFMIN(float %441, double 0.000000e+00)
  %443 = fmul double 2.000000e-01, %442
  %444 = fadd double %436, %443
  %445 = fptrunc double %444 to float
  %446 = load float*, float** %10, align 8
  %447 = load i32, i32* %26, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, float* %446, i64 %448
  store float %445, float* %449, align 4
  br label %450

450:                                              ; preds = %429, %382, %428, %413, %397, %386
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %26, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %26, align 4
  br label %195

454:                                              ; preds = %195
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 4
  %458 = load float*, float** %10, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds float, float* %458, i64 %459
  store float* %460, float** %10, align 8
  br label %461

461:                                              ; preds = %454
  %462 = load i32, i32* %25, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %25, align 4
  br label %188

464:                                              ; preds = %188
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %24, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %24, align 4
  br label %180

468:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %469

469:                                              ; preds = %468, %167
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local i32 @calculate_operand_data_length(%struct.TYPE_5__*) #1

declare dso_local float* @av_realloc(float*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @CLAMP_TO_EDGE(i32, i32) #1

declare dso_local float @FFMAX(float, double) #1

declare dso_local i32 @exp(float) #1

declare dso_local double @FFMIN(float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
