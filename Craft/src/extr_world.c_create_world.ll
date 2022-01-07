; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_world.c_create_world.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_world.c_create_world.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHUNK_SIZE = common dso_local global i32 0, align 4
@SHOW_PLANTS = common dso_local global i64 0, align 8
@SHOW_TREES = common dso_local global i32 0, align 4
@SHOW_CLOUDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_world(i32 %0, i32 %1, i32 (i32, i32, i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32, i32, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 (i32, i32, i32, i32, i8*)* %2, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %336, %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CHUNK_SIZE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %339

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %332, %38
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @CHUNK_SIZE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %335

47:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @CHUNK_SIZE, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CHUNK_SIZE, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53, %50, %47
  store i32 -1, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @CHUNK_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CHUNK_SIZE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sitofp i32 %73 to double
  %75 = fmul double %74, 1.000000e-02
  %76 = fptosi double %75 to i32
  %77 = load i32, i32* %14, align 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 1.000000e-02
  %80 = fptosi double %79 to i32
  %81 = call double @simplex2(i32 %76, i32 %80, i32 4, double 5.000000e-01, i32 2)
  %82 = fptrunc double %81 to float
  store float %82, float* %15, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 0, %83
  %85 = sitofp i32 %84 to double
  %86 = fmul double %85, 1.000000e-02
  %87 = fptosi double %86 to i32
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 0, %88
  %90 = sitofp i32 %89 to double
  %91 = fmul double %90, 1.000000e-02
  %92 = fptosi double %91 to i32
  %93 = call double @simplex2(i32 %87, i32 %92, i32 2, double 9.000000e-01, i32 2)
  %94 = fptrunc double %93 to float
  store float %94, float* %16, align 4
  %95 = load float, float* %16, align 4
  %96 = fmul float %95, 3.200000e+01
  %97 = fadd float %96, 1.600000e+01
  %98 = fptosi float %97 to i32
  store i32 %98, i32* %17, align 4
  %99 = load float, float* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = sitofp i32 %100 to float
  %102 = fmul float %99, %101
  %103 = fptosi float %102 to i32
  store i32 %103, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 12, i32* %20, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %62
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %109

109:                                              ; preds = %107, %62
  store i32 0, i32* %21, align 4
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 %115(i32 %116, i32 %117, i32 %118, i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %21, align 4
  br label %110

127:                                              ; preds = %110
  %128 = load i32, i32* %19, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %295

130:                                              ; preds = %127
  %131 = load i64, i64* @SHOW_PLANTS, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %189

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 0, %134
  %136 = sitofp i32 %135 to double
  %137 = fmul double %136, 1.000000e-01
  %138 = fptosi double %137 to i32
  %139 = load i32, i32* %14, align 4
  %140 = sitofp i32 %139 to double
  %141 = fmul double %140, 1.000000e-01
  %142 = fptosi double %141 to i32
  %143 = call double @simplex2(i32 %138, i32 %142, i32 4, double 8.000000e-01, i32 2)
  %144 = fcmp ogt double %143, 6.000000e-01
  br i1 %144, label %145, label %154

145:                                              ; preds = %133
  %146 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 17, %150
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 %146(i32 %147, i32 %148, i32 %149, i32 %151, i8* %152)
  br label %154

154:                                              ; preds = %145, %133
  %155 = load i32, i32* %13, align 4
  %156 = sitofp i32 %155 to double
  %157 = fmul double %156, 5.000000e-02
  %158 = fptosi double %157 to i32
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 0, %159
  %161 = sitofp i32 %160 to double
  %162 = fmul double %161, 5.000000e-02
  %163 = fptosi double %162 to i32
  %164 = call double @simplex2(i32 %158, i32 %163, i32 4, double 8.000000e-01, i32 2)
  %165 = fcmp ogt double %164, 0x3FE6666666666666
  br i1 %165, label %166, label %188

166:                                              ; preds = %154
  %167 = load i32, i32* %13, align 4
  %168 = sitofp i32 %167 to double
  %169 = fmul double %168, 1.000000e-01
  %170 = fptosi double %169 to i32
  %171 = load i32, i32* %14, align 4
  %172 = sitofp i32 %171 to double
  %173 = fmul double %172, 1.000000e-01
  %174 = fptosi double %173 to i32
  %175 = call double @simplex2(i32 %170, i32 %174, i32 4, double 8.000000e-01, i32 2)
  %176 = fmul double %175, 7.000000e+00
  %177 = fadd double 1.800000e+01, %176
  %178 = fptosi double %177 to i32
  store i32 %178, i32* %22, align 4
  %179 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %12, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 %179(i32 %180, i32 %181, i32 %182, i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %166, %154
  br label %189

189:                                              ; preds = %188, %130
  %190 = load i32, i32* @SHOW_TREES, align 4
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %191, 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 %195, 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 4
  %201 = load i32, i32* @CHUNK_SIZE, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 4
  %206 = load i32, i32* @CHUNK_SIZE, align 4
  %207 = icmp sge i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203, %198, %194, %189
  store i32 0, i32* %23, align 4
  br label %209

209:                                              ; preds = %208, %203
  %210 = load i32, i32* %23, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %294

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call double @simplex2(i32 %213, i32 %214, i32 6, double 5.000000e-01, i32 2)
  %216 = fcmp ogt double %215, 8.400000e-01
  br i1 %216, label %217, label %294

217:                                              ; preds = %212
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 3
  store i32 %219, i32* %24, align 4
  br label %220

220:                                              ; preds = %273, %217
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 8
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %276

225:                                              ; preds = %220
  store i32 -3, i32* %25, align 4
  br label %226

226:                                              ; preds = %269, %225
  %227 = load i32, i32* %25, align 4
  %228 = icmp sle i32 %227, 3
  br i1 %228, label %229, label %272

229:                                              ; preds = %226
  store i32 -3, i32* %26, align 4
  br label %230

230:                                              ; preds = %265, %229
  %231 = load i32, i32* %26, align 4
  %232 = icmp sle i32 %231, 3
  br i1 %232, label %233, label %268

233:                                              ; preds = %230
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %25, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* %26, align 4
  %239 = mul nsw i32 %237, %238
  %240 = add nsw i32 %236, %239
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 4
  %244 = sub nsw i32 %241, %243
  %245 = load i32, i32* %24, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, 4
  %248 = sub nsw i32 %245, %247
  %249 = mul nsw i32 %244, %248
  %250 = add nsw i32 %240, %249
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  %252 = icmp slt i32 %251, 11
  br i1 %252, label %253, label %264

253:                                              ; preds = %233
  %254 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %26, align 4
  %261 = add nsw i32 %259, %260
  %262 = load i8*, i8** %8, align 8
  %263 = call i32 %254(i32 %257, i32 %258, i32 %261, i32 15, i8* %262)
  br label %264

264:                                              ; preds = %253, %233
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %26, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %26, align 4
  br label %230

268:                                              ; preds = %230
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %25, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %25, align 4
  br label %226

272:                                              ; preds = %226
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %24, align 4
  br label %220

276:                                              ; preds = %220
  %277 = load i32, i32* %18, align 4
  store i32 %277, i32* %28, align 4
  br label %278

278:                                              ; preds = %290, %276
  %279 = load i32, i32* %28, align 4
  %280 = load i32, i32* %18, align 4
  %281 = add nsw i32 %280, 7
  %282 = icmp slt i32 %279, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %278
  %284 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %28, align 4
  %287 = load i32, i32* %14, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = call i32 %284(i32 %285, i32 %286, i32 %287, i32 5, i8* %288)
  br label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %28, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %28, align 4
  br label %278

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %293, %212, %209
  br label %295

295:                                              ; preds = %294, %127
  %296 = load i64, i64* @SHOW_CLOUDS, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %331

298:                                              ; preds = %295
  store i32 64, i32* %29, align 4
  br label %299

299:                                              ; preds = %327, %298
  %300 = load i32, i32* %29, align 4
  %301 = icmp slt i32 %300, 72
  br i1 %301, label %302, label %330

302:                                              ; preds = %299
  %303 = load i32, i32* %13, align 4
  %304 = sitofp i32 %303 to double
  %305 = fmul double %304, 1.000000e-02
  %306 = fptosi double %305 to i32
  %307 = load i32, i32* %29, align 4
  %308 = sitofp i32 %307 to double
  %309 = fmul double %308, 1.000000e-01
  %310 = fptosi double %309 to i32
  %311 = load i32, i32* %14, align 4
  %312 = sitofp i32 %311 to double
  %313 = fmul double %312, 1.000000e-02
  %314 = fptosi double %313 to i32
  %315 = call double @simplex3(i32 %306, i32 %310, i32 %314, i32 8, double 5.000000e-01, i32 2)
  %316 = fcmp ogt double %315, 7.500000e-01
  br i1 %316, label %317, label %326

317:                                              ; preds = %302
  %318 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %7, align 8
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %29, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %12, align 4
  %323 = mul nsw i32 16, %322
  %324 = load i8*, i8** %8, align 8
  %325 = call i32 %318(i32 %319, i32 %320, i32 %321, i32 %323, i8* %324)
  br label %326

326:                                              ; preds = %317, %302
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %29, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %29, align 4
  br label %299

330:                                              ; preds = %299
  br label %331

331:                                              ; preds = %330, %295
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  br label %41

335:                                              ; preds = %41
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  br label %32

339:                                              ; preds = %32
  ret void
}

declare dso_local double @simplex2(i32, i32, i32, double, i32) #1

declare dso_local double @simplex3(i32, i32, i32, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
