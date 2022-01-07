; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_fwht_1d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_fwht_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, i32)* @fwht_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwht_1d(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load double*, double** %5, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %5, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fadd double %14, %17
  store double %18, double* %7, align 8
  %19 = load double*, double** %5, align 8
  %20 = getelementptr inbounds double, double* %19, i64 3
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %5, align 8
  %23 = getelementptr inbounds double, double* %22, i64 2
  %24 = load double, double* %23, align 8
  %25 = fsub double %21, %24
  store double %25, double* %8, align 8
  %26 = load double, double* %7, align 8
  %27 = load double, double* %8, align 8
  %28 = fsub double %26, %27
  %29 = fmul double %28, 5.000000e-01
  %30 = call double @llvm.trunc.f64(double %29)
  store double %30, double* %9, align 8
  %31 = load double, double* %9, align 8
  %32 = load double*, double** %5, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = fsub double %31, %34
  store double %35, double* %10, align 8
  %36 = load double, double* %9, align 8
  %37 = load double*, double** %5, align 8
  %38 = getelementptr inbounds double, double* %37, i64 2
  %39 = load double, double* %38, align 8
  %40 = fsub double %36, %39
  store double %40, double* %11, align 8
  %41 = load double, double* %7, align 8
  %42 = load double, double* %11, align 8
  %43 = fsub double %41, %42
  %44 = load double*, double** %4, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  store double %43, double* %45, align 8
  %46 = load double, double* %11, align 8
  %47 = load double*, double** %4, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  store double %46, double* %48, align 8
  %49 = load double, double* %8, align 8
  %50 = load double, double* %10, align 8
  %51 = fadd double %49, %50
  %52 = load double*, double** %4, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  store double %51, double* %53, align 8
  %54 = load double, double* %10, align 8
  %55 = load double*, double** %4, align 8
  %56 = getelementptr inbounds double, double* %55, i64 3
  store double %54, double* %56, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.trunc.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
