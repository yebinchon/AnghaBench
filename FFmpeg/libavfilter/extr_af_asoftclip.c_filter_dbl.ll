; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asoftclip.c_filter_dbl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asoftclip.c_filter_dbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32 }

@M_PI = common dso_local global i32 0, align 4
@M_PI_2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i8**, i32, i32)* @filter_dbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_dbl(%struct.TYPE_3__* %0, i8** %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
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
  %24 = load double, double* %23, align 8
  store double %24, double* %11, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %290, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %293

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to double*
  store double* %35, double** %13, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to double*
  store double* %41, double** %14, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %289 [
    i32 128, label %45
    i32 133, label %67
    i32 132, label %94
    i32 131, label %141
    i32 134, label %167
    i32 130, label %201
    i32 129, label %248
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
  %51 = load double*, double** %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double, double* %11, align 8
  %57 = fmul double %55, %56
  %58 = call double @tanh(double %57) #3
  %59 = load double*, double** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %58, double* %62, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %46

66:                                               ; preds = %46
  br label %289

67:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i32, i32* @M_PI, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double 2.000000e+00, %74
  %76 = load double*, double** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double, double* %11, align 8
  %82 = fmul double %80, %81
  %83 = call i32 @atan(double %82)
  %84 = sitofp i32 %83 to double
  %85 = fmul double %75, %84
  %86 = load double*, double** %14, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  store double %85, double* %89, align 8
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %68

93:                                               ; preds = %68
  br label %289

94:                                               ; preds = %29
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %137, %94
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = load double*, double** %13, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %100, i64 %102
  %104 = load double, double* %103, align 8
  %105 = call double @FFABS(double %104)
  %106 = fcmp oge double %105, 1.500000e+00
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load double*, double** %13, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  %112 = load double, double* %111, align 8
  %113 = call double @FFSIGN(double %112)
  %114 = load double*, double** %14, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  store double %113, double* %117, align 8
  br label %136

118:                                              ; preds = %99
  %119 = load double*, double** %13, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %119, i64 %121
  %123 = load double, double* %122, align 8
  %124 = load double*, double** %13, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %124, i64 %126
  %128 = load double, double* %127, align 8
  %129 = call double @pow(double %128, i32 3)
  %130 = fmul double 1.481000e-01, %129
  %131 = fsub double %123, %130
  %132 = load double*, double** %14, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %132, i64 %134
  store double %131, double* %135, align 8
  br label %136

136:                                              ; preds = %118, %107
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %95

140:                                              ; preds = %95
  br label %289

141:                                              ; preds = %29
  store i32 0, i32* %18, align 4
  br label %142

142:                                              ; preds = %163, %141
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load double*, double** %13, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %147, i64 %149
  %151 = load double, double* %150, align 8
  %152 = fmul double -2.000000e+00, %151
  %153 = fptosi double %152 to i32
  %154 = call i32 @exp(i32 %153)
  %155 = sitofp i32 %154 to double
  %156 = fadd double 1.000000e+00, %155
  %157 = fdiv double 2.000000e+00, %156
  %158 = fsub double %157, 1.000000e+00
  %159 = load double*, double** %14, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  store double %158, double* %162, align 8
  br label %163

163:                                              ; preds = %146
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %142

166:                                              ; preds = %142
  br label %289

167:                                              ; preds = %29
  store i32 0, i32* %19, align 4
  br label %168

168:                                              ; preds = %197, %167
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %200

172:                                              ; preds = %168
  %173 = load double*, double** %13, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %173, i64 %175
  %177 = load double, double* %176, align 8
  %178 = load double, double* %11, align 8
  %179 = load double*, double** %13, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %179, i64 %181
  %183 = load double, double* %182, align 8
  %184 = load double*, double** %13, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = fmul double %183, %188
  %190 = fadd double %178, %189
  %191 = call double @sqrt(double %190)
  %192 = fdiv double %177, %191
  %193 = load double*, double** %14, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, double* %193, i64 %195
  store double %192, double* %196, align 8
  br label %197

197:                                              ; preds = %172
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %168

200:                                              ; preds = %168
  br label %289

201:                                              ; preds = %29
  store i32 0, i32* %20, align 4
  br label %202

202:                                              ; preds = %244, %201
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %247

206:                                              ; preds = %202
  %207 = load double*, double** %13, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, double* %207, i64 %209
  %211 = load double, double* %210, align 8
  %212 = call double @FFABS(double %211)
  %213 = fcmp oge double %212, 1.250000e+00
  br i1 %213, label %214, label %225

214:                                              ; preds = %206
  %215 = load double*, double** %13, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = call double @FFSIGN(double %219)
  %221 = load double*, double** %14, align 8
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  store double %220, double* %224, align 8
  br label %243

225:                                              ; preds = %206
  %226 = load double*, double** %13, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %226, i64 %228
  %230 = load double, double* %229, align 8
  %231 = load double*, double** %13, align 8
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = load double, double* %234, align 8
  %236 = call double @pow(double %235, i32 5)
  %237 = fmul double 8.192000e-02, %236
  %238 = fsub double %230, %237
  %239 = load double*, double** %14, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %239, i64 %241
  store double %238, double* %242, align 8
  br label %243

243:                                              ; preds = %225, %214
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %20, align 4
  br label %202

247:                                              ; preds = %202
  br label %289

248:                                              ; preds = %29
  store i32 0, i32* %21, align 4
  br label %249

249:                                              ; preds = %285, %248
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %288

253:                                              ; preds = %249
  %254 = load double*, double** %13, align 8
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %254, i64 %256
  %258 = load double, double* %257, align 8
  %259 = call double @FFABS(double %258)
  %260 = load double, double* @M_PI_2, align 8
  %261 = fcmp oge double %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %253
  %263 = load double*, double** %13, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %263, i64 %265
  %267 = load double, double* %266, align 8
  %268 = call double @FFSIGN(double %267)
  %269 = load double*, double** %14, align 8
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %269, i64 %271
  store double %268, double* %272, align 8
  br label %284

273:                                              ; preds = %253
  %274 = load double*, double** %13, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, double* %274, i64 %276
  %278 = load double, double* %277, align 8
  %279 = call double @sin(double %278) #3
  %280 = load double*, double** %14, align 8
  %281 = load i32, i32* %21, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  store double %279, double* %283, align 8
  br label %284

284:                                              ; preds = %273, %262
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %249

288:                                              ; preds = %249
  br label %289

289:                                              ; preds = %29, %288, %247, %200, %166, %140, %93, %66
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %25

293:                                              ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare dso_local double @tanh(double) #1

declare dso_local i32 @atan(double) #2

declare dso_local double @FFABS(double) #2

declare dso_local double @FFSIGN(double) #2

declare dso_local double @pow(double, i32) #2

declare dso_local i32 @exp(i32) #2

declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
