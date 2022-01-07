; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_bp_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_bp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, double, double, double, double, double)* @butterworth_bp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butterworth_bp_filter(%struct.TYPE_4__* %0, i32 %1, double %2, double %3, double %4, double %5, double %6) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = srem i32 %26, 2
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %20, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %21, align 4
  %32 = load double, double* %12, align 8
  %33 = fcmp oeq double %32, 0.000000e+00
  br i1 %33, label %34, label %58

34:                                               ; preds = %7
  %35 = load double, double* %14, align 8
  %36 = fcmp oeq double %35, 0.000000e+00
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %148

58:                                               ; preds = %34, %7
  %59 = load double, double* %12, align 8
  %60 = fdiv double %59, 2.000000e+01
  %61 = call double @ff_exp10(double %60)
  store double %61, double* %12, align 8
  %62 = load double, double* %13, align 8
  %63 = fdiv double %62, 2.000000e+01
  %64 = call double @ff_exp10(double %63)
  store double %64, double* %13, align 8
  %65 = load double, double* %14, align 8
  %66 = fdiv double %65, 2.000000e+01
  %67 = call double @ff_exp10(double %66)
  store double %67, double* %14, align 8
  %68 = load double, double* %12, align 8
  %69 = load double, double* %12, align 8
  %70 = fmul double %68, %69
  %71 = load double, double* %13, align 8
  %72 = load double, double* %13, align 8
  %73 = fmul double %71, %72
  %74 = fsub double %70, %73
  %75 = load double, double* %13, align 8
  %76 = load double, double* %13, align 8
  %77 = fmul double %75, %76
  %78 = load double, double* %14, align 8
  %79 = load double, double* %14, align 8
  %80 = fmul double %78, %79
  %81 = fsub double %77, %80
  %82 = fdiv double %74, %81
  %83 = call double @sqrt(double %82) #3
  store double %83, double* %19, align 8
  %84 = load double, double* %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double 1.000000e+00, %86
  %88 = call double @pow(double %84, double %87) #3
  store double %88, double* %15, align 8
  %89 = load double, double* %14, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double 1.000000e+00, %91
  %93 = call double @pow(double %89, double %92) #3
  store double %93, double* %17, align 8
  %94 = load double, double* %19, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sitofp i32 %95 to double
  %97 = fdiv double -1.000000e+00, %96
  %98 = call double @pow(double %94, double %97) #3
  %99 = load double, double* %11, align 8
  %100 = fdiv double %99, 2.000000e+00
  %101 = call double @tan(double %100) #3
  %102 = fmul double %98, %101
  store double %102, double* %18, align 8
  %103 = load double, double* %10, align 8
  %104 = call double @cos(double %103) #3
  store double %104, double* %16, align 8
  store i32 1, i32* %22, align 4
  br label %105

105:                                              ; preds = %145, %58
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load i32, i32* %22, align 4
  %111 = sitofp i32 %110 to double
  %112 = fmul double 2.000000e+00, %111
  %113 = fsub double %112, 1.000000e+00
  %114 = load i32, i32* %9, align 4
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %113, %115
  store double %116, double* %23, align 8
  %117 = load double, double* @M_PI, align 8
  %118 = load double, double* %23, align 8
  %119 = fmul double %117, %118
  %120 = fdiv double %119, 2.000000e+00
  %121 = call double @sin(double %120) #3
  store double %121, double* %24, align 8
  %122 = load double, double* %18, align 8
  %123 = load double, double* %18, align 8
  %124 = fmul double %122, %123
  %125 = load double, double* %24, align 8
  %126 = fmul double 2.000000e+00, %125
  %127 = load double, double* %18, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %124, %128
  %130 = fadd double %129, 1.000000e+00
  store double %130, double* %25, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %136
  %138 = load double, double* %18, align 8
  %139 = load double, double* %24, align 8
  %140 = load double, double* %15, align 8
  %141 = load double, double* %17, align 8
  %142 = load double, double* %25, align 8
  %143 = load double, double* %16, align 8
  %144 = call i32 @butterworth_fo_section(%struct.TYPE_5__* %137, double %138, double %139, double %140, double %141, double %142, double %143)
  br label %145

145:                                              ; preds = %109
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %105

148:                                              ; preds = %37, %105
  ret void
}

declare dso_local double @ff_exp10(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i32 @butterworth_fo_section(%struct.TYPE_5__*, double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
