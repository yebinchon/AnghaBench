; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcStretchTexCoords.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcStretchTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float**, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcStretchTexCoords(i32* %0, float* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call float @EvalWaveForm(i32* %7)
  %9 = fdiv float 1.000000e+00, %8
  store float %9, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %12 = load float**, float*** %11, align 8
  %13 = getelementptr inbounds float*, float** %12, i64 0
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float %10, float* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %17 = load float**, float*** %16, align 8
  %18 = getelementptr inbounds float*, float** %17, i64 1
  %19 = load float*, float** %18, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = load float, float* %5, align 4
  %22 = fmul float 5.000000e-01, %21
  %23 = fsub float 5.000000e-01, %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  store float %23, float* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load float**, float*** %27, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  store float 0.000000e+00, float* %31, align 4
  %32 = load float, float* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load float**, float*** %33, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 1
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float %32, float* %37, align 4
  %38 = load float, float* %5, align 4
  %39 = fmul float 5.000000e-01, %38
  %40 = fsub float 5.000000e-01, %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  store float %40, float* %43, align 4
  %44 = load float*, float** %4, align 8
  %45 = call i32 @RB_CalcTransformTexCoords(%struct.TYPE_3__* %6, float* %44)
  ret void
}

declare dso_local float @EvalWaveForm(i32*) #1

declare dso_local i32 @RB_CalcTransformTexCoords(%struct.TYPE_3__*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
