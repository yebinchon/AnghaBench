; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev1_bp_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev1_bp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, double, double, double, double, double)* @chebyshev1_bp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chebyshev1_bp_filter(%struct.TYPE_4__* %0, i32 %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = srem i32 %30, 2
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %23, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %24, align 4
  %36 = load double, double* %12, align 8
  %37 = fcmp oeq double %36, 0.000000e+00
  br i1 %37, label %38, label %62

38:                                               ; preds = %7
  %39 = load double, double* %14, align 8
  %40 = fcmp oeq double %39, 0.000000e+00
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %204

62:                                               ; preds = %38, %7
  %63 = load double, double* %12, align 8
  %64 = fdiv double %63, 2.000000e+01
  %65 = call double @ff_exp10(double %64)
  store double %65, double* %12, align 8
  %66 = load double, double* %13, align 8
  %67 = fdiv double %66, 2.000000e+01
  %68 = call double @ff_exp10(double %67)
  store double %68, double* %13, align 8
  %69 = load double, double* %14, align 8
  %70 = fdiv double %69, 2.000000e+01
  %71 = call double @ff_exp10(double %70)
  store double %71, double* %14, align 8
  %72 = load double, double* %12, align 8
  %73 = load double, double* %12, align 8
  %74 = fmul double %72, %73
  %75 = load double, double* %13, align 8
  %76 = load double, double* %13, align 8
  %77 = fmul double %75, %76
  %78 = fsub double %74, %77
  %79 = load double, double* %13, align 8
  %80 = load double, double* %13, align 8
  %81 = fmul double %79, %80
  %82 = load double, double* %14, align 8
  %83 = load double, double* %14, align 8
  %84 = fmul double %82, %83
  %85 = fsub double %81, %84
  %86 = fdiv double %78, %85
  %87 = fptosi double %86 to i32
  %88 = call double @sqrt(i32 %87)
  store double %88, double* %22, align 8
  %89 = load double, double* %14, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double 1.000000e+00, %91
  %93 = call double @pow(double %89, double %92) #3
  store double %93, double* %18, align 8
  %94 = load double, double* %22, align 8
  %95 = fdiv double 1.000000e+00, %94
  %96 = load double, double* %22, align 8
  %97 = load double, double* %22, align 8
  %98 = fmul double %96, %97
  %99 = fdiv double 1.000000e+00, %98
  %100 = fadd double 1.000000e+00, %99
  %101 = fptosi double %100 to i32
  %102 = call double @sqrt(i32 %101)
  %103 = fadd double %95, %102
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to double
  %106 = fdiv double 1.000000e+00, %105
  %107 = call double @pow(double %103, double %106) #3
  store double %107, double* %19, align 8
  %108 = load double, double* %12, align 8
  %109 = load double, double* %22, align 8
  %110 = fdiv double %108, %109
  %111 = load double, double* %13, align 8
  %112 = load double, double* %22, align 8
  %113 = load double, double* %22, align 8
  %114 = fmul double %112, %113
  %115 = fdiv double 1.000000e+00, %114
  %116 = fadd double 1.000000e+00, %115
  %117 = fptosi double %116 to i32
  %118 = call double @sqrt(i32 %117)
  %119 = fmul double %111, %118
  %120 = fadd double %110, %119
  %121 = load i32, i32* %9, align 4
  %122 = sitofp i32 %121 to double
  %123 = fdiv double 1.000000e+00, %122
  %124 = call double @pow(double %120, double %123) #3
  store double %124, double* %20, align 8
  %125 = load double, double* %19, align 8
  %126 = load double, double* %19, align 8
  %127 = fdiv double 1.000000e+00, %126
  %128 = fsub double %125, %127
  %129 = fmul double 5.000000e-01, %128
  store double %129, double* %15, align 8
  %130 = load double, double* %20, align 8
  %131 = load double, double* %18, align 8
  %132 = load double, double* %18, align 8
  %133 = fmul double %131, %132
  %134 = load double, double* %20, align 8
  %135 = fdiv double 1.000000e+00, %134
  %136 = fmul double %133, %135
  %137 = fsub double %130, %136
  %138 = fmul double 5.000000e-01, %137
  store double %138, double* %16, align 8
  %139 = load double, double* %11, align 8
  %140 = fdiv double %139, 2.000000e+00
  %141 = call double @tan(double %140) #3
  store double %141, double* %21, align 8
  %142 = load double, double* %10, align 8
  %143 = call double @cos(double %142) #3
  store double %143, double* %17, align 8
  store i32 1, i32* %25, align 4
  br label %144

144:                                              ; preds = %201, %62
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %204

148:                                              ; preds = %144
  %149 = load i32, i32* %25, align 4
  %150 = sitofp i32 %149 to double
  %151 = fmul double 2.000000e+00, %150
  %152 = fsub double %151, 1.000000e+00
  %153 = load i32, i32* %9, align 4
  %154 = sitofp i32 %153 to double
  %155 = fdiv double %152, %154
  store double %155, double* %26, align 8
  %156 = load double, double* @M_PI, align 8
  %157 = load double, double* %26, align 8
  %158 = fmul double %156, %157
  %159 = fdiv double %158, 2.000000e+00
  %160 = call double @cos(double %159) #3
  store double %160, double* %27, align 8
  %161 = load double, double* @M_PI, align 8
  %162 = load double, double* %26, align 8
  %163 = fmul double %161, %162
  %164 = fdiv double %163, 2.000000e+00
  %165 = call double @sin(double %164) #3
  store double %165, double* %28, align 8
  %166 = load double, double* %15, align 8
  %167 = load double, double* %15, align 8
  %168 = fmul double %166, %167
  %169 = load double, double* %27, align 8
  %170 = load double, double* %27, align 8
  %171 = fmul double %169, %170
  %172 = fadd double %168, %171
  %173 = load double, double* %21, align 8
  %174 = fmul double %172, %173
  %175 = load double, double* %21, align 8
  %176 = fmul double %174, %175
  %177 = load double, double* %15, align 8
  %178 = fmul double 2.000000e+00, %177
  %179 = load double, double* %28, align 8
  %180 = fmul double %178, %179
  %181 = load double, double* %21, align 8
  %182 = fmul double %180, %181
  %183 = fadd double %176, %182
  %184 = fadd double %183, 1.000000e+00
  store double %184, double* %29, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i32, i32* %25, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %190
  %192 = load double, double* %15, align 8
  %193 = load double, double* %27, align 8
  %194 = load double, double* %21, align 8
  %195 = load double, double* %18, align 8
  %196 = load double, double* %28, align 8
  %197 = load double, double* %16, align 8
  %198 = load double, double* %29, align 8
  %199 = load double, double* %17, align 8
  %200 = call i32 @chebyshev1_fo_section(%struct.TYPE_5__* %191, double %192, double %193, double %194, double %195, double %196, double %197, double %198, double %199)
  br label %201

201:                                              ; preds = %148
  %202 = load i32, i32* %25, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %25, align 4
  br label %144

204:                                              ; preds = %41, %144
  ret void
}

declare dso_local double @ff_exp10(double) #1

declare dso_local double @sqrt(i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i32 @chebyshev1_fo_section(%struct.TYPE_5__*, double, double, double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
