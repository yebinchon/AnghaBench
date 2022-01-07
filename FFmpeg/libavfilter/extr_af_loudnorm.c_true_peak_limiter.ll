; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_true_peak_limiter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_true_peak_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double*, double, i32, i64, double*, i32, i32, i32, i32, i32, i32, i32 }

@FIRST_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, double*, i32, i32)* @true_peak_limiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @true_peak_limiter(%struct.TYPE_4__* %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  store double* %25, double** %16, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  store double %28, double* %14, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FIRST_FRAME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %131

37:                                               ; preds = %4
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %74, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 1920
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load double*, double** %16, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = call double @llvm.fabs.f64(double %51)
  %53 = load double, double* %17, align 8
  %54 = fcmp ogt double %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load double*, double** %16, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  br label %64

62:                                               ; preds = %46
  %63 = load double, double* %17, align 8
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi double [ %61, %55 ], [ %63, %62 ]
  store double %65, double* %17, align 8
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load i32, i32* %8, align 4
  %71 = load double*, double** %16, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds double, double* %71, i64 %72
  store double* %73, double** %16, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %38

77:                                               ; preds = %38
  %78 = load double, double* %17, align 8
  %79 = load double, double* %14, align 8
  %80 = fcmp ogt double %78, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %77
  %82 = load double, double* %14, align 8
  %83 = load double, double* %17, align 8
  %84 = fdiv double %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load double*, double** %86, align 8
  %88 = getelementptr inbounds double, double* %87, i64 1
  store double %84, double* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  store i32 128, i32* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load double*, double** %92, align 8
  store double* %93, double** %16, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %123, %81
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 1920
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load double*, double** %104, align 8
  %106 = getelementptr inbounds double, double* %105, i64 1
  %107 = load double, double* %106, align 8
  store double %107, double* %18, align 8
  %108 = load double, double* %18, align 8
  %109 = load double*, double** %16, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fmul double %113, %108
  store double %114, double* %112, align 8
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %98

118:                                              ; preds = %98
  %119 = load i32, i32* %8, align 4
  %120 = load double*, double** %16, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds double, double* %120, i64 %121
  store double* %122, double** %16, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %94

126:                                              ; preds = %94
  br label %127

127:                                              ; preds = %126, %77
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load double*, double** %129, align 8
  store double* %130, double** %16, align 8
  br label %131

131:                                              ; preds = %127, %4
  br label %132

132:                                              ; preds = %575, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %574 [
    i32 130, label %136
    i32 131, label %221
    i32 128, label %328
    i32 129, label %469
  ]

136:                                              ; preds = %132
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @detect_peak(%struct.TYPE_4__* %137, i32 %138, i32 %141, i32 %142, i32* %12, double* %15)
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %218

146:                                              ; preds = %136
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %13, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load double*, double** %157, align 8
  %159 = getelementptr inbounds double, double* %158, i64 0
  store double 1.000000e+00, double* %159, align 8
  %160 = load double, double* %14, align 8
  %161 = load double, double* %15, align 8
  %162 = fdiv double %160, %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load double*, double** %164, align 8
  %166 = getelementptr inbounds double, double* %165, i64 1
  store double %162, double* %166, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  store i32 131, i32* %168, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sub nsw i32 %171, %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %146
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %184, %146
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %8, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %204, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %192
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %209, %192
  br label %220

218:                                              ; preds = %136
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %218, %217
  br label %574

221:                                              ; preds = %132
  br label %222

222:                                              ; preds = %311, %221
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %316

230:                                              ; preds = %222
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %275, %230
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %278

235:                                              ; preds = %231
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 4
  %238 = load double*, double** %237, align 8
  %239 = getelementptr inbounds double, double* %238, i64 0
  %240 = load double, double* %239, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = sitofp i32 %243 to double
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 1
  %249 = sitofp i32 %248 to double
  %250 = fdiv double %244, %249
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load double*, double** %252, align 8
  %254 = getelementptr inbounds double, double* %253, i64 0
  %255 = load double, double* %254, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load double*, double** %257, align 8
  %259 = getelementptr inbounds double, double* %258, i64 1
  %260 = load double, double* %259, align 8
  %261 = fsub double %255, %260
  %262 = fmul double %250, %261
  %263 = fsub double %240, %262
  store double %263, double* %19, align 8
  %264 = load double, double* %19, align 8
  %265 = load double*, double** %16, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %265, i64 %271
  %273 = load double, double* %272, align 8
  %274 = fmul double %273, %264
  store double %274, double* %272, align 8
  br label %275

275:                                              ; preds = %235
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %231

278:                                              ; preds = %231
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 8
  %290 = icmp sge i32 %286, %289
  br i1 %290, label %291, label %299

291:                                              ; preds = %278
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, %294
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %291, %278
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp sge i32 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %299
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %316

310:                                              ; preds = %299
  br label %311

311:                                              ; preds = %310
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  br label %222

316:                                              ; preds = %305, %222
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %7, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %316
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 6
  store i32 0, i32* %322, align 4
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 7
  store i32 1920, i32* %324, align 8
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 5
  store i32 128, i32* %326, align 8
  br label %327

327:                                              ; preds = %320, %316
  br label %574

328:                                              ; preds = %132
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* %8, align 4
  %333 = call i32 @detect_peak(%struct.TYPE_4__* %329, i32 %330, i32 %331, i32 %332, i32* %12, double* %15)
  %334 = load i32, i32* %12, align 4
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %336, label %354

336:                                              ; preds = %328
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 5
  store i32 129, i32* %338, align 8
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 4
  %341 = load double*, double** %340, align 8
  %342 = getelementptr inbounds double, double* %341, i64 1
  %343 = load double, double* %342, align 8
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 4
  %346 = load double*, double** %345, align 8
  %347 = getelementptr inbounds double, double* %346, i64 0
  store double %343, double* %347, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 4
  %350 = load double*, double** %349, align 8
  %351 = getelementptr inbounds double, double* %350, i64 1
  store double 1.000000e+00, double* %351, align 8
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 6
  store i32 0, i32* %353, align 4
  br label %574

354:                                              ; preds = %328
  %355 = load double, double* %14, align 8
  %356 = load double, double* %15, align 8
  %357 = fdiv double %355, %356
  store double %357, double* %20, align 8
  %358 = load double, double* %20, align 8
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 4
  %361 = load double*, double** %360, align 8
  %362 = getelementptr inbounds double, double* %361, i64 1
  %363 = load double, double* %362, align 8
  %364 = fcmp olt double %358, %363
  br i1 %364, label %365, label %395

365:                                              ; preds = %354
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 5
  store i32 131, i32* %367, align 8
  %368 = load i32, i32* %12, align 4
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 7
  store i32 %368, i32* %370, align 8
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 8
  %374 = icmp sle i32 %373, 1
  br i1 %374, label %375, label %378

375:                                              ; preds = %365
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 7
  store i32 2, i32* %377, align 8
  br label %378

378:                                              ; preds = %375, %365
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 4
  %381 = load double*, double** %380, align 8
  %382 = getelementptr inbounds double, double* %381, i64 1
  %383 = load double, double* %382, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 4
  %386 = load double*, double** %385, align 8
  %387 = getelementptr inbounds double, double* %386, i64 0
  store double %383, double* %387, align 8
  %388 = load double, double* %20, align 8
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 4
  %391 = load double*, double** %390, align 8
  %392 = getelementptr inbounds double, double* %391, i64 1
  store double %388, double* %392, align 8
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 6
  store i32 0, i32* %394, align 4
  br label %574

395:                                              ; preds = %354
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 6
  store i32 0, i32* %397, align 4
  br label %398

398:                                              ; preds = %462, %395
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %12, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %467

404:                                              ; preds = %398
  store i32 0, i32* %10, align 4
  br label %405

405:                                              ; preds = %426, %404
  %406 = load i32, i32* %10, align 4
  %407 = load i32, i32* %8, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %429

409:                                              ; preds = %405
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 4
  %412 = load double*, double** %411, align 8
  %413 = getelementptr inbounds double, double* %412, i64 1
  %414 = load double, double* %413, align 8
  store double %414, double* %21, align 8
  %415 = load double, double* %21, align 8
  %416 = load double*, double** %16, align 8
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %10, align 4
  %421 = add nsw i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds double, double* %416, i64 %422
  %424 = load double, double* %423, align 8
  %425 = fmul double %424, %415
  store double %425, double* %423, align 8
  br label %426

426:                                              ; preds = %409
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %405

429:                                              ; preds = %405
  %430 = load i32, i32* %8, align 4
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 8
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, %430
  store i32 %434, i32* %432, align 4
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 8
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 8
  %441 = icmp sge i32 %437, %440
  br i1 %441, label %442, label %450

442:                                              ; preds = %429
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 8
  %448 = load i32, i32* %447, align 4
  %449 = sub nsw i32 %448, %445
  store i32 %449, i32* %447, align 4
  br label %450

450:                                              ; preds = %442, %429
  %451 = load i32, i32* %13, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %13, align 4
  %453 = load i32, i32* %13, align 4
  %454 = load i32, i32* %7, align 4
  %455 = icmp sge i32 %453, %454
  br i1 %455, label %456, label %461

456:                                              ; preds = %450
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %458, align 4
  br label %467

461:                                              ; preds = %450
  br label %462

462:                                              ; preds = %461
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %464, align 4
  br label %398

467:                                              ; preds = %456, %398
  br label %468

468:                                              ; preds = %467
  br label %574

469:                                              ; preds = %132
  br label %470

470:                                              ; preds = %559, %469
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 10
  %476 = load i32, i32* %475, align 4
  %477 = icmp slt i32 %473, %476
  br i1 %477, label %478, label %564

478:                                              ; preds = %470
  store i32 0, i32* %10, align 4
  br label %479

479:                                              ; preds = %523, %478
  %480 = load i32, i32* %10, align 4
  %481 = load i32, i32* %8, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %526

483:                                              ; preds = %479
  %484 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 4
  %486 = load double*, double** %485, align 8
  %487 = getelementptr inbounds double, double* %486, i64 0
  %488 = load double, double* %487, align 8
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 6
  %491 = load i32, i32* %490, align 4
  %492 = sitofp i32 %491 to double
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 10
  %495 = load i32, i32* %494, align 4
  %496 = sub nsw i32 %495, 1
  %497 = sitofp i32 %496 to double
  %498 = fdiv double %492, %497
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 4
  %501 = load double*, double** %500, align 8
  %502 = getelementptr inbounds double, double* %501, i64 1
  %503 = load double, double* %502, align 8
  %504 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 4
  %506 = load double*, double** %505, align 8
  %507 = getelementptr inbounds double, double* %506, i64 0
  %508 = load double, double* %507, align 8
  %509 = fsub double %503, %508
  %510 = fmul double %498, %509
  %511 = fadd double %488, %510
  store double %511, double* %22, align 8
  %512 = load double, double* %22, align 8
  %513 = load double*, double** %16, align 8
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 8
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %10, align 4
  %518 = add nsw i32 %516, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds double, double* %513, i64 %519
  %521 = load double, double* %520, align 8
  %522 = fmul double %521, %512
  store double %522, double* %520, align 8
  br label %523

523:                                              ; preds = %483
  %524 = load i32, i32* %10, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %10, align 4
  br label %479

526:                                              ; preds = %479
  %527 = load i32, i32* %8, align 4
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 8
  %530 = load i32, i32* %529, align 4
  %531 = add nsw i32 %530, %527
  store i32 %531, i32* %529, align 4
  %532 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 8
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 9
  %537 = load i32, i32* %536, align 8
  %538 = icmp sge i32 %534, %537
  br i1 %538, label %539, label %547

539:                                              ; preds = %526
  %540 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 9
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 8
  %545 = load i32, i32* %544, align 4
  %546 = sub nsw i32 %545, %542
  store i32 %546, i32* %544, align 4
  br label %547

547:                                              ; preds = %539, %526
  %548 = load i32, i32* %13, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %13, align 4
  %550 = load i32, i32* %13, align 4
  %551 = load i32, i32* %7, align 4
  %552 = icmp sge i32 %550, %551
  br i1 %552, label %553, label %558

553:                                              ; preds = %547
  %554 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %555, align 4
  br label %564

558:                                              ; preds = %547
  br label %559

559:                                              ; preds = %558
  %560 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 6
  %562 = load i32, i32* %561, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %561, align 4
  br label %470

564:                                              ; preds = %553, %470
  %565 = load i32, i32* %13, align 4
  %566 = load i32, i32* %7, align 4
  %567 = icmp slt i32 %565, %566
  br i1 %567, label %568, label %573

568:                                              ; preds = %564
  %569 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %569, i32 0, i32 6
  store i32 0, i32* %570, align 4
  %571 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %572 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %571, i32 0, i32 5
  store i32 130, i32* %572, align 8
  br label %573

573:                                              ; preds = %568, %564
  br label %574

574:                                              ; preds = %132, %573, %468, %378, %336, %327, %220
  br label %575

575:                                              ; preds = %574
  %576 = load i32, i32* %13, align 4
  %577 = load i32, i32* %7, align 4
  %578 = icmp slt i32 %576, %577
  br i1 %578, label %132, label %579

579:                                              ; preds = %575
  store i32 0, i32* %9, align 4
  br label %580

580:                                              ; preds = %649, %579
  %581 = load i32, i32* %9, align 4
  %582 = load i32, i32* %7, align 4
  %583 = icmp slt i32 %581, %582
  br i1 %583, label %584, label %652

584:                                              ; preds = %580
  store i32 0, i32* %10, align 4
  br label %585

585:                                              ; preds = %626, %584
  %586 = load i32, i32* %10, align 4
  %587 = load i32, i32* %8, align 4
  %588 = icmp slt i32 %586, %587
  br i1 %588, label %589, label %629

589:                                              ; preds = %585
  %590 = load double*, double** %16, align 8
  %591 = load i32, i32* %11, align 4
  %592 = load i32, i32* %10, align 4
  %593 = add nsw i32 %591, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds double, double* %590, i64 %594
  %596 = load double, double* %595, align 8
  %597 = load double*, double** %6, align 8
  %598 = load i32, i32* %10, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds double, double* %597, i64 %599
  store double %596, double* %600, align 8
  %601 = load double*, double** %6, align 8
  %602 = load i32, i32* %10, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds double, double* %601, i64 %603
  %605 = load double, double* %604, align 8
  %606 = call double @llvm.fabs.f64(double %605)
  %607 = load double, double* %14, align 8
  %608 = fcmp ogt double %606, %607
  br i1 %608, label %609, label %625

609:                                              ; preds = %589
  %610 = load double, double* %14, align 8
  %611 = load double*, double** %6, align 8
  %612 = load i32, i32* %10, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds double, double* %611, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fcmp olt double %615, 0.000000e+00
  %617 = zext i1 %616 to i64
  %618 = select i1 %616, i32 -1, i32 1
  %619 = sitofp i32 %618 to double
  %620 = fmul double %610, %619
  %621 = load double*, double** %6, align 8
  %622 = load i32, i32* %10, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds double, double* %621, i64 %623
  store double %620, double* %624, align 8
  br label %625

625:                                              ; preds = %609, %589
  br label %626

626:                                              ; preds = %625
  %627 = load i32, i32* %10, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %10, align 4
  br label %585

629:                                              ; preds = %585
  %630 = load i32, i32* %8, align 4
  %631 = load double*, double** %6, align 8
  %632 = sext i32 %630 to i64
  %633 = getelementptr inbounds double, double* %631, i64 %632
  store double* %633, double** %6, align 8
  %634 = load i32, i32* %8, align 4
  %635 = load i32, i32* %11, align 4
  %636 = add nsw i32 %635, %634
  store i32 %636, i32* %11, align 4
  %637 = load i32, i32* %11, align 4
  %638 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %638, i32 0, i32 9
  %640 = load i32, i32* %639, align 8
  %641 = icmp sge i32 %637, %640
  br i1 %641, label %642, label %648

642:                                              ; preds = %629
  %643 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 9
  %645 = load i32, i32* %644, align 8
  %646 = load i32, i32* %11, align 4
  %647 = sub nsw i32 %646, %645
  store i32 %647, i32* %11, align 4
  br label %648

648:                                              ; preds = %642, %629
  br label %649

649:                                              ; preds = %648
  %650 = load i32, i32* %9, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %9, align 4
  br label %580

652:                                              ; preds = %580
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @detect_peak(%struct.TYPE_4__*, i32, i32, i32, i32*, double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
