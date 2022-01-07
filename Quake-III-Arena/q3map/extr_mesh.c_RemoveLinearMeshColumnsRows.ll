; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_RemoveLinearMeshColumnsRows.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_mesh.c_RemoveLinearMeshColumnsRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@originalWidths = common dso_local global i32* null, align 8
@originalHeights = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @RemoveLinearMeshColumnsRows(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %14 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = mul nuw i64 %15, %17
  %20 = alloca %struct.TYPE_10__, i64 %19, align 16
  store i64 %15, i64* %12, align 8
  store i64 %17, i64* %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %68, %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %17
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %45
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %60
  %62 = bitcast %struct.TYPE_10__* %49 to i8*
  %63 = bitcast %struct.TYPE_10__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %64

64:                                               ; preds = %42
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %36

67:                                               ; preds = %36
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %29

71:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %209, %71
  %73 = load i32, i32* %4, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %212

78:                                               ; preds = %72
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %136, %78
  %80 = load i32, i32* %3, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %139

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %17
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %87
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, %17
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %96
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, %17
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @ProjectPointOntoVector(i32 %93, i32 %103, i32 %113, i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, %17
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %118
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @VectorSubtract(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = call float @VectorLength(i32 %128)
  store float %129, float* %6, align 4
  %130 = load float, float* %6, align 4
  %131 = load float, float* %7, align 4
  %132 = fcmp ogt float %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %84
  %134 = load float, float* %6, align 4
  store float %134, float* %7, align 4
  br label %135

135:                                              ; preds = %133, %84
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %79

139:                                              ; preds = %79
  %140 = load float, float* %7, align 4
  %141 = fpext float %140 to double
  %142 = fcmp olt double %141, 1.000000e-01
  br i1 %142, label %143, label %208

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %181, %143
  %148 = load i32, i32* %3, align 4
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %184

152:                                              ; preds = %147
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %177, %152
  %155 = load i32, i32* %5, align 4
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %17
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %162
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = mul nsw i64 %168, %17
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %169
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %173
  %175 = bitcast %struct.TYPE_10__* %166 to i8*
  %176 = bitcast %struct.TYPE_10__* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 4, i1 false)
  br label %177

177:                                              ; preds = %159
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %154

180:                                              ; preds = %154
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %147

184:                                              ; preds = %147
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %202, %184
  %187 = load i32, i32* %5, align 4
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load i32*, i32** @originalWidths, align 8
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** @originalWidths, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %186

205:                                              ; preds = %186
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %139
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %72

212:                                              ; preds = %72
  store i32 1, i32* %4, align 4
  br label %213

213:                                              ; preds = %350, %212
  %214 = load i32, i32* %4, align 4
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, 1
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %353

219:                                              ; preds = %213
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %277, %219
  %221 = load i32, i32* %3, align 4
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %280

225:                                              ; preds = %220
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %227, %17
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %228
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %4, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %237, %17
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %238
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = mul nsw i64 %247, %17
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %248
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @ProjectPointOntoVector(i32 %234, i32 %244, i32 %254, i32 %255)
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, %17
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %259
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @VectorSubtract(i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %9, align 4
  %270 = call float @VectorLength(i32 %269)
  store float %270, float* %6, align 4
  %271 = load float, float* %6, align 4
  %272 = load float, float* %7, align 4
  %273 = fcmp ogt float %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %225
  %275 = load float, float* %6, align 4
  store float %275, float* %7, align 4
  br label %276

276:                                              ; preds = %274, %225
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %3, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %3, align 4
  br label %220

280:                                              ; preds = %220
  %281 = load float, float* %7, align 4
  %282 = fpext float %281 to double
  %283 = fcmp olt double %282, 1.000000e-01
  br i1 %283, label %284, label %349

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, -1
  store i32 %287, i32* %285, align 4
  store i32 0, i32* %3, align 4
  br label %288

288:                                              ; preds = %322, %284
  %289 = load i32, i32* %3, align 4
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %293, label %325

293:                                              ; preds = %288
  %294 = load i32, i32* %4, align 4
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %318, %293
  %296 = load i32, i32* %5, align 4
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %296, %298
  br i1 %299, label %300, label %321

300:                                              ; preds = %295
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %302, %17
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %303
  %305 = load i32, i32* %3, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 %306
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = mul nsw i64 %310, %17
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %311
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i64 %314
  %316 = bitcast %struct.TYPE_10__* %307 to i8*
  %317 = bitcast %struct.TYPE_10__* %315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %316, i8* align 4 %317, i64 4, i1 false)
  br label %318

318:                                              ; preds = %300
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %295

321:                                              ; preds = %295
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %3, align 4
  br label %288

325:                                              ; preds = %288
  %326 = load i32, i32* %4, align 4
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %343, %325
  %328 = load i32, i32* %5, align 4
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %328, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %327
  %333 = load i32*, i32** @originalHeights, align 8
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** @originalHeights, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %338, i32* %342, align 4
  br label %343

343:                                              ; preds = %332
  %344 = load i32, i32* %5, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %5, align 4
  br label %327

346:                                              ; preds = %327
  %347 = load i32, i32* %4, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %4, align 4
  br label %349

349:                                              ; preds = %346, %280
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %4, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %4, align 4
  br label %213

353:                                              ; preds = %213
  %354 = mul nsw i64 0, %17
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store %struct.TYPE_10__* %356, %struct.TYPE_10__** %357, align 8
  store i32 1, i32* %3, align 4
  br label %358

358:                                              ; preds = %382, %353
  %359 = load i32, i32* %3, align 4
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp slt i32 %359, %361
  br i1 %362, label %363, label %385

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %364, align 8
  %366 = load i32, i32* %3, align 4
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = mul nsw i32 %366, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i64 %370
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = mul nsw i64 %373, %17
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = mul i64 %378, 4
  %380 = trunc i64 %379 to i32
  %381 = call i32 @memmove(%struct.TYPE_10__* %371, %struct.TYPE_10__* %375, i32 %380)
  br label %382

382:                                              ; preds = %363
  %383 = load i32, i32* %3, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %3, align 4
  br label %358

385:                                              ; preds = %358
  %386 = call %struct.TYPE_9__* @CopyMesh(%struct.TYPE_9__* %10)
  %387 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %387)
  ret %struct.TYPE_9__* %386
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ProjectPointOntoVector(i32, i32, i32, i32) #3

declare dso_local i32 @VectorSubtract(i32, i32, i32) #3

declare dso_local float @VectorLength(i32) #3

declare dso_local i32 @memmove(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #3

declare dso_local %struct.TYPE_9__* @CopyMesh(%struct.TYPE_9__*) #3

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
