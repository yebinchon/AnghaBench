; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asoftclip.c_filter_flt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asoftclip.c_filter_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i8**, i32, i32)* @filter_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_flt(%struct.TYPE_3__* %0, i8** %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  store float %24, float* %11, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %289, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %292

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to float*
  store float* %35, float** %13, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to float*
  store float* %41, float** %14, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %288 [
    i32 128, label %45
    i32 133, label %67
    i32 132, label %92
    i32 131, label %139
    i32 134, label %166
    i32 130, label %200
    i32 129, label %247
  ]

45:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load float*, float** %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float, float* %11, align 4
  %57 = fmul float %55, %56
  %58 = call float @tanhf(float %57) #3
  %59 = load float*, float** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  store float %58, float* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %46

66:                                               ; preds = %46
  br label %288

67:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load float, float* @M_PI, align 4
  %74 = fdiv float 2.000000e+00, %73
  %75 = load float*, float** %13, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float, float* %11, align 4
  %81 = fmul float %79, %80
  %82 = call float @atanf(float %81) #3
  %83 = fmul float %74, %82
  %84 = load float*, float** %14, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %83, float* %87, align 4
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %68

91:                                               ; preds = %68
  br label %288

92:                                               ; preds = %29
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %135, %92
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load float*, float** %13, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = call double @FFABS(float %102)
  %104 = fcmp oge double %103, 1.500000e+00
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load float*, float** %13, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = call float @FFSIGN(float %110)
  %112 = load float*, float** %14, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  store float %111, float* %115, align 4
  br label %134

116:                                              ; preds = %97
  %117 = load float*, float** %13, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = load float*, float** %13, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = load float, float* %125, align 4
  %127 = call float @powf(float %126, float 3.000000e+00) #3
  %128 = fmul float 0x3FC2F4F0E0000000, %127
  %129 = fsub float %121, %128
  %130 = load float*, float** %14, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  store float %129, float* %133, align 4
  br label %134

134:                                              ; preds = %116, %105
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %93

138:                                              ; preds = %93
  br label %288

139:                                              ; preds = %29
  store i32 0, i32* %18, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load float*, float** %13, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fmul float -2.000000e+00, %149
  %151 = call i32 @expf(float %150)
  %152 = sitofp i32 %151 to float
  %153 = fadd float 1.000000e+00, %152
  %154 = fdiv float 2.000000e+00, %153
  %155 = fpext float %154 to double
  %156 = fsub double %155, 1.000000e+00
  %157 = fptrunc double %156 to float
  %158 = load float*, float** %14, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  store float %157, float* %161, align 4
  br label %162

162:                                              ; preds = %144
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %18, align 4
  br label %140

165:                                              ; preds = %140
  br label %288

166:                                              ; preds = %29
  store i32 0, i32* %19, align 4
  br label %167

167:                                              ; preds = %196, %166
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %199

171:                                              ; preds = %167
  %172 = load float*, float** %13, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float, float* %11, align 4
  %178 = load float*, float** %13, align 8
  %179 = load i32, i32* %19, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = load float*, float** %13, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fmul float %182, %187
  %189 = fadd float %177, %188
  %190 = call float @sqrtf(float %189)
  %191 = fdiv float %176, %190
  %192 = load float*, float** %14, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  store float %191, float* %195, align 4
  br label %196

196:                                              ; preds = %171
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %167

199:                                              ; preds = %167
  br label %288

200:                                              ; preds = %29
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %243, %200
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %246

205:                                              ; preds = %201
  %206 = load float*, float** %13, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = call double @FFABS(float %210)
  %212 = fcmp oge double %211, 1.250000e+00
  br i1 %212, label %213, label %224

213:                                              ; preds = %205
  %214 = load float*, float** %13, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = call float @FFSIGN(float %218)
  %220 = load float*, float** %14, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %220, i64 %222
  store float %219, float* %223, align 4
  br label %242

224:                                              ; preds = %205
  %225 = load float*, float** %13, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float*, float** %13, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = call float @powf(float %234, float 5.000000e+00) #3
  %236 = fmul float 0x3FB4F8B580000000, %235
  %237 = fsub float %229, %236
  %238 = load float*, float** %14, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  store float %237, float* %241, align 4
  br label %242

242:                                              ; preds = %224, %213
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %20, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %20, align 4
  br label %201

246:                                              ; preds = %201
  br label %288

247:                                              ; preds = %29
  store i32 0, i32* %21, align 4
  br label %248

248:                                              ; preds = %284, %247
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %287

252:                                              ; preds = %248
  %253 = load float*, float** %13, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = call double @FFABS(float %257)
  %259 = load double, double* @M_PI_2, align 8
  %260 = fcmp oge double %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %252
  %262 = load float*, float** %13, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = call float @FFSIGN(float %266)
  %268 = load float*, float** %14, align 8
  %269 = load i32, i32* %21, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  store float %267, float* %271, align 4
  br label %283

272:                                              ; preds = %252
  %273 = load float*, float** %13, align 8
  %274 = load i32, i32* %21, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %273, i64 %275
  %277 = load float, float* %276, align 4
  %278 = call float @sinf(float %277) #3
  %279 = load float*, float** %14, align 8
  %280 = load i32, i32* %21, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %279, i64 %281
  store float %278, float* %282, align 4
  br label %283

283:                                              ; preds = %272, %261
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %21, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %21, align 4
  br label %248

287:                                              ; preds = %248
  br label %288

288:                                              ; preds = %29, %287, %246, %199, %165, %138, %91, %66
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %25

292:                                              ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare dso_local float @tanhf(float) #1

; Function Attrs: nounwind
declare dso_local float @atanf(float) #1

declare dso_local double @FFABS(float) #2

declare dso_local float @FFSIGN(float) #2

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

declare dso_local i32 @expf(float) #2

declare dso_local float @sqrtf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
