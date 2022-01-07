; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_lfg.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_lfg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"final value:%X\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to allocate memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PRN%d : %f\0APRN%d : %f\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"error: out of bounds! tried to accessZ_TABLE[%d][%d]\0A\00", align 1
@Z_TABLE = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [127 x i8] c"sample mean  : %f\0Atrue mean    : %f\0Asample stddev: %f\0Atrue stddev  : %f\0Az-score      : %f\0Ap-value      : %f\0AQH[normality]: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double*, align 8
  %15 = alloca [2 x double], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %22 = call i32 @av_lfg_init(i32* %5, i32 -559038737)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %40, %0
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 10000
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 624
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = call i64 @av_lfg_get(i32* %5)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %27

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %45)
  store double 1.000000e+03, double* %6, align 8
  store double 5.300000e+01, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double -1.000000e+00, double* %12, align 8
  store double 1.000000e+03, double* %13, align 8
  %47 = load double, double* %13, align 8
  %48 = call double* @av_malloc_array(double %47, i32 8)
  store double* %48, double** %14, align 8
  %49 = load double*, double** %14, align 8
  %50 = icmp ne double* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %313

54:                                               ; preds = %43
  %55 = call i32 @av_lfg_init(i32* %5, i32 42)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %143, %54
  %57 = load i32, i32* %3, align 4
  %58 = sitofp i32 %57 to double
  %59 = load double, double* %13, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %61, label %146

61:                                               ; preds = %56
  %62 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 0
  %63 = call i32 @av_bmg_get(i32* %5, double* %62)
  %64 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 0
  %65 = load double, double* %64, align 16
  %66 = load double, double* %7, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* %6, align 8
  %69 = fadd double %67, %68
  %70 = load double*, double** %14, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  store double %69, double* %73, align 8
  %74 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 1
  %75 = load double, double* %74, align 8
  %76 = load double, double* %7, align 8
  %77 = fmul double %75, %76
  %78 = load double, double* %6, align 8
  %79 = fadd double %77, %78
  %80 = load double*, double** %14, align 8
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %80, i64 %83
  store double %79, double* %84, align 8
  %85 = load double*, double** %14, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %14, align 8
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %90, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fadd double %89, %95
  %97 = load double, double* %8, align 8
  %98 = fadd double %97, %96
  store double %98, double* %8, align 8
  %99 = load double*, double** %14, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  %104 = load double*, double** %14, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fmul double %103, %108
  %110 = load double*, double** %14, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %110, i64 %113
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %14, align 8
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %116, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fmul double %115, %121
  %123 = fadd double %109, %122
  %124 = load double, double* %9, align 8
  %125 = fadd double %124, %123
  store double %125, double* %9, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sitofp i32 %126 to double
  %128 = load double*, double** %14, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %128, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  %135 = sitofp i32 %134 to double
  %136 = load double*, double** %14, align 8
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %136, i64 %139
  %141 = load double, double* %140, align 8
  %142 = call i32 (i8*, double, double, double, double, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), double %127, double %132, double %135, double %141)
  br label %143

143:                                              ; preds = %61
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %3, align 4
  br label %56

146:                                              ; preds = %56
  %147 = load double, double* %13, align 8
  %148 = load double, double* %8, align 8
  %149 = fdiv double %148, %147
  store double %149, double* %8, align 8
  %150 = load double, double* %13, align 8
  %151 = fsub double %150, 1.000000e+00
  %152 = load double, double* %9, align 8
  %153 = fdiv double %152, %151
  store double %153, double* %9, align 8
  %154 = load double, double* %13, align 8
  %155 = fmul double %154, 1.000000e+00
  %156 = load double, double* %13, align 8
  %157 = fsub double %156, 1.000000e+00
  %158 = fdiv double %155, %157
  %159 = load double, double* %8, align 8
  %160 = fmul double %158, %159
  %161 = load double, double* %8, align 8
  %162 = fmul double %160, %161
  %163 = load double, double* %9, align 8
  %164 = fsub double %163, %162
  store double %164, double* %9, align 8
  %165 = load double, double* %9, align 8
  %166 = call double @sqrt(double %165) #3
  store double %166, double* %9, align 8
  %167 = load double, double* %6, align 8
  %168 = load double, double* %8, align 8
  %169 = fsub double %167, %168
  %170 = load double, double* %7, align 8
  %171 = load double, double* %13, align 8
  %172 = call double @sqrt(double %171) #3
  %173 = fdiv double %170, %172
  %174 = fdiv double %169, %173
  store double %174, double* %11, align 8
  store i32 0, i32* %20, align 4
  %175 = load double, double* %11, align 8
  %176 = fcmp olt double %175, 0.000000e+00
  br i1 %176, label %177, label %184

177:                                              ; preds = %146
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %20, align 4
  %182 = load double, double* %11, align 8
  %183 = fmul double %182, -1.000000e+00
  store double %183, double* %11, align 8
  br label %184

184:                                              ; preds = %177, %146
  %185 = load double, double* %11, align 8
  %186 = fmul double %185, 1.000000e+02
  %187 = fptosi double %186 to i32
  store i32 %187, i32* %18, align 4
  %188 = load double, double* %11, align 8
  %189 = fptosi double %188 to i32
  %190 = mul nsw i32 %189, 100
  store i32 %190, i32* %19, align 4
  %191 = load double, double* %11, align 8
  %192 = fmul double %191, 1.000000e+01
  %193 = fptosi double %192 to i32
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %19, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %184
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %19, align 4
  %199 = srem i32 %197, %198
  br label %202

200:                                              ; preds = %184
  %201 = load i32, i32* %18, align 4
  br label %202

202:                                              ; preds = %200, %196
  %203 = phi i32 [ %199, %196 ], [ %201, %200 ]
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %17, align 4
  %205 = srem i32 %204, 10
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp sgt i32 %206, 30
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* %17, align 4
  %210 = icmp sgt i32 %209, 9
  br i1 %210, label %211, label %216

211:                                              ; preds = %208, %202
  %212 = load i32, i32* @AV_LOG_INFO, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %212, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32 %214)
  br label %243

216:                                              ; preds = %208
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load i32**, i32*** @Z_TABLE, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 1, %228
  br label %240

230:                                              ; preds = %216
  %231 = load i32**, i32*** @Z_TABLE, align 8
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  br label %240

240:                                              ; preds = %230, %219
  %241 = phi i32 [ %229, %219 ], [ %239, %230 ]
  %242 = sitofp i32 %241 to double
  store double %242, double* %12, align 8
  br label %243

243:                                              ; preds = %240, %211
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %293, %243
  %245 = load i32, i32* %3, align 4
  %246 = sitofp i32 %245 to double
  %247 = load double, double* %13, align 8
  %248 = fcmp olt double %246, %247
  br i1 %248, label %249, label %296

249:                                              ; preds = %244
  %250 = load i32, i32* %3, align 4
  %251 = sitofp i32 %250 to double
  %252 = load double, double* %13, align 8
  %253 = fsub double %252, 1.000000e+00
  %254 = fcmp olt double %251, %253
  br i1 %254, label %255, label %292

255:                                              ; preds = %249
  %256 = load i32, i32* %3, align 4
  %257 = sitofp i32 %256 to double
  %258 = fadd double %257, 2.000000e+00
  %259 = fsub double %258, 3.750000e-01
  %260 = load double, double* %13, align 8
  %261 = fadd double %260, 2.500000e-01
  %262 = fdiv double %259, %261
  %263 = fptosi double %262 to i32
  %264 = call double @inv_cdf(i32 %263)
  store double %264, double* %21, align 8
  %265 = load i32, i32* %3, align 4
  %266 = sitofp i32 %265 to double
  %267 = fadd double %266, 1.000000e+00
  %268 = fsub double %267, 3.750000e-01
  %269 = load double, double* %13, align 8
  %270 = fadd double %269, 2.500000e-01
  %271 = fdiv double %268, %270
  %272 = fptosi double %271 to i32
  %273 = call double @inv_cdf(i32 %272)
  %274 = load double, double* %21, align 8
  %275 = fsub double %274, %273
  store double %275, double* %21, align 8
  %276 = load double*, double** %14, align 8
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds double, double* %276, i64 %279
  %281 = load double, double* %280, align 8
  %282 = load double*, double** %14, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %282, i64 %284
  %286 = load double, double* %285, align 8
  %287 = fsub double %281, %286
  %288 = load double, double* %21, align 8
  %289 = fdiv double %287, %288
  %290 = load double, double* %10, align 8
  %291 = fadd double %290, %289
  store double %291, double* %10, align 8
  br label %292

292:                                              ; preds = %255, %249
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %3, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %3, align 4
  br label %244

296:                                              ; preds = %244
  %297 = load double, double* %10, align 8
  %298 = load double, double* %13, align 8
  %299 = fsub double %298, 1.000000e+00
  %300 = load double, double* %9, align 8
  %301 = fmul double %299, %300
  %302 = fdiv double %297, %301
  %303 = fsub double 1.000000e+00, %302
  store double %303, double* %10, align 8
  %304 = load double, double* %8, align 8
  %305 = load double, double* %6, align 8
  %306 = load double, double* %9, align 8
  %307 = load double, double* %7, align 8
  %308 = load double, double* %11, align 8
  %309 = load double, double* %12, align 8
  %310 = load double, double* %10, align 8
  %311 = call i32 (i8*, double, double, double, double, ...) @printf(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.4, i64 0, i64 0), double %304, double %305, double %306, double %307, double %308, double %309, double %310)
  %312 = call i32 @av_freep(double** %14)
  store i32 0, i32* %1, align 4
  br label %313

313:                                              ; preds = %296, %51
  %314 = load i32, i32* %1, align 4
  ret i32 %314
}

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i64 @av_lfg_get(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local double* @av_malloc_array(double, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @av_bmg_get(i32*, double*) #1

declare dso_local i32 @printf(i8*, double, double, double, double, ...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local double @inv_cdf(i32) #1

declare dso_local i32 @av_freep(double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
