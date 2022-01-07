; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_set_lp_rbj.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_set_lp_rbj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double, double)* @set_lp_rbj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lp_rbj(%struct.TYPE_3__* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %16 = load double, double* @M_PI, align 8
  %17 = fmul double 2.000000e+00, %16
  %18 = load double, double* %7, align 8
  %19 = fmul double %17, %18
  %20 = load double, double* %9, align 8
  %21 = fdiv double %19, %20
  store double %21, double* %11, align 8
  %22 = load double, double* %11, align 8
  %23 = call double @sin(double %22) #2
  store double %23, double* %12, align 8
  %24 = load double, double* %11, align 8
  %25 = call double @cos(double %24) #2
  store double %25, double* %13, align 8
  %26 = load double, double* %12, align 8
  %27 = load double, double* %8, align 8
  %28 = fmul double 2.000000e+00, %27
  %29 = fdiv double %26, %28
  store double %29, double* %14, align 8
  %30 = load double, double* %14, align 8
  %31 = fadd double 1.000000e+00, %30
  %32 = fdiv double 1.000000e+00, %31
  store double %32, double* %15, align 8
  %33 = load double, double* %10, align 8
  %34 = load double, double* %15, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %13, align 8
  %37 = fsub double 1.000000e+00, %36
  %38 = fmul double %35, %37
  %39 = fmul double %38, 5.000000e-01
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store double %39, double* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store double %39, double* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fadd double %46, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store double %50, double* %52, align 8
  %53 = load double, double* %13, align 8
  %54 = fmul double -2.000000e+00, %53
  %55 = load double, double* %15, align 8
  %56 = fmul double %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store double %56, double* %58, align 8
  %59 = load double, double* %14, align 8
  %60 = fsub double 1.000000e+00, %59
  %61 = load double, double* %15, align 8
  %62 = fmul double %60, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store double %62, double* %64, align 8
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
