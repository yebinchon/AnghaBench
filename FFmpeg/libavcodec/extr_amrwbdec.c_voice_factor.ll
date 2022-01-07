; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_voice_factor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_voice_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (float*, float*, i32)* }

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, float, float*, float, %struct.TYPE_3__*)* @voice_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @voice_factor(float* %0, float %1, float* %2, float %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64 (float*, float*, i32)*, i64 (float*, float*, i32)** %14, align 8
  %16 = load float*, float** %6, align 8
  %17 = load float*, float** %6, align 8
  %18 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %19 = call i64 %15(float* %16, float* %17, i32 %18)
  %20 = sitofp i64 %19 to double
  %21 = load float, float* %7, align 4
  %22 = fpext float %21 to double
  %23 = fmul double %20, %22
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = fmul double %23, %25
  store double %26, double* %11, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64 (float*, float*, i32)*, i64 (float*, float*, i32)** %28, align 8
  %30 = load float*, float** %8, align 8
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %33 = call i64 %29(float* %30, float* %31, i32 %32)
  %34 = sitofp i64 %33 to double
  %35 = load float, float* %9, align 4
  %36 = fpext float %35 to double
  %37 = fmul double %34, %36
  %38 = load float, float* %9, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %37, %39
  store double %40, double* %12, align 8
  %41 = load double, double* %11, align 8
  %42 = load double, double* %12, align 8
  %43 = fsub double %41, %42
  %44 = load double, double* %11, align 8
  %45 = load double, double* %12, align 8
  %46 = fadd double %44, %45
  %47 = fadd double %46, 1.000000e-02
  %48 = fdiv double %43, %47
  %49 = fptrunc double %48 to float
  ret float %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
