; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_compute_gammaval709.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_compute_gammaval709.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@VAR_CLIPVAL = common dso_local global i64 0, align 8
@VAR_MINVAL = common dso_local global i64 0, align 8
@VAR_MAXVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @compute_gammaval709 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_gammaval709(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  %15 = load i64, i64* @VAR_CLIPVAL, align 8
  %16 = getelementptr inbounds double, double* %14, i64 %15
  %17 = load double, double* %16, align 8
  store double %17, double* %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = load i64, i64* @VAR_MINVAL, align 8
  %22 = getelementptr inbounds double, double* %20, i64 %21
  %23 = load double, double* %22, align 8
  store double %23, double* %7, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  %27 = load i64, i64* @VAR_MAXVAL, align 8
  %28 = getelementptr inbounds double, double* %26, i64 %27
  %29 = load double, double* %28, align 8
  store double %29, double* %8, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* %7, align 8
  %32 = fsub double %30, %31
  %33 = load double, double* %8, align 8
  %34 = load double, double* %7, align 8
  %35 = fsub double %33, %34
  %36 = fdiv double %32, %35
  store double %36, double* %9, align 8
  %37 = load double, double* %9, align 8
  %38 = fcmp olt double %37, 1.800000e-02
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load double, double* %9, align 8
  %41 = fmul double 4.500000e+00, %40
  br label %49

42:                                               ; preds = %2
  %43 = load double, double* %9, align 8
  %44 = load double, double* %4, align 8
  %45 = fdiv double 1.000000e+00, %44
  %46 = call double @pow(double %43, double %45) #2
  %47 = fmul double 1.099000e+00, %46
  %48 = fsub double %47, 9.900000e-02
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi double [ %41, %39 ], [ %48, %42 ]
  store double %50, double* %9, align 8
  %51 = load double, double* %9, align 8
  %52 = load double, double* %8, align 8
  %53 = load double, double* %7, align 8
  %54 = fsub double %52, %53
  %55 = fmul double %51, %54
  %56 = load double, double* %7, align 8
  %57 = fadd double %55, %56
  ret double %57
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
