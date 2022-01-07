; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_bp_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_bp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, double, double, double, double, double)* @chebyshev2_bp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chebyshev2_bp_filter(%struct.TYPE_4__* %0, i32 %1, double %2, double %3, double %4, double %5, double %6) #0 {
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
  br label %199

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
  store double %88, double* %19, align 8
  %89 = load double, double* %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double 1.000000e+00, %91
  %93 = call double @pow(double %89, double %92) #3
  store double %93, double* %20, align 8
  %94 = load double, double* %19, align 8
  %95 = load double, double* %19, align 8
  %96 = load double, double* %19, align 8
  %97 = fmul double %95, %96
  %98 = fadd double 1.000000e+00, %97
  %99 = fptosi double %98 to i32
  %100 = call double @sqrt(i32 %99)
  %101 = fadd double %94, %100
  %102 = load i32, i32* %9, align 4
  %103 = sitofp i32 %102 to double
  %104 = fdiv double 1.000000e+00, %103
  %105 = call double @pow(double %101, double %104) #3
  store double %105, double* %21, align 8
  %106 = load double, double* %14, align 8
  %107 = load double, double* %19, align 8
  %108 = fmul double %106, %107
  %109 = load double, double* %13, align 8
  %110 = load double, double* %19, align 8
  %111 = load double, double* %19, align 8
  %112 = fmul double %110, %111
  %113 = fadd double 1.000000e+00, %112
  %114 = fptosi double %113 to i32
  %115 = call double @sqrt(i32 %114)
  %116 = fmul double %109, %115
  %117 = fadd double %108, %116
  %118 = load i32, i32* %9, align 4
  %119 = sitofp i32 %118 to double
  %120 = fdiv double 1.000000e+00, %119
  %121 = call double @pow(double %117, double %120) #3
  store double %121, double* %22, align 8
  %122 = load double, double* %21, align 8
  %123 = load double, double* %21, align 8
  %124 = fdiv double 1.000000e+00, %123
  %125 = fsub double %122, %124
  %126 = fdiv double %125, 2.000000e+00
  store double %126, double* %15, align 8
  %127 = load double, double* %22, align 8
  %128 = load double, double* %20, align 8
  %129 = load double, double* %20, align 8
  %130 = fmul double %128, %129
  %131 = load double, double* %22, align 8
  %132 = fdiv double %130, %131
  %133 = fsub double %127, %132
  %134 = fdiv double %133, 2.000000e+00
  store double %134, double* %16, align 8
  %135 = load double, double* %11, align 8
  %136 = fdiv double %135, 2.000000e+00
  %137 = call double @tan(double %136) #3
  store double %137, double* %18, align 8
  %138 = load double, double* %10, align 8
  %139 = call double @cos(double %138) #3
  store double %139, double* %17, align 8
  store i32 1, i32* %25, align 4
  br label %140

140:                                              ; preds = %196, %62
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %24, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %199

144:                                              ; preds = %140
  %145 = load i32, i32* %25, align 4
  %146 = sitofp i32 %145 to double
  %147 = fmul double 2.000000e+00, %146
  %148 = fsub double %147, 1.000000e+00
  %149 = load i32, i32* %9, align 4
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %148, %150
  store double %151, double* %26, align 8
  %152 = load double, double* @M_PI, align 8
  %153 = load double, double* %26, align 8
  %154 = fmul double %152, %153
  %155 = fdiv double %154, 2.000000e+00
  %156 = call double @cos(double %155) #3
  store double %156, double* %27, align 8
  %157 = load double, double* @M_PI, align 8
  %158 = load double, double* %26, align 8
  %159 = fmul double %157, %158
  %160 = fdiv double %159, 2.000000e+00
  %161 = call double @sin(double %160) #3
  store double %161, double* %28, align 8
  %162 = load double, double* %18, align 8
  %163 = load double, double* %18, align 8
  %164 = fmul double %162, %163
  %165 = load double, double* %15, align 8
  %166 = fmul double 2.000000e+00, %165
  %167 = load double, double* %28, align 8
  %168 = fmul double %166, %167
  %169 = load double, double* %18, align 8
  %170 = fmul double %168, %169
  %171 = fadd double %164, %170
  %172 = load double, double* %15, align 8
  %173 = load double, double* %15, align 8
  %174 = fmul double %172, %173
  %175 = fadd double %171, %174
  %176 = load double, double* %27, align 8
  %177 = load double, double* %27, align 8
  %178 = fmul double %176, %177
  %179 = fadd double %175, %178
  store double %179, double* %29, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* %25, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %185
  %187 = load double, double* %15, align 8
  %188 = load double, double* %27, align 8
  %189 = load double, double* %18, align 8
  %190 = load double, double* %20, align 8
  %191 = load double, double* %28, align 8
  %192 = load double, double* %16, align 8
  %193 = load double, double* %29, align 8
  %194 = load double, double* %17, align 8
  %195 = call i32 @chebyshev2_fo_section(%struct.TYPE_5__* %186, double %187, double %188, double %189, double %190, double %191, double %192, double %193, double %194)
  br label %196

196:                                              ; preds = %144
  %197 = load i32, i32* %25, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %25, align 4
  br label %140

199:                                              ; preds = %41, %140
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

declare dso_local i32 @chebyshev2_fo_section(%struct.TYPE_5__*, double, double, double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
