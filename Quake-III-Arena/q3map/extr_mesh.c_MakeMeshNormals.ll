; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_MakeMeshNormals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_MakeMeshNormals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }

@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@neighbors = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeMeshNormals(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca [8 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca float, align 4
  %22 = bitcast %struct.TYPE_4__* %3 to { i64, %struct.TYPE_5__* }*
  %23 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %22, i32 0, i32 0
  store i64 %0, i64* %23, align 8
  %24 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %22, i32 0, i32 1
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %24, align 8
  %25 = load i64, i64* @qfalse, align 8
  store i64 %25, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %65, %2
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %47, %49
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @VectorSubtract(i32 %41, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call float @VectorLength(i32 %58)
  store float %59, float* %21, align 4
  %60 = load float, float* %21, align 4
  %61 = fpext float %60 to double
  %62 = fcmp ogt double %61, 1.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %31
  br label %68

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %26

68:                                               ; preds = %63, %26
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @qtrue, align 8
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i64, i64* @qfalse, align 8
  store i64 %76, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %113, %75
  %78 = load i32, i32* %4, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %92, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @VectorSubtract(i32 %89, i32 %103, i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call float @VectorLength(i32 %106)
  store float %107, float* %21, align 4
  %108 = load float, float* %21, align 4
  %109 = fpext float %108 to double
  %110 = fcmp ogt double %109, 1.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %82
  br label %116

112:                                              ; preds = %82
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %77

116:                                              ; preds = %111, %77
  %117 = load i32, i32* %4, align 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @qtrue, align 8
  store i64 %122, i64* %20, align 8
  br label %123

123:                                              ; preds = %121, %116
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %358, %123
  %125 = load i32, i32* %4, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %361

129:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %354, %129
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %357

135:                                              ; preds = %130
  store i32 0, i32* %10, align 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %138, %140
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %144
  store %struct.TYPE_5__* %145, %struct.TYPE_5__** %15, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @VectorCopy(i32 %148, i32 %149)
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %292, %135
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %295

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @VectorClear(i32 %158)
  %160 = load i64, i64* @qfalse, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %162
  store i64 %160, i64* %163, align 8
  store i32 1, i32* %7, align 4
  br label %164

164:                                              ; preds = %288, %154
  %165 = load i32, i32* %7, align 4
  %166 = icmp sle i32 %165, 3
  br i1 %166, label %167, label %291

167:                                              ; preds = %164
  %168 = load i32, i32* %4, align 4
  %169 = load i32**, i32*** @neighbors, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %168, %177
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32**, i32*** @neighbors, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %179, %188
  store i32 %189, i32* %14, align 4
  %190 = load i64, i64* %19, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %167
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %198, %199
  store i32 %200, i32* %13, align 4
  br label %213

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp sge i32 %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 1, %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %208, %210
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %195
  br label %214

214:                                              ; preds = %213, %167
  %215 = load i64, i64* %20, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load i32, i32* %14, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %223, %224
  store i32 %225, i32* %14, align 4
  br label %238

226:                                              ; preds = %217
  %227 = load i32, i32* %14, align 4
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp sge i32 %227, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 1, %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %233, %235
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %231, %226
  br label %238

238:                                              ; preds = %237, %220
  br label %239

239:                                              ; preds = %238, %214
  %240 = load i32, i32* %13, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %255, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %13, align 4
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp sge i32 %243, %245
  br i1 %246, label %255, label %247

247:                                              ; preds = %242
  %248 = load i32, i32* %14, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %14, align 4
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp sge i32 %251, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %250, %247, %242, %239
  br label %291

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %259, %261
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %17, align 4
  %271 = call i32 @VectorSubtract(i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = call i32 @VectorNormalize(i32 %272, i32 %273)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %256
  br label %288

277:                                              ; preds = %256
  %278 = load i64, i64* @qtrue, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %280
  store i64 %278, i64* %281, align 8
  %282 = load i32, i32* %17, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @VectorCopy(i32 %282, i32 %286)
  br label %291

288:                                              ; preds = %276
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %164

291:                                              ; preds = %277, %255, %164
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %151

295:                                              ; preds = %151
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @VectorClear(i32 %296)
  store i32 0, i32* %6, align 4
  br label %298

298:                                              ; preds = %341, %295
  %299 = load i32, i32* %6, align 4
  %300 = icmp slt i32 %299, 8
  br i1 %300, label %301, label %344

301:                                              ; preds = %298
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  %310 = and i32 %309, 7
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %307, %301
  br label %341

316:                                              ; preds = %307
  %317 = load i32, i32* %6, align 4
  %318 = add nsw i32 %317, 1
  %319 = and i32 %318, 7
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @CrossProduct(i32 %322, i32 %326, i32 %327)
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @VectorNormalize(i32 %329, i32 %330)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %316
  br label %341

334:                                              ; preds = %316
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @VectorAdd(i32 %335, i32 %336, i32 %337)
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %10, align 4
  br label %341

341:                                              ; preds = %334, %333, %315
  %342 = load i32, i32* %6, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %6, align 4
  br label %298

344:                                              ; preds = %298
  %345 = load i32, i32* %10, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  store i32 1, i32* %10, align 4
  br label %348

348:                                              ; preds = %347, %344
  %349 = load i32, i32* %9, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @VectorNormalize(i32 %349, i32 %352)
  br label %354

354:                                              ; preds = %348
  %355 = load i32, i32* %5, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %5, align 4
  br label %130

357:                                              ; preds = %130
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %4, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %4, align 4
  br label %124

361:                                              ; preds = %124
  ret void
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
