; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr.c_sbr_dequant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr.c_sbr_dequant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64*, i32**, float**, i32, i32**, float**, i64 }

@sbr_dequant.exp2_tab = internal constant [2 x double] [double 1.000000e+00, double 1.280000e+02], align 16
@TYPE_CPE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"envelope scalefactor overflow in dequant\0A\00", align 1
@NOISE_FLOOR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @sbr_dequant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_dequant(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TYPE_CPE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %333

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %333

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 12, i32 24
  store i32 %32, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %229, %23
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %34, %40
  br i1 %41, label %42, label %232

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %225, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %47, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %44, %59
  br i1 %60, label %61, label %228

61:                                               ; preds = %43
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 7
  %85 = call double @ff_exp2fi(i32 %84)
  %86 = fptrunc double %85 to float
  store float %86, float* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %87, %101
  %103 = call double @ff_exp2fi(i32 %102)
  %104 = fptrunc double %103 to float
  store float %104, float* %10, align 4
  br label %183

105:                                              ; preds = %61
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 1
  %121 = add nsw i32 %120, 7
  %122 = call double @ff_exp2fi(i32 %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x double], [2 x double]* @sbr_dequant.exp2_tab, i64 0, i64 %138
  %140 = load double, double* %139, align 8
  %141 = fmul double %122, %140
  %142 = fptrunc double %141 to float
  store float %142, float* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %143, %157
  %159 = ashr i32 %158, 1
  %160 = call double @ff_exp2fi(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %161, %175
  %177 = and i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x double], [2 x double]* @sbr_dequant.exp2_tab, i64 0, i64 %178
  %180 = load double, double* %179, align 8
  %181 = fmul double %160, %180
  %182 = fptrunc double %181 to float
  store float %182, float* %10, align 4
  br label %183

183:                                              ; preds = %105, %69
  %184 = load float, float* %9, align 4
  %185 = fpext float %184 to double
  %186 = fcmp ogt double %185, 1.000000e+20
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = call i32 @av_log(i32* null, i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store float 1.000000e+00, float* %9, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = load float, float* %9, align 4
  %192 = load float, float* %10, align 4
  %193 = fadd float 1.000000e+00, %192
  %194 = fdiv float %191, %193
  store float %194, float* %11, align 4
  %195 = load float, float* %11, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load float**, float*** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float*, float** %201, i64 %203
  %205 = load float*, float** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %195, float* %208, align 4
  %209 = load float, float* %11, align 4
  %210 = load float, float* %10, align 4
  %211 = fmul float %209, %210
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load float**, float*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float*, float** %217, i64 %219
  %221 = load float*, float** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  store float %211, float* %224, align 4
  br label %225

225:                                              ; preds = %190
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %43

228:                                              ; preds = %43
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %33

232:                                              ; preds = %33
  store i32 1, i32* %6, align 4
  br label %233

233:                                              ; preds = %329, %232
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp sle i32 %234, %240
  br i1 %241, label %242, label %332

242:                                              ; preds = %233
  store i32 0, i32* %5, align 4
  br label %243

243:                                              ; preds = %325, %242
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %328

249:                                              ; preds = %243
  %250 = load i32, i32* @NOISE_FLOOR_OFFSET, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 5
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %250, %264
  %266 = add nsw i32 %265, 1
  %267 = call double @ff_exp2fi(i32 %266)
  %268 = fptrunc double %267 to float
  store float %268, float* %12, align 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 5
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 12, %282
  %284 = call double @ff_exp2fi(i32 %283)
  %285 = fptrunc double %284 to float
  store float %285, float* %13, align 4
  %286 = load float, float* %12, align 4
  %287 = fpext float %286 to double
  %288 = fcmp ole double %287, 1.000000e+20
  %289 = zext i1 %288 to i32
  %290 = call i32 @av_assert0(i32 %289)
  %291 = load float, float* %12, align 4
  %292 = load float, float* %13, align 4
  %293 = fadd float 1.000000e+00, %292
  %294 = fdiv float %291, %293
  store float %294, float* %14, align 4
  %295 = load float, float* %14, align 4
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 6
  %301 = load float**, float*** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float*, float** %301, i64 %303
  %305 = load float*, float** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  store float %295, float* %308, align 4
  %309 = load float, float* %14, align 4
  %310 = load float, float* %13, align 4
  %311 = fmul float %309, %310
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 1
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 6
  %317 = load float**, float*** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float*, float** %317, i64 %319
  %321 = load float*, float** %320, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %321, i64 %323
  store float %311, float* %324, align 4
  br label %325

325:                                              ; preds = %249
  %326 = load i32, i32* %5, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %5, align 4
  br label %243

328:                                              ; preds = %243
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %6, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %6, align 4
  br label %233

332:                                              ; preds = %233
  br label %589

333:                                              ; preds = %18, %2
  store i32 0, i32* %7, align 4
  br label %334

334:                                              ; preds = %585, %333
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* @TYPE_CPE, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = add nsw i32 %339, 1
  %341 = icmp slt i32 %335, %340
  br i1 %341, label %342, label %588

342:                                              ; preds = %334
  store i32 1, i32* %6, align 4
  br label %343

343:                                              ; preds = %519, %342
  %344 = load i32, i32* %6, align 4
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp sle i32 %344, %352
  br i1 %353, label %354, label %522

354:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %355

355:                                              ; preds = %515, %354
  %356 = load i32, i32* %5, align 4
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds i32, i32* %359, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp slt i32 %356, %373
  br i1 %374, label %375, label %518

375:                                              ; preds = %355
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 7
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %420

385:                                              ; preds = %375
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 2
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %387, align 8
  %389 = load i32, i32* %7, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 2
  %393 = load i32**, i32*** %392, align 8
  %394 = load i32, i32* %6, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32*, i32** %393, i64 %395
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 6
  %403 = call double @ff_exp2fi(i32 %402)
  %404 = fptrunc double %403 to float
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 2
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %406, align 8
  %408 = load i32, i32* %7, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 3
  %412 = load float**, float*** %411, align 8
  %413 = load i32, i32* %6, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds float*, float** %412, i64 %414
  %416 = load float*, float** %415, align 8
  %417 = load i32, i32* %5, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds float, float* %416, i64 %418
  store float %404, float* %419, align 4
  br label %477

420:                                              ; preds = %375
  %421 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %422, align 8
  %424 = load i32, i32* %7, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 2
  %428 = load i32**, i32*** %427, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32*, i32** %428, i64 %430
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %5, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = ashr i32 %436, 1
  %438 = add nsw i32 %437, 6
  %439 = call double @ff_exp2fi(i32 %438)
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 2
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %441, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 2
  %447 = load i32**, i32*** %446, align 8
  %448 = load i32, i32* %6, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32*, i32** %447, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %5, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [2 x double], [2 x double]* @sbr_dequant.exp2_tab, i64 0, i64 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %439, %459
  %461 = fptrunc double %460 to float
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 2
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %463, align 8
  %465 = load i32, i32* %7, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 3
  %469 = load float**, float*** %468, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float*, float** %469, i64 %471
  %473 = load float*, float** %472, align 8
  %474 = load i32, i32* %5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds float, float* %473, i64 %475
  store float %461, float* %476, align 4
  br label %477

477:                                              ; preds = %420, %385
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %479, align 8
  %481 = load i32, i32* %7, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 3
  %485 = load float**, float*** %484, align 8
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float*, float** %485, i64 %487
  %489 = load float*, float** %488, align 8
  %490 = load i32, i32* %5, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = fpext float %493 to double
  %495 = fcmp ogt double %494, 1.000000e+20
  br i1 %495, label %496, label %514

496:                                              ; preds = %477
  %497 = load i32, i32* @AV_LOG_ERROR, align 4
  %498 = call i32 @av_log(i32* null, i32 %497, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %499 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %499, i32 0, i32 2
  %501 = load %struct.TYPE_4__*, %struct.TYPE_4__** %500, align 8
  %502 = load i32, i32* %7, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 3
  %506 = load float**, float*** %505, align 8
  %507 = load i32, i32* %6, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float*, float** %506, i64 %508
  %510 = load float*, float** %509, align 8
  %511 = load i32, i32* %5, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %510, i64 %512
  store float 1.000000e+00, float* %513, align 4
  br label %514

514:                                              ; preds = %496, %477
  br label %515

515:                                              ; preds = %514
  %516 = load i32, i32* %5, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %5, align 4
  br label %355

518:                                              ; preds = %355
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %6, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %6, align 4
  br label %343

522:                                              ; preds = %343
  store i32 1, i32* %6, align 4
  br label %523

523:                                              ; preds = %581, %522
  %524 = load i32, i32* %6, align 4
  %525 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %526, align 8
  %528 = load i32, i32* %7, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %530, i32 0, i32 4
  %532 = load i32, i32* %531, align 8
  %533 = icmp sle i32 %524, %532
  br i1 %533, label %534, label %584

534:                                              ; preds = %523
  store i32 0, i32* %5, align 4
  br label %535

535:                                              ; preds = %577, %534
  %536 = load i32, i32* %5, align 4
  %537 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = icmp slt i32 %536, %539
  br i1 %540, label %541, label %580

541:                                              ; preds = %535
  %542 = load i32, i32* @NOISE_FLOOR_OFFSET, align 4
  %543 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 2
  %545 = load %struct.TYPE_4__*, %struct.TYPE_4__** %544, align 8
  %546 = load i32, i32* %7, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i32 0, i32 5
  %550 = load i32**, i32*** %549, align 8
  %551 = load i32, i32* %6, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32*, i32** %550, i64 %552
  %554 = load i32*, i32** %553, align 8
  %555 = load i32, i32* %5, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = sub nsw i32 %542, %558
  %560 = call double @ff_exp2fi(i32 %559)
  %561 = fptrunc double %560 to float
  %562 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %562, i32 0, i32 2
  %564 = load %struct.TYPE_4__*, %struct.TYPE_4__** %563, align 8
  %565 = load i32, i32* %7, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 6
  %569 = load float**, float*** %568, align 8
  %570 = load i32, i32* %6, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds float*, float** %569, i64 %571
  %573 = load float*, float** %572, align 8
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds float, float* %573, i64 %575
  store float %561, float* %576, align 4
  br label %577

577:                                              ; preds = %541
  %578 = load i32, i32* %5, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %5, align 4
  br label %535

580:                                              ; preds = %535
  br label %581

581:                                              ; preds = %580
  %582 = load i32, i32* %6, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %6, align 4
  br label %523

584:                                              ; preds = %523
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %7, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %7, align 4
  br label %334

588:                                              ; preds = %334
  br label %589

589:                                              ; preds = %588, %332
  ret void
}

declare dso_local double @ff_exp2fi(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
