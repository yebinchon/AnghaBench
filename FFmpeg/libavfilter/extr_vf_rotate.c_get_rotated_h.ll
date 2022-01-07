; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_get_rotated_h.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_get_rotated_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@VAR_IN_W = common dso_local global i64 0, align 8
@VAR_IN_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @get_rotated_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_rotated_h(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  %15 = load i64, i64* @VAR_IN_W, align 8
  %16 = getelementptr inbounds double, double* %14, i64 %15
  %17 = load double, double* %16, align 8
  store double %17, double* %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = load i64, i64* @VAR_IN_H, align 8
  %22 = getelementptr inbounds double, double* %20, i64 %21
  %23 = load double, double* %22, align 8
  store double %23, double* %7, align 8
  %24 = load double, double* %4, align 8
  %25 = call float @sin(double %24)
  store float %25, float* %8, align 4
  %26 = load double, double* %4, align 8
  %27 = call float @cos(double %26)
  store float %27, float* %9, align 4
  %28 = load double, double* %7, align 8
  %29 = fneg double %28
  %30 = load float, float* %9, align 4
  %31 = fpext float %30 to double
  %32 = fmul double %29, %31
  %33 = call double @FFMAX(i32 0, double %32)
  %34 = load double, double* %6, align 8
  %35 = fneg double %34
  %36 = load float, float* %8, align 4
  %37 = fpext float %36 to double
  %38 = fmul double %35, %37
  %39 = call double @FFMAX(i32 0, double %38)
  %40 = fadd double %33, %39
  %41 = load double, double* %7, align 8
  %42 = load float, float* %9, align 4
  %43 = fpext float %42 to double
  %44 = fmul double %41, %43
  %45 = call double @FFMAX(i32 0, double %44)
  %46 = fadd double %40, %45
  %47 = load double, double* %6, align 8
  %48 = load float, float* %8, align 4
  %49 = fpext float %48 to double
  %50 = fmul double %47, %49
  %51 = call double @FFMAX(i32 0, double %50)
  %52 = fadd double %46, %51
  ret double %52
}

declare dso_local float @sin(double) #1

declare dso_local float @cos(double) #1

declare dso_local double @FFMAX(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
