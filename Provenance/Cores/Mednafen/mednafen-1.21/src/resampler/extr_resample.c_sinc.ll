; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_sinc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_sinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDef = type { i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, i32, %struct.FuncDef*)* @sinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @sinc(float %0, float %1, i32 %2, %struct.FuncDef* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.FuncDef*, align 8
  %10 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.FuncDef* %3, %struct.FuncDef** %9, align 8
  %11 = load float, float* %7, align 4
  %12 = load float, float* %6, align 4
  %13 = fmul float %11, %12
  store float %13, float* %10, align 4
  %14 = load float, float* %7, align 4
  %15 = fptosi float %14 to i32
  %16 = call double @fabs(i32 %15)
  %17 = fcmp olt double %16, 0x3EB0C6F7A0B5ED8D
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load float, float* %6, align 4
  store float %19, float* %5, align 4
  br label %52

20:                                               ; preds = %4
  %21 = load float, float* %7, align 4
  %22 = fptosi float %21 to i32
  %23 = call double @fabs(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double 5.000000e-01, %25
  %27 = fcmp ogt double %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store float 0.000000e+00, float* %5, align 4
  br label %52

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load float, float* %6, align 4
  %32 = load float, float* @M_PI, align 4
  %33 = load float, float* %10, align 4
  %34 = fmul float %32, %33
  %35 = call float @sin(float %34)
  %36 = fmul float %31, %35
  %37 = load float, float* @M_PI, align 4
  %38 = load float, float* %10, align 4
  %39 = fmul float %37, %38
  %40 = fdiv float %36, %39
  %41 = load float, float* %7, align 4
  %42 = fpext float %41 to double
  %43 = fmul double 2.000000e+00, %42
  %44 = load i32, i32* %8, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %43, %45
  %47 = fptosi double %46 to i32
  %48 = call double @fabs(i32 %47)
  %49 = load %struct.FuncDef*, %struct.FuncDef** %9, align 8
  %50 = call float @compute_func(double %48, %struct.FuncDef* %49)
  %51 = fmul float %40, %50
  store float %51, float* %5, align 4
  br label %52

52:                                               ; preds = %30, %28, %18
  %53 = load float, float* %5, align 4
  ret float %53
}

declare dso_local double @fabs(i32) #1

declare dso_local float @sin(float) #1

declare dso_local float @compute_func(double, %struct.FuncDef*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
