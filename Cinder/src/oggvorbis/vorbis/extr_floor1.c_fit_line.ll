; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_fit_line.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_fit_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, double, double, double, double, double, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, %struct.TYPE_5__*)* @fit_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fit_line(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %19, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %177, %5
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %180

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %46, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = sdiv i32 %57, %64
  %66 = sitofp i32 %65 to double
  %67 = fadd double %66, 1.000000e+00
  store double %67, double* %21, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 13
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load double, double* %79, align 8
  %81 = load double, double* %21, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %74, %82
  %84 = load double, double* %12, align 8
  %85 = fadd double %84, %83
  store double %85, double* %12, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load double, double* %97, align 8
  %99 = load double, double* %21, align 8
  %100 = fmul double %98, %99
  %101 = fadd double %92, %100
  %102 = load double, double* %13, align 8
  %103 = fadd double %102, %101
  store double %103, double* %13, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 11
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to double
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  %116 = load double, double* %115, align 8
  %117 = load double, double* %21, align 8
  %118 = fmul double %116, %117
  %119 = fadd double %110, %118
  %120 = load double, double* %14, align 8
  %121 = fadd double %120, %119
  store double %121, double* %14, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 10
  %127 = load i64, i64* %126, align 8
  %128 = sitofp i64 %127 to double
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 7
  %134 = load double, double* %133, align 8
  %135 = load double, double* %21, align 8
  %136 = fmul double %134, %135
  %137 = fadd double %128, %136
  %138 = load double, double* %15, align 8
  %139 = fadd double %138, %137
  store double %139, double* %15, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to double
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 8
  %152 = load double, double* %151, align 8
  %153 = load double, double* %21, align 8
  %154 = fmul double %152, %153
  %155 = fadd double %146, %154
  %156 = load double, double* %16, align 8
  %157 = fadd double %156, %155
  store double %157, double* %16, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sitofp i32 %163 to double
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sitofp i32 %170 to double
  %172 = load double, double* %21, align 8
  %173 = fmul double %171, %172
  %174 = fadd double %164, %173
  %175 = load double, double* %17, align 8
  %176 = fadd double %175, %174
  store double %176, double* %17, align 8
  br label %177

177:                                              ; preds = %40
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %36

180:                                              ; preds = %36
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %180
  %185 = load i32, i32* %19, align 4
  %186 = sitofp i32 %185 to double
  %187 = load double, double* %12, align 8
  %188 = fadd double %187, %186
  store double %188, double* %12, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %189, align 4
  %191 = sitofp i32 %190 to double
  %192 = load double, double* %13, align 8
  %193 = fadd double %192, %191
  store double %193, double* %13, align 8
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sitofp i32 %196 to double
  %198 = load double, double* %14, align 8
  %199 = fadd double %198, %197
  store double %199, double* %14, align 8
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %201, %203
  %205 = sitofp i32 %204 to double
  %206 = load double, double* %15, align 8
  %207 = fadd double %206, %205
  store double %207, double* %15, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %19, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sitofp i32 %211 to double
  %213 = load double, double* %16, align 8
  %214 = fadd double %213, %212
  store double %214, double* %16, align 8
  %215 = load double, double* %17, align 8
  %216 = fadd double %215, 1.000000e+00
  store double %216, double* %17, align 8
  br label %217

217:                                              ; preds = %184, %180
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %254

221:                                              ; preds = %217
  %222 = load i32, i32* %20, align 4
  %223 = sitofp i32 %222 to double
  %224 = load double, double* %12, align 8
  %225 = fadd double %224, %223
  store double %225, double* %12, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sitofp i32 %227 to double
  %229 = load double, double* %13, align 8
  %230 = fadd double %229, %228
  store double %230, double* %13, align 8
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sitofp i32 %233 to double
  %235 = load double, double* %14, align 8
  %236 = fadd double %235, %234
  store double %236, double* %14, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %238, %240
  %242 = sitofp i32 %241 to double
  %243 = load double, double* %15, align 8
  %244 = fadd double %243, %242
  store double %244, double* %15, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %20, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sitofp i32 %248 to double
  %250 = load double, double* %16, align 8
  %251 = fadd double %250, %249
  store double %251, double* %16, align 8
  %252 = load double, double* %17, align 8
  %253 = fadd double %252, 1.000000e+00
  store double %253, double* %17, align 8
  br label %254

254:                                              ; preds = %221, %217
  %255 = load double, double* %17, align 8
  %256 = load double, double* %14, align 8
  %257 = fmul double %255, %256
  %258 = load double, double* %12, align 8
  %259 = load double, double* %12, align 8
  %260 = fmul double %258, %259
  %261 = fsub double %257, %260
  store double %261, double* %22, align 8
  %262 = load double, double* %22, align 8
  %263 = fcmp ogt double %262, 0.000000e+00
  br i1 %263, label %264, label %323

264:                                              ; preds = %254
  %265 = load double, double* %13, align 8
  %266 = load double, double* %14, align 8
  %267 = fmul double %265, %266
  %268 = load double, double* %16, align 8
  %269 = load double, double* %12, align 8
  %270 = fmul double %268, %269
  %271 = fsub double %267, %270
  %272 = load double, double* %22, align 8
  %273 = fdiv double %271, %272
  store double %273, double* %23, align 8
  %274 = load double, double* %17, align 8
  %275 = load double, double* %16, align 8
  %276 = fmul double %274, %275
  %277 = load double, double* %12, align 8
  %278 = load double, double* %13, align 8
  %279 = fmul double %277, %278
  %280 = fsub double %276, %279
  %281 = load double, double* %22, align 8
  %282 = fdiv double %280, %281
  store double %282, double* %24, align 8
  %283 = load double, double* %23, align 8
  %284 = load double, double* %24, align 8
  %285 = load i32, i32* %19, align 4
  %286 = sitofp i32 %285 to double
  %287 = fmul double %284, %286
  %288 = fadd double %283, %287
  %289 = call i32 @rint(double %288)
  %290 = load i32*, i32** %9, align 8
  store i32 %289, i32* %290, align 4
  %291 = load double, double* %23, align 8
  %292 = load double, double* %24, align 8
  %293 = load i32, i32* %20, align 4
  %294 = sitofp i32 %293 to double
  %295 = fmul double %292, %294
  %296 = fadd double %291, %295
  %297 = call i32 @rint(double %296)
  %298 = load i32*, i32** %10, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32*, i32** %9, align 8
  %300 = load i32, i32* %299, align 4
  %301 = icmp sgt i32 %300, 1023
  br i1 %301, label %302, label %304

302:                                              ; preds = %264
  %303 = load i32*, i32** %9, align 8
  store i32 1023, i32* %303, align 4
  br label %304

304:                                              ; preds = %302, %264
  %305 = load i32*, i32** %10, align 8
  %306 = load i32, i32* %305, align 4
  %307 = icmp sgt i32 %306, 1023
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = load i32*, i32** %10, align 8
  store i32 1023, i32* %309, align 4
  br label %310

310:                                              ; preds = %308, %304
  %311 = load i32*, i32** %9, align 8
  %312 = load i32, i32* %311, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = load i32*, i32** %9, align 8
  store i32 0, i32* %315, align 4
  br label %316

316:                                              ; preds = %314, %310
  %317 = load i32*, i32** %10, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = load i32*, i32** %10, align 8
  store i32 0, i32* %321, align 4
  br label %322

322:                                              ; preds = %320, %316
  store i32 0, i32* %6, align 4
  br label %326

323:                                              ; preds = %254
  %324 = load i32*, i32** %9, align 8
  store i32 0, i32* %324, align 4
  %325 = load i32*, i32** %10, align 8
  store i32 0, i32* %325, align 4
  store i32 1, i32* %6, align 4
  br label %326

326:                                              ; preds = %323, %322
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i32 @rint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
