; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_init_tables.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32** }

@TL_RES_LEN = common dso_local global i32 0, align 4
@ENV_STEP = common dso_local global double 0.000000e+00, align 8
@tl_tab = common dso_local global i32* null, align 8
@SIN_LEN = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@sin_tab = common dso_local global i32* null, align 8
@lfo_pm_output = common dso_local global i64** null, align 8
@lfo_pm_table = common dso_local global i32* null, align 8
@dt_tab = common dso_local global i64* null, align 8
@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %121, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TL_RES_LEN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %124

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to double
  %21 = load double, double* @ENV_STEP, align 8
  %22 = fdiv double %21, 4.000000e+00
  %23 = fmul double %20, %22
  %24 = fdiv double %23, 8.000000e+00
  %25 = fptosi double %24 to i32
  %26 = call i32 @pow(i32 2, i32 %25)
  %27 = sdiv i32 65536, %26
  %28 = sitofp i32 %27 to double
  store double %28, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = call double @llvm.floor.f64(double %29)
  store double %30, double* %6, align 8
  %31 = load double, double* %6, align 8
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %17
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 2
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** @tl_tab, align 8
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 0
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32*, i32** @tl_tab, align 8
  %56 = load i32, i32* %3, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 0
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32*, i32** @tl_tab, align 8
  %64 = load i32, i32* %3, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %62, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %117, %45
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 13
  br i1 %71, label %72, label %120

72:                                               ; preds = %69
  %73 = load i32*, i32** @tl_tab, align 8
  %74 = load i32, i32* %3, align 4
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %75, 0
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %2, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32*, i32** @tl_tab, align 8
  %83 = load i32, i32* %3, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 0
  %86 = load i32, i32* %2, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load i32, i32* @TL_RES_LEN, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %82, i64 %91
  store i32 %81, i32* %92, align 4
  %93 = load i32*, i32** @tl_tab, align 8
  %94 = load i32, i32* %3, align 4
  %95 = mul nsw i32 %94, 2
  %96 = add nsw i32 %95, 0
  %97 = load i32, i32* %2, align 4
  %98 = mul nsw i32 %97, 2
  %99 = load i32, i32* @TL_RES_LEN, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %96, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %93, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 0, %104
  %106 = load i32*, i32** @tl_tab, align 8
  %107 = load i32, i32* %3, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %2, align 4
  %111 = mul nsw i32 %110, 2
  %112 = load i32, i32* @TL_RES_LEN, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %109, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %106, i64 %115
  store i32 %105, i32* %116, align 4
  br label %117

117:                                              ; preds = %72
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %69

120:                                              ; preds = %69
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %13

124:                                              ; preds = %13
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %188, %124
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @SIN_LEN, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %191

129:                                              ; preds = %125
  %130 = load i32, i32* %2, align 4
  %131 = mul nsw i32 %130, 2
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* @M_PI, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* @SIN_LEN, align 4
  %136 = sdiv i32 %134, %135
  %137 = call double @sin(i32 %136)
  store double %137, double* %6, align 8
  %138 = load double, double* %6, align 8
  %139 = fcmp ogt double %138, 0.000000e+00
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load double, double* %6, align 8
  %142 = fdiv double 1.000000e+00, %141
  %143 = fptosi double %142 to i32
  %144 = call i32 @log(i32 %143)
  %145 = mul nsw i32 8, %144
  %146 = call i32 @log(i32 2)
  %147 = sdiv i32 %145, %146
  %148 = sitofp i32 %147 to double
  store double %148, double* %5, align 8
  br label %158

149:                                              ; preds = %129
  %150 = load double, double* %6, align 8
  %151 = fdiv double -1.000000e+00, %150
  %152 = fptosi double %151 to i32
  %153 = call i32 @log(i32 %152)
  %154 = mul nsw i32 8, %153
  %155 = call i32 @log(i32 2)
  %156 = sdiv i32 %154, %155
  %157 = sitofp i32 %156 to double
  store double %157, double* %5, align 8
  br label %158

158:                                              ; preds = %149, %140
  %159 = load double, double* %5, align 8
  %160 = load double, double* @ENV_STEP, align 8
  %161 = fdiv double %160, 4.000000e+00
  %162 = fdiv double %159, %161
  store double %162, double* %5, align 8
  %163 = load double, double* %5, align 8
  %164 = fmul double 2.000000e+00, %163
  %165 = fptosi double %164 to i32
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %158
  %170 = load i32, i32* %4, align 4
  %171 = ashr i32 %170, 1
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %176

173:                                              ; preds = %158
  %174 = load i32, i32* %4, align 4
  %175 = ashr i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i32, i32* %4, align 4
  %178 = mul nsw i32 %177, 2
  %179 = load double, double* %6, align 8
  %180 = fcmp oge double %179, 0.000000e+00
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 0, i32 1
  %183 = add nsw i32 %178, %182
  %184 = load i32*, i32** @sin_tab, align 8
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %2, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %2, align 4
  br label %125

191:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %301, %191
  %193 = load i32, i32* %2, align 4
  %194 = icmp slt i32 %193, 8
  br i1 %194, label %195, label %304

195:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %297, %195
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 128
  br i1 %198, label %199, label %300

199:                                              ; preds = %196
  %200 = load i32, i32* %2, align 4
  store i32 %200, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %293, %199
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %296

204:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %205

205:                                              ; preds = %233, %204
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 7
  br i1 %207, label %208, label %236

208:                                              ; preds = %205
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %12, align 4
  %211 = shl i32 1, %210
  %212 = and i32 %209, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %208
  %215 = load i32, i32* %12, align 4
  %216 = mul nsw i32 %215, 8
  store i32 %216, i32* %11, align 4
  %217 = load i64**, i64*** @lfo_pm_output, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64*, i64** %217, i64 %221
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %214, %208
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %205

236:                                              ; preds = %205
  %237 = load i32, i32* %8, align 4
  %238 = load i32*, i32** @lfo_pm_table, align 8
  %239 = load i32, i32* %7, align 4
  %240 = mul nsw i32 %239, 32
  %241 = mul nsw i32 %240, 8
  %242 = load i32, i32* %2, align 4
  %243 = mul nsw i32 %242, 32
  %244 = add nsw i32 %241, %243
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %244, %245
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %238, i64 %248
  store i32 %237, i32* %249, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32*, i32** @lfo_pm_table, align 8
  %252 = load i32, i32* %7, align 4
  %253 = mul nsw i32 %252, 32
  %254 = mul nsw i32 %253, 8
  %255 = load i32, i32* %2, align 4
  %256 = mul nsw i32 %255, 32
  %257 = add nsw i32 %254, %256
  %258 = load i32, i32* %9, align 4
  %259 = xor i32 %258, 7
  %260 = add nsw i32 %257, %259
  %261 = add nsw i32 %260, 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %251, i64 %262
  store i32 %250, i32* %263, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sub nsw i32 0, %264
  %266 = load i32*, i32** @lfo_pm_table, align 8
  %267 = load i32, i32* %7, align 4
  %268 = mul nsw i32 %267, 32
  %269 = mul nsw i32 %268, 8
  %270 = load i32, i32* %2, align 4
  %271 = mul nsw i32 %270, 32
  %272 = add nsw i32 %269, %271
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %272, %273
  %275 = add nsw i32 %274, 16
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %266, i64 %276
  store i32 %265, i32* %277, align 4
  %278 = load i32, i32* %8, align 4
  %279 = sub nsw i32 0, %278
  %280 = load i32*, i32** @lfo_pm_table, align 8
  %281 = load i32, i32* %7, align 4
  %282 = mul nsw i32 %281, 32
  %283 = mul nsw i32 %282, 8
  %284 = load i32, i32* %2, align 4
  %285 = mul nsw i32 %284, 32
  %286 = add nsw i32 %283, %285
  %287 = load i32, i32* %9, align 4
  %288 = xor i32 %287, 7
  %289 = add nsw i32 %286, %288
  %290 = add nsw i32 %289, 24
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %280, i64 %291
  store i32 %279, i32* %292, align 4
  br label %293

293:                                              ; preds = %236
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %201

296:                                              ; preds = %201
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %7, align 4
  br label %196

300:                                              ; preds = %196
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %2, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %2, align 4
  br label %192

304:                                              ; preds = %192
  store i32 0, i32* %1, align 4
  br label %305

305:                                              ; preds = %353, %304
  %306 = load i32, i32* %1, align 4
  %307 = icmp sle i32 %306, 3
  br i1 %307, label %308, label %356

308:                                              ; preds = %305
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %349, %308
  %310 = load i32, i32* %2, align 4
  %311 = icmp sle i32 %310, 31
  br i1 %311, label %312, label %352

312:                                              ; preds = %309
  %313 = load i64*, i64** @dt_tab, align 8
  %314 = load i32, i32* %1, align 4
  %315 = mul nsw i32 %314, 32
  %316 = load i32, i32* %2, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %313, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 8
  %323 = load i32, i32* %1, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %2, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %321, i32* %329, align 4
  %330 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 8
  %331 = load i32, i32* %1, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %2, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 0, %338
  %340 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 8
  %341 = load i32, i32* %1, align 4
  %342 = add nsw i32 %341, 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32*, i32** %340, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %2, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 %339, i32* %348, align 4
  br label %349

349:                                              ; preds = %312
  %350 = load i32, i32* %2, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %2, align 4
  br label %309

352:                                              ; preds = %309
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %1, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %1, align 4
  br label %305

356:                                              ; preds = %305
  ret void
}

declare dso_local i32 @pow(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local double @sin(i32) #1

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
