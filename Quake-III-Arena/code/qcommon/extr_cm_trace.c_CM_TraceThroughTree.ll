; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughTree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, float, i32* }
%struct.TYPE_9__ = type { float*, float, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float }

@cm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughTree(%struct.TYPE_9__* %0, i32 %1, float %2, float %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  %28 = load float, float* %9, align 4
  %29 = fcmp ole float %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %354

31:                                               ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 1), align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 -1, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @CM_TraceThroughLeaf(%struct.TYPE_9__* %35, i32* %40)
  br label %354

42:                                               ; preds = %31
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 0), align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %13, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %14, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %86

54:                                               ; preds = %42
  %55 = load float*, float** %11, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %55, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fsub float %61, %64
  store float %65, float* %15, align 4
  %66 = load float*, float** %12, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load float, float* %74, align 4
  %76 = fsub float %72, %75
  store float %76, float* %16, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %17, align 4
  br label %112

86:                                               ; preds = %42
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load float*, float** %11, align 8
  %91 = call float @DotProduct(i32* %89, float* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fsub float %91, %94
  store float %95, float* %15, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load float*, float** %12, align 8
  %100 = call float @DotProduct(i32* %98, float* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = fsub float %100, %103
  store float %104, float* %16, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %86
  store float 0.000000e+00, float* %17, align 4
  br label %111

110:                                              ; preds = %86
  store float 2.048000e+03, float* %17, align 4
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %54
  %113 = load float, float* %15, align 4
  %114 = load float, float* %17, align 4
  %115 = fadd float %114, 1.000000e+00
  %116 = fcmp oge float %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load float, float* %16, align 4
  %119 = load float, float* %17, align 4
  %120 = fadd float %119, 1.000000e+00
  %121 = fcmp oge float %118, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load float, float* %9, align 4
  %130 = load float, float* %10, align 4
  %131 = load float*, float** %11, align 8
  %132 = load float*, float** %12, align 8
  call void @CM_TraceThroughTree(%struct.TYPE_9__* %123, i32 %128, float %129, float %130, float* %131, float* %132)
  br label %354

133:                                              ; preds = %117, %112
  %134 = load float, float* %15, align 4
  %135 = load float, float* %17, align 4
  %136 = fneg float %135
  %137 = fsub float %136, 1.000000e+00
  %138 = fcmp olt float %134, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %133
  %140 = load float, float* %16, align 4
  %141 = load float, float* %17, align 4
  %142 = fneg float %141
  %143 = fsub float %142, 1.000000e+00
  %144 = fcmp olt float %140, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load float, float* %9, align 4
  %153 = load float, float* %10, align 4
  %154 = load float*, float** %11, align 8
  %155 = load float*, float** %12, align 8
  call void @CM_TraceThroughTree(%struct.TYPE_9__* %146, i32 %151, float %152, float %153, float* %154, float* %155)
  br label %354

156:                                              ; preds = %139, %133
  %157 = load float, float* %15, align 4
  %158 = load float, float* %16, align 4
  %159 = fcmp olt float %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %156
  %161 = load float, float* %15, align 4
  %162 = load float, float* %16, align 4
  %163 = fsub float %161, %162
  %164 = fpext float %163 to double
  %165 = fdiv double 1.000000e+00, %164
  %166 = fptrunc double %165 to float
  store float %166, float* %20, align 4
  store i32 1, i32* %22, align 4
  %167 = load float, float* %15, align 4
  %168 = load float, float* %17, align 4
  %169 = fadd float %167, %168
  %170 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %171 = fadd float %169, %170
  %172 = load float, float* %20, align 4
  %173 = fmul float %171, %172
  store float %173, float* %19, align 4
  %174 = load float, float* %15, align 4
  %175 = load float, float* %17, align 4
  %176 = fsub float %174, %175
  %177 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %178 = fadd float %176, %177
  %179 = load float, float* %20, align 4
  %180 = fmul float %178, %179
  store float %180, float* %18, align 4
  br label %208

181:                                              ; preds = %156
  %182 = load float, float* %15, align 4
  %183 = load float, float* %16, align 4
  %184 = fcmp ogt float %182, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load float, float* %15, align 4
  %187 = load float, float* %16, align 4
  %188 = fsub float %186, %187
  %189 = fpext float %188 to double
  %190 = fdiv double 1.000000e+00, %189
  %191 = fptrunc double %190 to float
  store float %191, float* %20, align 4
  store i32 0, i32* %22, align 4
  %192 = load float, float* %15, align 4
  %193 = load float, float* %17, align 4
  %194 = fsub float %192, %193
  %195 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %196 = fsub float %194, %195
  %197 = load float, float* %20, align 4
  %198 = fmul float %196, %197
  store float %198, float* %19, align 4
  %199 = load float, float* %15, align 4
  %200 = load float, float* %17, align 4
  %201 = fadd float %199, %200
  %202 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %203 = fadd float %201, %202
  %204 = load float, float* %20, align 4
  %205 = fmul float %203, %204
  store float %205, float* %18, align 4
  br label %207

206:                                              ; preds = %181
  store i32 0, i32* %22, align 4
  store float 1.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  br label %207

207:                                              ; preds = %206, %185
  br label %208

208:                                              ; preds = %207, %160
  %209 = load float, float* %18, align 4
  %210 = fcmp olt float %209, 0.000000e+00
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store float 0.000000e+00, float* %18, align 4
  br label %212

212:                                              ; preds = %211, %208
  %213 = load float, float* %18, align 4
  %214 = fcmp ogt float %213, 1.000000e+00
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store float 1.000000e+00, float* %18, align 4
  br label %216

216:                                              ; preds = %215, %212
  %217 = load float, float* %9, align 4
  %218 = load float, float* %10, align 4
  %219 = load float, float* %9, align 4
  %220 = fsub float %218, %219
  %221 = load float, float* %18, align 4
  %222 = fmul float %220, %221
  %223 = fadd float %217, %222
  store float %223, float* %23, align 4
  %224 = load float*, float** %11, align 8
  %225 = getelementptr inbounds float, float* %224, i64 0
  %226 = load float, float* %225, align 4
  %227 = load float, float* %18, align 4
  %228 = load float*, float** %12, align 8
  %229 = getelementptr inbounds float, float* %228, i64 0
  %230 = load float, float* %229, align 4
  %231 = load float*, float** %11, align 8
  %232 = getelementptr inbounds float, float* %231, i64 0
  %233 = load float, float* %232, align 4
  %234 = fsub float %230, %233
  %235 = fmul float %227, %234
  %236 = fadd float %226, %235
  %237 = load float*, float** %21, align 8
  %238 = getelementptr inbounds float, float* %237, i64 0
  store float %236, float* %238, align 4
  %239 = load float*, float** %11, align 8
  %240 = getelementptr inbounds float, float* %239, i64 1
  %241 = load float, float* %240, align 4
  %242 = load float, float* %18, align 4
  %243 = load float*, float** %12, align 8
  %244 = getelementptr inbounds float, float* %243, i64 1
  %245 = load float, float* %244, align 4
  %246 = load float*, float** %11, align 8
  %247 = getelementptr inbounds float, float* %246, i64 1
  %248 = load float, float* %247, align 4
  %249 = fsub float %245, %248
  %250 = fmul float %242, %249
  %251 = fadd float %241, %250
  %252 = load float*, float** %21, align 8
  %253 = getelementptr inbounds float, float* %252, i64 1
  store float %251, float* %253, align 4
  %254 = load float*, float** %11, align 8
  %255 = getelementptr inbounds float, float* %254, i64 2
  %256 = load float, float* %255, align 4
  %257 = load float, float* %18, align 4
  %258 = load float*, float** %12, align 8
  %259 = getelementptr inbounds float, float* %258, i64 2
  %260 = load float, float* %259, align 4
  %261 = load float*, float** %11, align 8
  %262 = getelementptr inbounds float, float* %261, i64 2
  %263 = load float, float* %262, align 4
  %264 = fsub float %260, %263
  %265 = fmul float %257, %264
  %266 = fadd float %256, %265
  %267 = load float*, float** %21, align 8
  %268 = getelementptr inbounds float, float* %267, i64 2
  store float %266, float* %268, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load float, float* %9, align 4
  %278 = load float, float* %23, align 4
  %279 = load float*, float** %11, align 8
  %280 = load float*, float** %21, align 8
  call void @CM_TraceThroughTree(%struct.TYPE_9__* %269, i32 %276, float %277, float %278, float* %279, float* %280)
  %281 = load float, float* %19, align 4
  %282 = fcmp olt float %281, 0.000000e+00
  br i1 %282, label %283, label %284

283:                                              ; preds = %216
  store float 0.000000e+00, float* %19, align 4
  br label %284

284:                                              ; preds = %283, %216
  %285 = load float, float* %19, align 4
  %286 = fcmp ogt float %285, 1.000000e+00
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  store float 1.000000e+00, float* %19, align 4
  br label %288

288:                                              ; preds = %287, %284
  %289 = load float, float* %9, align 4
  %290 = load float, float* %10, align 4
  %291 = load float, float* %9, align 4
  %292 = fsub float %290, %291
  %293 = load float, float* %19, align 4
  %294 = fmul float %292, %293
  %295 = fadd float %289, %294
  store float %295, float* %23, align 4
  %296 = load float*, float** %11, align 8
  %297 = getelementptr inbounds float, float* %296, i64 0
  %298 = load float, float* %297, align 4
  %299 = load float, float* %19, align 4
  %300 = load float*, float** %12, align 8
  %301 = getelementptr inbounds float, float* %300, i64 0
  %302 = load float, float* %301, align 4
  %303 = load float*, float** %11, align 8
  %304 = getelementptr inbounds float, float* %303, i64 0
  %305 = load float, float* %304, align 4
  %306 = fsub float %302, %305
  %307 = fmul float %299, %306
  %308 = fadd float %298, %307
  %309 = load float*, float** %21, align 8
  %310 = getelementptr inbounds float, float* %309, i64 0
  store float %308, float* %310, align 4
  %311 = load float*, float** %11, align 8
  %312 = getelementptr inbounds float, float* %311, i64 1
  %313 = load float, float* %312, align 4
  %314 = load float, float* %19, align 4
  %315 = load float*, float** %12, align 8
  %316 = getelementptr inbounds float, float* %315, i64 1
  %317 = load float, float* %316, align 4
  %318 = load float*, float** %11, align 8
  %319 = getelementptr inbounds float, float* %318, i64 1
  %320 = load float, float* %319, align 4
  %321 = fsub float %317, %320
  %322 = fmul float %314, %321
  %323 = fadd float %313, %322
  %324 = load float*, float** %21, align 8
  %325 = getelementptr inbounds float, float* %324, i64 1
  store float %323, float* %325, align 4
  %326 = load float*, float** %11, align 8
  %327 = getelementptr inbounds float, float* %326, i64 2
  %328 = load float, float* %327, align 4
  %329 = load float, float* %19, align 4
  %330 = load float*, float** %12, align 8
  %331 = getelementptr inbounds float, float* %330, i64 2
  %332 = load float, float* %331, align 4
  %333 = load float*, float** %11, align 8
  %334 = getelementptr inbounds float, float* %333, i64 2
  %335 = load float, float* %334, align 4
  %336 = fsub float %332, %335
  %337 = fmul float %329, %336
  %338 = fadd float %328, %337
  %339 = load float*, float** %21, align 8
  %340 = getelementptr inbounds float, float* %339, i64 2
  store float %338, float* %340, align 4
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %22, align 4
  %346 = xor i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load float, float* %23, align 4
  %351 = load float, float* %10, align 4
  %352 = load float*, float** %21, align 8
  %353 = load float*, float** %12, align 8
  call void @CM_TraceThroughTree(%struct.TYPE_9__* %341, i32 %349, float %350, float %351, float* %352, float* %353)
  br label %354

354:                                              ; preds = %288, %145, %122, %34, %30
  ret void
}

declare dso_local i32 @CM_TraceThroughLeaf(%struct.TYPE_9__*, i32*) #1

declare dso_local float @DotProduct(i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
