; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_GetYUVFromGenerated.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_GetYUVFromGenerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [15 x %struct.del_coeff], [15 x %struct.del_coeff] }
%struct.del_coeff = type { i32, i32 }
%struct.TYPE_59__ = type { double, double, double, i32, double, double, i64, i64 }

@GetYUVFromGenerated.del_coeffs = internal constant %struct.anon { [15 x %struct.del_coeff] [%struct.del_coeff { i32 1, i32 5 }, %struct.del_coeff { i32 1, i32 6 }, %struct.del_coeff { i32 1, i32 7 }, %struct.del_coeff zeroinitializer, %struct.del_coeff { i32 0, i32 1 }, %struct.del_coeff { i32 0, i32 2 }, %struct.del_coeff { i32 0, i32 4 }, %struct.del_coeff { i32 0, i32 5 }, %struct.del_coeff { i32 0, i32 6 }, %struct.del_coeff { i32 0, i32 7 }, %struct.del_coeff { i32 1, i32 1 }, %struct.del_coeff { i32 1, i32 2 }, %struct.del_coeff { i32 1, i32 3 }, %struct.del_coeff { i32 1, i32 4 }, %struct.del_coeff { i32 1, i32 5 }], [15 x %struct.del_coeff] [%struct.del_coeff { i32 1, i32 1 }, %struct.del_coeff { i32 1, i32 0 }, %struct.del_coeff { i32 0, i32 7 }, %struct.del_coeff { i32 0, i32 6 }, %struct.del_coeff { i32 0, i32 5 }, %struct.del_coeff { i32 0, i32 4 }, %struct.del_coeff { i32 0, i32 2 }, %struct.del_coeff { i32 0, i32 1 }, %struct.del_coeff zeroinitializer, %struct.del_coeff { i32 1, i32 7 }, %struct.del_coeff { i32 1, i32 5 }, %struct.del_coeff { i32 1, i32 4 }, %struct.del_coeff { i32 1, i32 3 }, %struct.del_coeff { i32 1, i32 2 }, %struct.del_coeff { i32 1, i32 1 }] }, align 4
@COLOURS_PAL_setup = common dso_local global %struct.TYPE_59__ zeroinitializer, align 8
@GetYUVFromGenerated.luma_mult = internal constant [16 x double] [double 6.941000e-01, double 7.091000e-01, double 7.241000e-01, double 0x3FE7AEE631F8A090, double 7.560000e-01, double 7.741000e-01, double 7.931000e-01, double 8.121000e-01, double 8.260000e-01, double 0x3FEB1A9FBE76C8B4, double 8.700000e-01, double 8.930000e-01, double 9.160000e-01, double 0x3FEE24DD2F1A9FBE, double 0x3FEF020C49BA5E35, double 1.000000e+00], align 16
@GetYUVFromGenerated.color_disable_threshold = internal constant double 5.000000e-02, align 8
@GetYUVFromGenerated.base_del = internal constant double 0x3FDB0053C311A808, align 8
@GetYUVFromGenerated.add_del = internal constant double 0x3FDC947D3FCAF8C8, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*)* @GetYUVFromGenerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetYUVFromGenerated(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.del_coeff*, align 8
  %20 = alloca %struct.del_coeff*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double* %0, double** %2, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 7), align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %28, 2.550000e+02
  store double %29, double* %5, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 6), align 8
  %31 = sitofp i64 %30 to double
  %32 = fdiv double %31, 2.550000e+02
  store double %32, double* %6, align 8
  %33 = load double, double* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 0), align 8
  %34 = fdiv double %33, 2.000000e+00
  %35 = fsub double 1.000000e+00, %34
  store double %35, double* %7, align 8
  %36 = load double, double* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 1), align 8
  %37 = fdiv double %36, 3.600000e+02
  store double %37, double* %8, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 0, i64 0, i32 0), align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double 0x3FDC947D3FCAF8C8, %39
  %41 = fadd double 0x3FDB0053C311A808, %40
  %42 = load double, double* %8, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 0, i64 0, i32 1), align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %42, %44
  %46 = fadd double %41, %45
  store double %46, double* %9, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 1, i64 0, i32 0), align 4
  %48 = sitofp i32 %47 to double
  %49 = fmul double 0x3FDC947D3FCAF8C8, %48
  %50 = fadd double 0x3FDB0053C311A808, %49
  %51 = load double, double* %8, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 1, i64 0, i32 1), align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double %51, %53
  %55 = fadd double %50, %54
  store double %55, double* %10, align 8
  %56 = load double, double* %9, align 8
  %57 = load double, double* %10, align 8
  %58 = fadd double %56, %57
  %59 = load double, double* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 2), align 8
  %60 = fadd double %58, %59
  %61 = fdiv double %60, 2.000000e+00
  store double %61, double* %12, align 8
  %62 = load double, double* %9, align 8
  %63 = load double, double* %10, align 8
  %64 = fsub double %62, %63
  store double %64, double* %13, align 8
  %65 = load double, double* %13, align 8
  %66 = call i64 @floor(double %65)
  %67 = sitofp i64 %66 to double
  %68 = load double, double* %13, align 8
  %69 = fsub double %68, %67
  store double %69, double* %13, align 8
  %70 = load double, double* %13, align 8
  %71 = fcmp ogt double %70, 4.500000e-01
  br i1 %71, label %72, label %76

72:                                               ; preds = %1
  %73 = load double, double* %13, align 8
  %74 = fcmp olt double %73, 5.500000e-01
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store double 0.000000e+00, double* %11, align 8
  br label %88

76:                                               ; preds = %72, %1
  %77 = load double, double* %13, align 8
  %78 = fmul double %77, 2.000000e+00
  %79 = load double, double* @M_PI, align 8
  %80 = fmul double %78, %79
  %81 = call double @cos(double %80) #3
  %82 = fmul double 2.000000e+00, %81
  %83 = fadd double %82, 2.000000e+00
  %84 = call double @sqrt(double %83) #3
  store double %84, double* %14, align 8
  %85 = call double @sqrt(double 2.000000e+00) #3
  %86 = load double, double* %14, align 8
  %87 = fdiv double %85, %86
  store double %87, double* %11, align 8
  br label %88

88:                                               ; preds = %76, %75
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %219, %88
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 16
  br i1 %91, label %92, label %222

92:                                               ; preds = %89
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %166

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [15 x %struct.del_coeff], [15 x %struct.del_coeff]* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 0), i64 0, i64 %98
  store %struct.del_coeff* %99, %struct.del_coeff** %19, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [15 x %struct.del_coeff], [15 x %struct.del_coeff]* getelementptr inbounds (%struct.anon, %struct.anon* @GetYUVFromGenerated.del_coeffs, i32 0, i32 1), i64 0, i64 %102
  store %struct.del_coeff* %103, %struct.del_coeff** %20, align 8
  %104 = load %struct.del_coeff*, %struct.del_coeff** %19, align 8
  %105 = getelementptr inbounds %struct.del_coeff, %struct.del_coeff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to double
  %108 = fmul double 0x3FDC947D3FCAF8C8, %107
  %109 = fadd double 0x3FDB0053C311A808, %108
  %110 = load double, double* %8, align 8
  %111 = load %struct.del_coeff*, %struct.del_coeff** %19, align 8
  %112 = getelementptr inbounds %struct.del_coeff, %struct.del_coeff* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = fmul double %110, %114
  %116 = fadd double %109, %115
  store double %116, double* %21, align 8
  %117 = load %struct.del_coeff*, %struct.del_coeff** %20, align 8
  %118 = getelementptr inbounds %struct.del_coeff, %struct.del_coeff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = fmul double 0x3FDC947D3FCAF8C8, %120
  %122 = fadd double 0x3FDB0053C311A808, %121
  %123 = load double, double* %8, align 8
  %124 = load %struct.del_coeff*, %struct.del_coeff** %20, align 8
  %125 = getelementptr inbounds %struct.del_coeff, %struct.del_coeff* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = fmul double %123, %127
  %129 = fadd double %122, %128
  store double %129, double* %22, align 8
  %130 = load double, double* %21, align 8
  %131 = load double, double* %12, align 8
  %132 = fsub double %130, %131
  %133 = fsub double 5.000000e-01, %132
  %134 = fmul double %133, 2.000000e+00
  %135 = load double, double* @M_PI, align 8
  %136 = fmul double %134, %135
  store double %136, double* %23, align 8
  %137 = load double, double* %22, align 8
  %138 = load double, double* %12, align 8
  %139 = fsub double %137, %138
  %140 = fadd double 5.000000e-01, %139
  %141 = fmul double %140, 2.000000e+00
  %142 = load double, double* @M_PI, align 8
  %143 = fmul double %141, %142
  store double %143, double* %24, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 3), align 8
  %145 = add nsw i32 %144, 1
  %146 = sitofp i32 %145 to double
  %147 = fmul double %146, 1.750000e-01
  %148 = load double, double* %11, align 8
  %149 = fmul double %147, %148
  store double %149, double* %25, align 8
  %150 = load double, double* %23, align 8
  %151 = call double @cos(double %150) #3
  %152 = load double, double* %25, align 8
  %153 = fmul double %151, %152
  store double %153, double* %15, align 8
  %154 = load double, double* %23, align 8
  %155 = call double @sin(double %154) #3
  %156 = load double, double* %25, align 8
  %157 = fmul double %155, %156
  store double %157, double* %17, align 8
  %158 = load double, double* %24, align 8
  %159 = call double @cos(double %158) #3
  %160 = load double, double* %25, align 8
  %161 = fmul double %159, %160
  store double %161, double* %16, align 8
  %162 = load double, double* %24, align 8
  %163 = call double @sin(double %162) #3
  %164 = load double, double* %25, align 8
  %165 = fmul double %163, %164
  store double %165, double* %18, align 8
  br label %166

166:                                              ; preds = %95, %92
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %215, %166
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %168, 16
  br i1 %169, label %170, label %218

170:                                              ; preds = %167
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x double], [16 x double]* @GetYUVFromGenerated.luma_mult, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @GetYUVFromGenerated.luma_mult, i64 0, i64 0), align 16
  %176 = fsub double %174, %175
  %177 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @GetYUVFromGenerated.luma_mult, i64 0, i64 15), align 8
  %178 = load double, double* getelementptr inbounds ([16 x double], [16 x double]* @GetYUVFromGenerated.luma_mult, i64 0, i64 0), align 16
  %179 = fsub double %177, %178
  %180 = fdiv double %176, %179
  store double %180, double* %26, align 8
  %181 = load double, double* %26, align 8
  %182 = load double, double* %7, align 8
  %183 = call double @pow(double %181, double %182) #3
  store double %183, double* %26, align 8
  %184 = load double, double* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 4), align 8
  %185 = fmul double %184, 5.000000e-01
  %186 = fadd double %185, 1.000000e+00
  %187 = load double, double* %26, align 8
  %188 = fmul double %187, %186
  store double %188, double* %26, align 8
  %189 = load double, double* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @COLOURS_PAL_setup, i32 0, i32 5), align 8
  %190 = fmul double %189, 5.000000e-01
  %191 = load double, double* %26, align 8
  %192 = fadd double %191, %190
  store double %192, double* %26, align 8
  %193 = load double, double* %26, align 8
  %194 = load double, double* %6, align 8
  %195 = load double, double* %5, align 8
  %196 = fsub double %194, %195
  %197 = fmul double %193, %196
  %198 = load double, double* %5, align 8
  %199 = fadd double %197, %198
  store double %199, double* %26, align 8
  %200 = load double, double* %26, align 8
  %201 = load double*, double** %2, align 8
  %202 = getelementptr inbounds double, double* %201, i32 1
  store double* %202, double** %2, align 8
  store double %200, double* %201, align 8
  %203 = load double, double* %15, align 8
  %204 = load double*, double** %2, align 8
  %205 = getelementptr inbounds double, double* %204, i32 1
  store double* %205, double** %2, align 8
  store double %203, double* %204, align 8
  %206 = load double, double* %16, align 8
  %207 = load double*, double** %2, align 8
  %208 = getelementptr inbounds double, double* %207, i32 1
  store double* %208, double** %2, align 8
  store double %206, double* %207, align 8
  %209 = load double, double* %17, align 8
  %210 = load double*, double** %2, align 8
  %211 = getelementptr inbounds double, double* %210, i32 1
  store double* %211, double** %2, align 8
  store double %209, double* %210, align 8
  %212 = load double, double* %18, align 8
  %213 = load double*, double** %2, align 8
  %214 = getelementptr inbounds double, double* %213, i32 1
  store double* %214, double** %2, align 8
  store double %212, double* %213, align 8
  br label %215

215:                                              ; preds = %170
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  br label %167

218:                                              ; preds = %167
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %89

222:                                              ; preds = %89
  ret void
}

declare dso_local i64 @floor(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
