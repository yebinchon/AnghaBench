; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_ProjectPointOnPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_ProjectPointOnPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProjectPointOnPlane(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %10 = load float*, float** %6, align 8
  %11 = load float*, float** %6, align 8
  %12 = call float @DotProduct(float* %10, float* %11)
  store float %12, float* %9, align 4
  %13 = load float, float* %9, align 4
  %14 = call float @Q_fabs(float %13)
  %15 = fcmp une float %14, 0.000000e+00
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load float, float* %9, align 4
  %19 = fdiv float 1.000000e+00, %18
  store float %19, float* %9, align 4
  %20 = load float*, float** %6, align 8
  %21 = load float*, float** %5, align 8
  %22 = call float @DotProduct(float* %20, float* %21)
  %23 = load float, float* %9, align 4
  %24 = fmul float %22, %23
  store float %24, float* %7, align 4
  %25 = load float*, float** %6, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = load float, float* %9, align 4
  %29 = fmul float %27, %28
  %30 = load float*, float** %8, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float %29, float* %31, align 4
  %32 = load float*, float** %6, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = load float, float* %9, align 4
  %36 = fmul float %34, %35
  %37 = load float*, float** %8, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float %36, float* %38, align 4
  %39 = load float*, float** %6, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = load float, float* %9, align 4
  %43 = fmul float %41, %42
  %44 = load float*, float** %8, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  store float %43, float* %45, align 4
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float, float* %7, align 4
  %50 = load float*, float** %8, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fmul float %49, %52
  %54 = fsub float %48, %53
  %55 = load float*, float** %4, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  store float %54, float* %56, align 4
  %57 = load float*, float** %5, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float, float* %7, align 4
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  %64 = fmul float %60, %63
  %65 = fsub float %59, %64
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  store float %65, float* %67, align 4
  %68 = load float*, float** %5, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = load float, float* %7, align 4
  %72 = load float*, float** %8, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  %74 = load float, float* %73, align 4
  %75 = fmul float %71, %74
  %76 = fsub float %70, %75
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float %76, float* %78, align 4
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local float @Q_fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
