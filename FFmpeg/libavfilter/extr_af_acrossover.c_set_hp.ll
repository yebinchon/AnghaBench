; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrossover.c_set_hp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrossover.c_set_hp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32, i32, i32 }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, float, float)* @set_hp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hp(%struct.TYPE_3__* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %14 = load i32, i32* @M_PI, align 4
  %15 = mul nsw i32 2, %14
  %16 = sitofp i32 %15 to float
  %17 = load float, float* %6, align 4
  %18 = fmul float %16, %17
  %19 = load float, float* %8, align 4
  %20 = fdiv float %18, %19
  %21 = fpext float %20 to double
  store double %21, double* %9, align 8
  %22 = load double, double* %9, align 8
  %23 = call double @sin(double %22) #2
  store double %23, double* %10, align 8
  %24 = load double, double* %9, align 8
  %25 = call double @cos(double %24) #2
  store double %25, double* %11, align 8
  %26 = load double, double* %10, align 8
  %27 = load float, float* %7, align 4
  %28 = fmul float 2.000000e+00, %27
  %29 = fpext float %28 to double
  %30 = fdiv double %26, %29
  store double %30, double* %12, align 8
  %31 = load double, double* %12, align 8
  %32 = fadd double 1.000000e+00, %31
  %33 = fdiv double 1.000000e+00, %32
  store double %33, double* %13, align 8
  %34 = load double, double* %13, align 8
  %35 = load double, double* %11, align 8
  %36 = fadd double 1.000000e+00, %35
  %37 = fmul double %34, %36
  %38 = fdiv double %37, 2.000000e+00
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store double %38, double* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fmul double -2.000000e+00, %43
  %45 = fptosi double %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fptosi double %50 to i32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load double, double* %11, align 8
  %55 = fmul double -2.000000e+00, %54
  %56 = load double, double* %13, align 8
  %57 = fmul double %55, %56
  %58 = fptosi double %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load double, double* %12, align 8
  %62 = fsub double 1.000000e+00, %61
  %63 = load double, double* %13, align 8
  %64 = fmul double %62, %63
  %65 = fptosi double %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
