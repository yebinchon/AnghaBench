; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_cello.c_Body_Offset_Momentum.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_cello.c_Body_Offset_Momentum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Body = type { double, double, double }

@solar_mass = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Body*, double, double, double)* @Body_Offset_Momentum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Body_Offset_Momentum(%struct.Body* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.Body*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.Body* %0, %struct.Body** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %6, align 8
  %10 = fneg double %9
  %11 = load double, double* @solar_mass, align 8
  %12 = fdiv double %10, %11
  %13 = load %struct.Body*, %struct.Body** %5, align 8
  %14 = getelementptr inbounds %struct.Body, %struct.Body* %13, i32 0, i32 0
  store double %12, double* %14, align 8
  %15 = load double, double* %7, align 8
  %16 = fneg double %15
  %17 = load double, double* @solar_mass, align 8
  %18 = fdiv double %16, %17
  %19 = load %struct.Body*, %struct.Body** %5, align 8
  %20 = getelementptr inbounds %struct.Body, %struct.Body* %19, i32 0, i32 1
  store double %18, double* %20, align 8
  %21 = load double, double* %8, align 8
  %22 = fneg double %21
  %23 = load double, double* @solar_mass, align 8
  %24 = fdiv double %22, %23
  %25 = load %struct.Body*, %struct.Body** %5, align 8
  %26 = getelementptr inbounds %struct.Body, %struct.Body* %25, i32 0, i32 2
  store double %24, double* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
