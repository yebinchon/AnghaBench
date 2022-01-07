; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_compute_gammaval.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_compute_gammaval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@VAR_CLIPVAL = common dso_local global i64 0, align 8
@VAR_MINVAL = common dso_local global i64 0, align 8
@VAR_MAXVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @compute_gammaval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_gammaval(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = load i64, i64* @VAR_CLIPVAL, align 8
  %15 = getelementptr inbounds double, double* %13, i64 %14
  %16 = load double, double* %15, align 8
  store double %16, double* %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load double*, double** %18, align 8
  %20 = load i64, i64* @VAR_MINVAL, align 8
  %21 = getelementptr inbounds double, double* %19, i64 %20
  %22 = load double, double* %21, align 8
  store double %22, double* %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  %26 = load i64, i64* @VAR_MAXVAL, align 8
  %27 = getelementptr inbounds double, double* %25, i64 %26
  %28 = load double, double* %27, align 8
  store double %28, double* %8, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %7, align 8
  %31 = fsub double %29, %30
  %32 = load double, double* %8, align 8
  %33 = load double, double* %7, align 8
  %34 = fsub double %32, %33
  %35 = fdiv double %31, %34
  %36 = load double, double* %4, align 8
  %37 = call double @pow(double %35, double %36) #2
  %38 = load double, double* %8, align 8
  %39 = load double, double* %7, align 8
  %40 = fsub double %38, %39
  %41 = fmul double %37, %40
  %42 = load double, double* %7, align 8
  %43 = fadd double %41, %42
  ret double %43
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
