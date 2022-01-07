; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_gamma_correct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_gamma_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorSystem = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ColorSystem*, double*)* @gamma_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gamma_correct(%struct.ColorSystem* %0, double* %1) #0 {
  %3 = alloca %struct.ColorSystem*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.ColorSystem* %0, %struct.ColorSystem** %3, align 8
  store double* %1, double** %4, align 8
  %7 = load %struct.ColorSystem*, %struct.ColorSystem** %3, align 8
  %8 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  store double %9, double* %5, align 8
  %10 = load double, double* %5, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  store double 1.800000e-02, double* %6, align 8
  %13 = load double*, double** %4, align 8
  %14 = load double, double* %13, align 8
  %15 = load double, double* %6, align 8
  %16 = fcmp olt double %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load double, double* %6, align 8
  %19 = call double @pow(double %18, i32 0)
  %20 = fmul double 1.099000e+00, %19
  %21 = fsub double %20, 9.900000e-02
  %22 = load double, double* %6, align 8
  %23 = fdiv double %21, %22
  %24 = load double*, double** %4, align 8
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %23
  store double %26, double* %24, align 8
  br label %34

27:                                               ; preds = %12
  %28 = load double*, double** %4, align 8
  %29 = load double, double* %28, align 8
  %30 = call double @pow(double %29, i32 0)
  %31 = fmul double 1.099000e+00, %30
  %32 = fsub double %31, 9.900000e-02
  %33 = load double*, double** %4, align 8
  store double %32, double* %33, align 8
  br label %34

34:                                               ; preds = %27, %17
  br label %43

35:                                               ; preds = %2
  %36 = load double*, double** %4, align 8
  %37 = load double, double* %36, align 8
  %38 = load double, double* %5, align 8
  %39 = fdiv double 1.000000e+00, %38
  %40 = fptosi double %39 to i32
  %41 = call double @pow(double %37, i32 %40)
  %42 = load double*, double** %4, align 8
  store double %41, double* %42, align 8
  br label %43

43:                                               ; preds = %35, %34
  ret void
}

declare dso_local double @pow(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
