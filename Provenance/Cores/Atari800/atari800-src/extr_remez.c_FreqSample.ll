; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_FreqSample.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_FreqSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POSITIVE = common dso_local global i32 0, align 4
@Pi2 = common dso_local global i32 0, align 4
@Pi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double*, double*, i32)* @FreqSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreqSample(i32 %0, double* %1, double* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sitofp i32 %14 to double
  %16 = fsub double %15, 1.000000e+00
  %17 = fdiv double %16, 2.000000e+00
  store double %17, double* %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @POSITIVE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %137

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %76, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load double*, double** %6, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  store double %33, double* %12, align 8
  %34 = load i32, i32* @Pi2, align 4
  %35 = sitofp i32 %34 to double
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to double
  %38 = load double, double* %13, align 8
  %39 = fsub double %37, %38
  %40 = fmul double %35, %39
  %41 = load i32, i32* %5, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  store double %43, double* %11, align 8
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %64, %30
  %45 = load i32, i32* %10, align 4
  %46 = sitofp i32 %45 to double
  %47 = load double, double* %13, align 8
  %48 = fcmp ole double %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load double*, double** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fmul double 2.000000e+00, %54
  %56 = load double, double* %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double %56, %58
  %60 = call double @cos(double %59) #2
  %61 = fmul double %55, %60
  %62 = load double, double* %12, align 8
  %63 = fadd double %62, %61
  store double %63, double* %12, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load double, double* %12, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %68, %70
  %72 = load double*, double** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  store double %71, double* %75, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %26

79:                                               ; preds = %26
  br label %136

80:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %132, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %135

85:                                               ; preds = %81
  %86 = load double*, double** %6, align 8
  %87 = getelementptr inbounds double, double* %86, i64 0
  %88 = load double, double* %87, align 8
  store double %88, double* %12, align 8
  %89 = load i32, i32* @Pi2, align 4
  %90 = sitofp i32 %89 to double
  %91 = load i32, i32* %9, align 4
  %92 = sitofp i32 %91 to double
  %93 = load double, double* %13, align 8
  %94 = fsub double %92, %93
  %95 = fmul double %90, %94
  %96 = load i32, i32* %5, align 4
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %95, %97
  store double %98, double* %11, align 8
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %120, %85
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sdiv i32 %101, 2
  %103 = sub nsw i32 %102, 1
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load double*, double** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fmul double 2.000000e+00, %110
  %112 = load double, double* %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sitofp i32 %113 to double
  %115 = fmul double %112, %114
  %116 = call double @cos(double %115) #2
  %117 = fmul double %111, %116
  %118 = load double, double* %12, align 8
  %119 = fadd double %118, %117
  store double %119, double* %12, align 8
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %99

123:                                              ; preds = %99
  %124 = load double, double* %12, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sitofp i32 %125 to double
  %127 = fdiv double %124, %126
  %128 = load double*, double** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %128, i64 %130
  store double %127, double* %131, align 8
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %81

135:                                              ; preds = %81
  br label %136

136:                                              ; preds = %135, %79
  br label %262

137:                                              ; preds = %4
  %138 = load i32, i32* %5, align 4
  %139 = srem i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %189, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %192

146:                                              ; preds = %142
  store double 0.000000e+00, double* %12, align 8
  %147 = load i32, i32* @Pi2, align 4
  %148 = sitofp i32 %147 to double
  %149 = load i32, i32* %9, align 4
  %150 = sitofp i32 %149 to double
  %151 = load double, double* %13, align 8
  %152 = fsub double %150, %151
  %153 = fmul double %148, %152
  %154 = load i32, i32* %5, align 4
  %155 = sitofp i32 %154 to double
  %156 = fdiv double %153, %155
  store double %156, double* %11, align 8
  store i32 1, i32* %10, align 4
  br label %157

157:                                              ; preds = %177, %146
  %158 = load i32, i32* %10, align 4
  %159 = sitofp i32 %158 to double
  %160 = load double, double* %13, align 8
  %161 = fcmp ole double %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load double*, double** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = load double, double* %166, align 8
  %168 = fmul double 2.000000e+00, %167
  %169 = load double, double* %11, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sitofp i32 %170 to double
  %172 = fmul double %169, %171
  %173 = call double @sin(double %172) #2
  %174 = fmul double %168, %173
  %175 = load double, double* %12, align 8
  %176 = fadd double %175, %174
  store double %176, double* %12, align 8
  br label %177

177:                                              ; preds = %162
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %157

180:                                              ; preds = %157
  %181 = load double, double* %12, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sitofp i32 %182 to double
  %184 = fdiv double %181, %183
  %185 = load double*, double** %7, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  store double %184, double* %188, align 8
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %142

192:                                              ; preds = %142
  br label %261

193:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %257, %193
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %260

198:                                              ; preds = %194
  %199 = load double*, double** %6, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sdiv i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %199, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load i32, i32* @Pi, align 4
  %206 = sitofp i32 %205 to double
  %207 = load i32, i32* %9, align 4
  %208 = sitofp i32 %207 to double
  %209 = load double, double* %13, align 8
  %210 = fsub double %208, %209
  %211 = fmul double %206, %210
  %212 = call double @sin(double %211) #2
  %213 = fmul double %204, %212
  store double %213, double* %12, align 8
  %214 = load i32, i32* @Pi2, align 4
  %215 = sitofp i32 %214 to double
  %216 = load i32, i32* %9, align 4
  %217 = sitofp i32 %216 to double
  %218 = load double, double* %13, align 8
  %219 = fsub double %217, %218
  %220 = fmul double %215, %219
  %221 = load i32, i32* %5, align 4
  %222 = sitofp i32 %221 to double
  %223 = fdiv double %220, %222
  store double %223, double* %11, align 8
  store i32 1, i32* %10, align 4
  br label %224

224:                                              ; preds = %245, %198
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %5, align 4
  %227 = sdiv i32 %226, 2
  %228 = sub nsw i32 %227, 1
  %229 = icmp sle i32 %225, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = load double*, double** %6, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = load double, double* %234, align 8
  %236 = fmul double 2.000000e+00, %235
  %237 = load double, double* %11, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sitofp i32 %238 to double
  %240 = fmul double %237, %239
  %241 = call double @sin(double %240) #2
  %242 = fmul double %236, %241
  %243 = load double, double* %12, align 8
  %244 = fadd double %243, %242
  store double %244, double* %12, align 8
  br label %245

245:                                              ; preds = %230
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %224

248:                                              ; preds = %224
  %249 = load double, double* %12, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sitofp i32 %250 to double
  %252 = fdiv double %249, %251
  %253 = load double*, double** %7, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds double, double* %253, i64 %255
  store double %252, double* %256, align 8
  br label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %194

260:                                              ; preds = %194
  br label %261

261:                                              ; preds = %260, %192
  br label %262

262:                                              ; preds = %261, %136
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
