; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_FindFaceReachabilities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_FindFaceReachabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32*, i32*, float**, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_14__*, i64, i64, i64, i64 }

@aasworld = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@FACE_GROUND = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @AAS_FindFaceReachabilities(i32** %0, i32 %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_14__*, align 8
  %33 = alloca %struct.TYPE_14__*, align 8
  %34 = alloca %struct.TYPE_17__*, align 8
  %35 = alloca %struct.TYPE_15__*, align 8
  %36 = alloca %struct.TYPE_16__*, align 8
  %37 = alloca %struct.TYPE_13__*, align 8
  %38 = alloca %struct.TYPE_13__*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %33, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %38, align 8
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %346, %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 0), align 8
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %349

43:                                               ; preds = %39
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 7), align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %46
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %34, align 8
  store float 9.999990e+05, float* %21, align 4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %167, %43
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %170

54:                                               ; preds = %48
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 1), align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 6), align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @abs(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %35, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FACE_GROUND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %54
  br label %167

75:                                               ; preds = %54
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 5), align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %79
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %37, align 8
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %163, %75
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %166

87:                                               ; preds = %81
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 2), align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @abs(i32 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 4), align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %36, align 8
  %103 = load float**, float*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 3), align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds float*, float** %103, i64 %108
  %110 = load float*, float** %109, align 8
  store float* %110, float** %17, align 8
  %111 = load float**, float*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @aasworld, i32 0, i32 3), align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds float*, float** %111, i64 %116
  %118 = load float*, float** %117, align 8
  store float* %118, float** %18, align 8
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %159, %87
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %162

123:                                              ; preds = %119
  %124 = load i32**, i32*** %6, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = bitcast i32* %128 to float*
  store float* %129, float** %19, align 8
  %130 = load i32**, i32*** %6, align 8
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %7, align 4
  %134 = srem i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %130, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to float*
  store float* %138, float** %20, align 8
  %139 = load float*, float** %17, align 8
  %140 = load float*, float** %18, align 8
  %141 = load float*, float** %19, align 8
  %142 = load float*, float** %20, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = load i32*, i32** %25, align 8
  %146 = load i32*, i32** %27, align 8
  %147 = load i32*, i32** %26, align 8
  %148 = load i32*, i32** %28, align 8
  %149 = load float, float* %21, align 4
  %150 = call float @AAS_ClosestEdgePoints(float* %139, float* %140, float* %141, float* %142, %struct.TYPE_13__* %143, %struct.TYPE_13__* %144, i32* %145, i32* %146, i32* %147, i32* %148, float %149)
  store float %150, float* %24, align 4
  %151 = load float, float* %24, align 4
  %152 = load float, float* %21, align 4
  %153 = fcmp olt float %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %123
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %16, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %38, align 8
  %157 = load float, float* %24, align 4
  store float %157, float* %21, align 4
  br label %158

158:                                              ; preds = %154, %123
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %119

162:                                              ; preds = %119
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %81

166:                                              ; preds = %81
  br label %167

167:                                              ; preds = %166, %74
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %48

170:                                              ; preds = %48
  %171 = load float, float* %21, align 4
  %172 = fcmp ogt float %171, 1.920000e+02
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %346

174:                                              ; preds = %170
  %175 = load i32*, i32** %25, align 8
  %176 = load i32*, i32** %26, align 8
  %177 = load i32*, i32** %25, align 8
  %178 = call i32 @VectorMiddle(i32* %175, i32* %176, i32* %177)
  %179 = load i32*, i32** %27, align 8
  %180 = load i32*, i32** %28, align 8
  %181 = load i32*, i32** %27, align 8
  %182 = call i32 @VectorMiddle(i32* %179, i32* %180, i32* %181)
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %174
  %186 = load i32*, i32** %25, align 8
  %187 = load i32*, i32** %29, align 8
  %188 = call i32 @VectorCopy(i32* %186, i32* %187)
  %189 = load i32*, i32** %27, align 8
  %190 = load i32*, i32** %25, align 8
  %191 = call i32 @VectorCopy(i32* %189, i32* %190)
  %192 = load i32*, i32** %29, align 8
  %193 = load i32*, i32** %27, align 8
  %194 = call i32 @VectorCopy(i32* %192, i32* %193)
  br label %195

195:                                              ; preds = %185, %174
  %196 = load i32*, i32** %27, align 8
  %197 = load i32*, i32** %25, align 8
  %198 = load i32*, i32** %30, align 8
  %199 = call i32 @VectorSubtract(i32* %196, i32* %197, i32* %198)
  %200 = load i32*, i32** %30, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 0, i32* %201, align 4
  %202 = load i32*, i32** %30, align 8
  %203 = call float @VectorLength(i32* %202)
  store float %203, float* %23, align 4
  %204 = load float, float* %23, align 4
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aassettings, i32 0, i32 0), align 4
  %206 = call i32 @AAS_MaxJumpDistance(i32 %205)
  %207 = mul nsw i32 2, %206
  %208 = sitofp i32 %207 to float
  %209 = fcmp ogt float %204, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %195
  br label %346

211:                                              ; preds = %195
  %212 = load i32*, i32** %27, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 32
  %216 = load i32*, i32** %25, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %346

221:                                              ; preds = %211
  %222 = load i32*, i32** %27, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %25, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 128
  %229 = icmp slt i32 %224, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %346

231:                                              ; preds = %221
  %232 = load float, float* %23, align 4
  %233 = fcmp ogt float %232, 3.200000e+01
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32*, i32** %25, align 8
  %236 = load i32*, i32** %27, align 8
  %237 = call i32 @AAS_HorizontalVelocityForJump(i32 0, i32* %235, i32* %236, float* %22)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  br label %346

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240, %231
  %242 = load i32*, i32** %25, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load i32*, i32** %27, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %241
  %253 = load i32*, i32** %27, align 8
  %254 = load i32*, i32** %31, align 8
  %255 = call i32 @VectorCopy(i32* %253, i32* %254)
  br label %260

256:                                              ; preds = %241
  %257 = load i32*, i32** %25, align 8
  %258 = load i32*, i32** %31, align 8
  %259 = call i32 @VectorCopy(i32* %257, i32* %258)
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32*, i32** %31, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  store i32 0, i32* %262, align 4
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32*, i32** %31, align 8
  %270 = call i32 @DotProduct(i32* %268, i32* %269)
  %271 = sub nsw i32 %265, %270
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = sdiv i32 %271, %276
  %278 = load i32*, i32** %31, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %16, align 4
  %281 = load i32*, i32** %31, align 8
  %282 = call i32 @AAS_PointInsideFace(i32 %280, i32* %281, float 0x3FB99999A0000000)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %260
  %285 = load i32*, i32** %27, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 %287, 16
  %289 = load i32*, i32** %25, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = icmp sgt i32 %288, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %284
  br label %346

294:                                              ; preds = %284
  br label %295

295:                                              ; preds = %294, %260
  %296 = call %struct.TYPE_14__* (...) @AAS_AllocReachability()
  store %struct.TYPE_14__* %296, %struct.TYPE_14__** %32, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %298 = icmp ne %struct.TYPE_14__* %297, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %295
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %300, %struct.TYPE_14__** %5, align 8
  br label %351

301:                                              ; preds = %295
  %302 = load i32, i32* %10, align 4
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 7
  store i64 0, i64* %306, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 6
  store i64 0, i64* %308, align 8
  %309 = load i32*, i32** %25, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @VectorCopy(i32* %309, i32* %312)
  %314 = load i32*, i32** %27, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @VectorCopy(i32* %314, i32* %317)
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 5
  store i64 0, i64* %320, align 8
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 4
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 3
  store %struct.TYPE_14__* %323, %struct.TYPE_14__** %325, align 8
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %326, %struct.TYPE_14__** %33, align 8
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %301
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @AAS_PermanentLine(i32* %332, i32* %335, i32 1)
  br label %345

337:                                              ; preds = %301
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @AAS_PermanentLine(i32* %340, i32* %343, i32 2)
  br label %345

345:                                              ; preds = %337, %329
  br label %346

346:                                              ; preds = %345, %293, %239, %230, %220, %210, %173
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %10, align 4
  br label %39

349:                                              ; preds = %39
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %350, %struct.TYPE_14__** %5, align 8
  br label %351

351:                                              ; preds = %349, %299
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %352
}

declare dso_local i64 @abs(i32) #1

declare dso_local float @AAS_ClosestEdgePoints(float*, float*, float*, float*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*, i32*, i32*, float) #1

declare dso_local i32 @VectorMiddle(i32*, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @AAS_MaxJumpDistance(i32) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(i32, i32*, i32*, float*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @AAS_PointInsideFace(i32, i32*, float) #1

declare dso_local %struct.TYPE_14__* @AAS_AllocReachability(...) #1

declare dso_local i32 @AAS_PermanentLine(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
