; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_detect_peak.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_detect_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double, i32, i32, i64, double*, i32 }

@FIRST_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32*, double*)* @detect_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_peak(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32* %4, double* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %23 = load i32*, i32** %11, align 8
  store i32 -1, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  store double* %26, double** %18, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  store double %29, double* %17, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 1920, %37
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %6
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %45, %6
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FIRST_FRAME, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load double*, double** %18, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %63, i64 %69
  %71 = load double, double* %70, align 8
  %72 = call double @llvm.fabs.f64(double %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load double*, double** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  store double %72, double* %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %58

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %51
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %326, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %329

88:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %307, %88
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %310

93:                                               ; preds = %89
  %94 = load double*, double** %18, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  br label %114

106:                                              ; preds = %93
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  br label %114

114:                                              ; preds = %106, %102
  %115 = phi i32 [ %105, %102 ], [ %113, %106 ]
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %94, i64 %116
  %118 = load double, double* %117, align 8
  %119 = call double @llvm.fabs.f64(double %118)
  store double %119, double* %19, align 8
  %120 = load double*, double** %18, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  br label %146

136:                                              ; preds = %114
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  br label %146

146:                                              ; preds = %136, %130
  %147 = phi i32 [ %135, %130 ], [ %145, %136 ]
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %120, i64 %148
  %150 = load double, double* %149, align 8
  %151 = call double @llvm.fabs.f64(double %150)
  store double %151, double* %20, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 5
  %154 = load double*, double** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load double, double* %19, align 8
  %160 = fcmp ole double %158, %159
  br i1 %160, label %161, label %299

161:                                              ; preds = %146
  %162 = load double, double* %20, align 8
  %163 = load double, double* %19, align 8
  %164 = fcmp ole double %162, %163
  br i1 %164, label %165, label %299

165:                                              ; preds = %161
  %166 = load double, double* %19, align 8
  %167 = load double, double* %17, align 8
  %168 = fcmp ogt double %166, %167
  br i1 %168, label %169, label %299

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %299

172:                                              ; preds = %169
  store i32 1, i32* %22, align 4
  store i32 2, i32* %15, align 4
  br label %173

173:                                              ; preds = %220, %172
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 12
  br i1 %175, label %176, label %223

176:                                              ; preds = %173
  %177 = load double*, double** %18, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %10, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %176
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %10, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %192, %195
  br label %209

197:                                              ; preds = %176
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %10, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  br label %209

209:                                              ; preds = %197, %189
  %210 = phi i32 [ %196, %189 ], [ %208, %197 ]
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %177, i64 %211
  %213 = load double, double* %212, align 8
  %214 = call double @llvm.fabs.f64(double %213)
  store double %214, double* %20, align 8
  %215 = load double, double* %20, align 8
  %216 = load double, double* %19, align 8
  %217 = fcmp ogt double %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %209
  store i32 0, i32* %22, align 4
  br label %223

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %173

223:                                              ; preds = %218, %173
  %224 = load i32, i32* %22, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %223
  br label %307

227:                                              ; preds = %223
  store i32 0, i32* %14, align 4
  br label %228

228:                                              ; preds = %288, %227
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %291

232:                                              ; preds = %228
  %233 = load i32, i32* %14, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %232
  %236 = load double*, double** %18, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, double* %236, i64 %240
  %242 = load double, double* %241, align 8
  %243 = call double @llvm.fabs.f64(double %242)
  %244 = load double, double* %21, align 8
  %245 = fcmp ogt double %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %235, %232
  %247 = load double*, double** %18, align 8
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %247, i64 %251
  %253 = load double, double* %252, align 8
  %254 = call double @llvm.fabs.f64(double %253)
  store double %254, double* %21, align 8
  br label %255

255:                                              ; preds = %246, %235
  %256 = load double*, double** %18, align 8
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %257, %258
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %255
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %265, %266
  br label %276

268:                                              ; preds = %255
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %269, %270
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %271, %274
  br label %276

276:                                              ; preds = %268, %264
  %277 = phi i32 [ %267, %264 ], [ %275, %268 ]
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %256, i64 %278
  %280 = load double, double* %279, align 8
  %281 = call double @llvm.fabs.f64(double %280)
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 5
  %284 = load double*, double** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  store double %281, double* %287, align 8
  br label %288

288:                                              ; preds = %276
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  br label %228

291:                                              ; preds = %228
  %292 = load i32, i32* %13, align 4
  %293 = load i32*, i32** %11, align 8
  store i32 %292, i32* %293, align 4
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 6
  store i32 %294, i32* %296, align 8
  %297 = load double, double* %21, align 8
  %298 = load double*, double** %12, align 8
  store double %297, double* %298, align 8
  br label %329

299:                                              ; preds = %169, %165, %161, %146
  %300 = load double, double* %19, align 8
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 5
  %303 = load double*, double** %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds double, double* %303, i64 %305
  store double %300, double* %306, align 8
  br label %307

307:                                              ; preds = %299, %226
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %14, align 4
  br label %89

310:                                              ; preds = %89
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %16, align 4
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp sge i32 %314, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %310
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %16, align 4
  %324 = sub nsw i32 %323, %322
  store i32 %324, i32* %16, align 4
  br label %325

325:                                              ; preds = %319, %310
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %13, align 4
  br label %84

329:                                              ; preds = %291, %84
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
