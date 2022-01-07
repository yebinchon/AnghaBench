; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_precalc_coef.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_precalc_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, double)* @hqdn3d_precalc_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqdn3d_precalc_coef(i16* %0, double %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i16* %0, i16** %3, align 8
  store double %1, double* %4, align 8
  %10 = call double @log(double 2.500000e-01) #3
  %11 = load double, double* %4, align 8
  %12 = call double @MIN(double %11, double 2.520000e+02)
  %13 = fdiv double %12, 2.550000e+02
  %14 = fsub double 1.000000e+00, %13
  %15 = fsub double %14, 1.000000e-05
  %16 = call double @log(double %15) #3
  %17 = fdiv double %10, %16
  store double %17, double* %6, align 8
  store i32 -4080, i32* %5, align 4
  br label %18

18:                                               ; preds = %52, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 4080
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = sitofp i32 %22 to double
  %24 = fadd double %23, 4.687500e-01
  %25 = fdiv double %24, 1.600000e+01
  store double %25, double* %9, align 8
  %26 = load double, double* %9, align 8
  %27 = call double @ABS(double %26)
  %28 = fdiv double %27, 2.550000e+02
  %29 = fsub double 1.000000e+00, %28
  store double %29, double* %7, align 8
  %30 = load double, double* %7, align 8
  %31 = load double, double* %6, align 8
  %32 = call double @pow(double %30, double %31) #3
  %33 = fmul double %32, 2.560000e+02
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  store double %35, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load double, double* %8, align 8
  %40 = fsub double %39, 5.000000e-01
  br label %44

41:                                               ; preds = %21
  %42 = load double, double* %8, align 8
  %43 = fadd double %42, 5.000000e-01
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi double [ %40, %38 ], [ %43, %41 ]
  %46 = fptosi double %45 to i16
  %47 = load i16*, i16** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 4096, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %47, i64 %50
  store i16 %46, i16* %51, align 2
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %18

55:                                               ; preds = %18
  %56 = load double, double* %4, align 8
  %57 = fcmp une double %56, 0.000000e+00
  %58 = zext i1 %57 to i32
  %59 = trunc i32 %58 to i16
  %60 = load i16*, i16** %3, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 0
  store i16 %59, i16* %61, align 2
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

declare dso_local double @MIN(double, double) #2

declare dso_local double @ABS(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
