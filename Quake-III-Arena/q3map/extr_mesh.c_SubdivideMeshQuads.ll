; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_SubdivideMeshQuads.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_SubdivideMeshQuads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SubdivideMeshQuads: maxsize > MAX_EXPANDED_AXIS\00", align 1
@originalWidths = common dso_local global i32* null, align 8
@originalHeights = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @SubdivideMeshQuads(%struct.TYPE_12__* %0, float %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_12__, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %26 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = mul nuw i64 %27, %29
  %32 = alloca %struct.TYPE_13__, i64 %31, align 16
  store i64 %27, i64* %24, align 8
  store i64 %29, i64* %25, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %80, %5
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %29
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %57
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %72
  %74 = bitcast %struct.TYPE_13__* %61 to i8*
  %75 = bitcast %struct.TYPE_13__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  br label %76

76:                                               ; preds = %54
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %48

79:                                               ; preds = %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %41

83:                                               ; preds = %41
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sdiv i32 %94, %98
  store i32 %99, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %301, %89
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %308

107:                                              ; preds = %100
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %143, %107
  %109 = load i32, i32* %11, align 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, %29
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %29
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %126
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @VectorSubtract(i32 %123, i32 %132, i32 %133)
  %135 = load i32, i32* %18, align 4
  %136 = call float @VectorLength(i32 %135)
  store float %136, float* %19, align 4
  %137 = load float, float* %19, align 4
  %138 = load float, float* %20, align 4
  %139 = fcmp ogt float %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %113
  %141 = load float, float* %19, align 4
  store float %141, float* %20, align 4
  br label %142

142:                                              ; preds = %140, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %108

146:                                              ; preds = %108
  %147 = load float, float* %20, align 4
  %148 = load float, float* %7, align 4
  %149 = fdiv float %147, %148
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %154, %146
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %301

166:                                              ; preds = %156
  %167 = load i32, i32* %17, align 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %192, %166
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %176, %177
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load i32*, i32** @originalWidths, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** @originalWidths, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %187, i32* %191, align 4
  br label %192

192:                                              ; preds = %180
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %13, align 4
  br label %174

195:                                              ; preds = %174
  store i32 1, i32* %13, align 4
  br label %196

196:                                              ; preds = %212, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load i32*, i32** @originalWidths, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** @originalWidths, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %196

215:                                              ; preds = %196
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %297, %215
  %217 = load i32, i32* %11, align 4
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %300

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %250, %221
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %227, %228
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %253

231:                                              ; preds = %225
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, %29
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %234
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 %237
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %240, %29
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %241
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %17, align 4
  %245 = sub nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %246
  %248 = bitcast %struct.TYPE_13__* %238 to i8*
  %249 = bitcast %struct.TYPE_13__* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 %249, i64 4, i1 false)
  br label %250

250:                                              ; preds = %231
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %13, align 4
  br label %225

253:                                              ; preds = %225
  store i32 1, i32* %13, align 4
  br label %254

254:                                              ; preds = %293, %253
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %296

258:                                              ; preds = %254
  %259 = load i32, i32* %13, align 4
  %260 = sitofp i32 %259 to float
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, 1
  %263 = sitofp i32 %262 to float
  %264 = fdiv float %260, %263
  store float %264, float* %21, align 4
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = mul nsw i64 %266, %29
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %267
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %273, %29
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %274
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %276, %277
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i64 %280
  %282 = load float, float* %21, align 4
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = mul nsw i64 %284, %29
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %285
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i64 %290
  %292 = call i32 @LerpDrawVertAmount(%struct.TYPE_13__* %271, %struct.TYPE_13__* %281, float %282, %struct.TYPE_13__* %291)
  br label %293

293:                                              ; preds = %258
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %254

296:                                              ; preds = %254
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  br label %216

300:                                              ; preds = %216
  br label %301

301:                                              ; preds = %300, %165
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %12, align 4
  br label %100

308:                                              ; preds = %100
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %309, %312
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 %316, 1
  %318 = sdiv i32 %313, %317
  store i32 %318, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %319

319:                                              ; preds = %520, %308
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %323, 1
  %325 = icmp slt i32 %320, %324
  br i1 %325, label %326, label %527

326:                                              ; preds = %319
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %11, align 4
  br label %327

327:                                              ; preds = %362, %326
  %328 = load i32, i32* %11, align 4
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %328, %330
  br i1 %331, label %332, label %365

332:                                              ; preds = %327
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, %29
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %336
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = mul nsw i64 %344, %29
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %345
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %18, align 4
  %353 = call i32 @VectorSubtract(i32 %342, i32 %351, i32 %352)
  %354 = load i32, i32* %18, align 4
  %355 = call float @VectorLength(i32 %354)
  store float %355, float* %19, align 4
  %356 = load float, float* %19, align 4
  %357 = load float, float* %20, align 4
  %358 = fcmp ogt float %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %332
  %360 = load float, float* %19, align 4
  store float %360, float* %20, align 4
  br label %361

361:                                              ; preds = %359, %332
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  br label %327

365:                                              ; preds = %327
  %366 = load float, float* %20, align 4
  %367 = load float, float* %7, align 4
  %368 = fdiv float %366, %367
  %369 = fptosi float %368 to i32
  store i32 %369, i32* %17, align 4
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* %16, align 4
  %372 = icmp sgt i32 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %365
  %374 = load i32, i32* %16, align 4
  store i32 %374, i32* %17, align 4
  br label %375

375:                                              ; preds = %373, %365
  %376 = load i32, i32* %17, align 4
  %377 = add nsw i32 %376, 1
  %378 = load i32*, i32** %10, align 8
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  %382 = load i32, i32* %17, align 4
  %383 = icmp sle i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %375
  br label %520

385:                                              ; preds = %375
  %386 = load i32, i32* %17, align 4
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, %386
  store i32 %389, i32* %387, align 4
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = sub nsw i32 %391, 1
  store i32 %392, i32* %13, align 4
  br label %393

393:                                              ; preds = %411, %385
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* %12, align 4
  %396 = load i32, i32* %17, align 4
  %397 = add nsw i32 %395, %396
  %398 = icmp sge i32 %394, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %393
  %400 = load i32*, i32** @originalHeights, align 8
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* %17, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %400, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** @originalHeights, align 8
  %408 = load i32, i32* %13, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %406, i32* %410, align 4
  br label %411

411:                                              ; preds = %399
  %412 = load i32, i32* %13, align 4
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %13, align 4
  br label %393

414:                                              ; preds = %393
  store i32 1, i32* %13, align 4
  br label %415

415:                                              ; preds = %431, %414
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* %17, align 4
  %418 = icmp sle i32 %416, %417
  br i1 %418, label %419, label %434

419:                                              ; preds = %415
  %420 = load i32*, i32** @originalHeights, align 8
  %421 = load i32, i32* %12, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** @originalHeights, align 8
  %426 = load i32, i32* %12, align 4
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %425, i64 %429
  store i32 %424, i32* %430, align 4
  br label %431

431:                                              ; preds = %419
  %432 = load i32, i32* %13, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %13, align 4
  br label %415

434:                                              ; preds = %415
  store i32 0, i32* %11, align 4
  br label %435

435:                                              ; preds = %516, %434
  %436 = load i32, i32* %11, align 4
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %436, %438
  br i1 %439, label %440, label %519

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  store i32 %443, i32* %13, align 4
  br label %444

444:                                              ; preds = %469, %440
  %445 = load i32, i32* %13, align 4
  %446 = load i32, i32* %12, align 4
  %447 = load i32, i32* %17, align 4
  %448 = add nsw i32 %446, %447
  %449 = icmp sgt i32 %445, %448
  br i1 %449, label %450, label %472

450:                                              ; preds = %444
  %451 = load i32, i32* %13, align 4
  %452 = sext i32 %451 to i64
  %453 = mul nsw i64 %452, %29
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %453
  %455 = load i32, i32* %11, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i64 %456
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %17, align 4
  %460 = sub nsw i32 %458, %459
  %461 = sext i32 %460 to i64
  %462 = mul nsw i64 %461, %29
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %462
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i64 %465
  %467 = bitcast %struct.TYPE_13__* %457 to i8*
  %468 = bitcast %struct.TYPE_13__* %466 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %467, i8* align 4 %468, i64 4, i1 false)
  br label %469

469:                                              ; preds = %450
  %470 = load i32, i32* %13, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %13, align 4
  br label %444

472:                                              ; preds = %444
  store i32 1, i32* %13, align 4
  br label %473

473:                                              ; preds = %512, %472
  %474 = load i32, i32* %13, align 4
  %475 = load i32, i32* %17, align 4
  %476 = icmp sle i32 %474, %475
  br i1 %476, label %477, label %515

477:                                              ; preds = %473
  %478 = load i32, i32* %13, align 4
  %479 = sitofp i32 %478 to float
  %480 = load i32, i32* %17, align 4
  %481 = add nsw i32 %480, 1
  %482 = sitofp i32 %481 to float
  %483 = fdiv float %479, %482
  store float %483, float* %21, align 4
  %484 = load i32, i32* %12, align 4
  %485 = sext i32 %484 to i64
  %486 = mul nsw i64 %485, %29
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %486
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i64 %489
  %491 = load i32, i32* %12, align 4
  %492 = load i32, i32* %17, align 4
  %493 = add nsw i32 %491, %492
  %494 = add nsw i32 %493, 1
  %495 = sext i32 %494 to i64
  %496 = mul nsw i64 %495, %29
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %496
  %498 = load i32, i32* %11, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i64 %499
  %501 = load float, float* %21, align 4
  %502 = load i32, i32* %12, align 4
  %503 = load i32, i32* %13, align 4
  %504 = add nsw i32 %502, %503
  %505 = sext i32 %504 to i64
  %506 = mul nsw i64 %505, %29
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %506
  %508 = load i32, i32* %11, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i64 %509
  %511 = call i32 @LerpDrawVertAmount(%struct.TYPE_13__* %490, %struct.TYPE_13__* %500, float %501, %struct.TYPE_13__* %510)
  br label %512

512:                                              ; preds = %477
  %513 = load i32, i32* %13, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %13, align 4
  br label %473

515:                                              ; preds = %473
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %11, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %11, align 4
  br label %435

519:                                              ; preds = %435
  br label %520

520:                                              ; preds = %519, %384
  %521 = load i32, i32* %15, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %15, align 4
  %523 = load i32, i32* %17, align 4
  %524 = add nsw i32 %523, 1
  %525 = load i32, i32* %12, align 4
  %526 = add nsw i32 %525, %524
  store i32 %526, i32* %12, align 4
  br label %319

527:                                              ; preds = %319
  %528 = mul nsw i64 0, %29
  %529 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %529, i64 0
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store %struct.TYPE_13__* %530, %struct.TYPE_13__** %531, align 8
  store i32 1, i32* %11, align 4
  br label %532

532:                                              ; preds = %556, %527
  %533 = load i32, i32* %11, align 4
  %534 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = icmp slt i32 %533, %535
  br i1 %536, label %537, label %559

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %539 = load %struct.TYPE_13__*, %struct.TYPE_13__** %538, align 8
  %540 = load i32, i32* %11, align 4
  %541 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = mul nsw i32 %540, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %539, i64 %544
  %546 = load i32, i32* %11, align 4
  %547 = sext i32 %546 to i64
  %548 = mul nsw i64 %547, %29
  %549 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = mul i64 %552, 4
  %554 = trunc i64 %553 to i32
  %555 = call i32 @memmove(%struct.TYPE_13__* %545, %struct.TYPE_13__* %549, i32 %554)
  br label %556

556:                                              ; preds = %537
  %557 = load i32, i32* %11, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %11, align 4
  br label %532

559:                                              ; preds = %532
  %560 = call %struct.TYPE_12__* @CopyMesh(%struct.TYPE_12__* %22)
  %561 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %561)
  ret %struct.TYPE_12__* %560
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Error(i8*) #3

declare dso_local i32 @VectorSubtract(i32, i32, i32) #3

declare dso_local float @VectorLength(i32) #3

declare dso_local i32 @LerpDrawVertAmount(%struct.TYPE_13__*, %struct.TYPE_13__*, float, %struct.TYPE_13__*) #3

declare dso_local i32 @memmove(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #3

declare dso_local %struct.TYPE_12__* @CopyMesh(%struct.TYPE_12__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
