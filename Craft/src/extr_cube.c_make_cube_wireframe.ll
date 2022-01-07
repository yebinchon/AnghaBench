; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_cube_wireframe.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_cube_wireframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@make_cube_wireframe.positions = internal constant [8 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16
@make_cube_wireframe.indices = internal constant [24 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 4, i32 1, i32 3, i32 1, i32 5, i32 2, i32 3, i32 2, i32 6, i32 3, i32 7, i32 4, i32 5, i32 4, i32 6, i32 5, i32 7, i32 6, i32 7], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_cube_wireframe(float* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = load float*, float** %6, align 8
  store float* %14, float** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %56, %5
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 24
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [24 x i32], [24 x i32]* @make_cube_wireframe.indices, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load float, float* %7, align 4
  %24 = load float, float* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @make_cube_wireframe.positions, i64 0, i64 %26
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 0, i64 0
  %29 = load float, float* %28, align 4
  %30 = fmul float %24, %29
  %31 = fadd float %23, %30
  %32 = load float*, float** %11, align 8
  %33 = getelementptr inbounds float, float* %32, i32 1
  store float* %33, float** %11, align 8
  store float %31, float* %32, align 4
  %34 = load float, float* %8, align 4
  %35 = load float, float* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @make_cube_wireframe.positions, i64 0, i64 %37
  %39 = getelementptr inbounds [3 x float], [3 x float]* %38, i64 0, i64 1
  %40 = load float, float* %39, align 4
  %41 = fmul float %35, %40
  %42 = fadd float %34, %41
  %43 = load float*, float** %11, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %11, align 8
  store float %42, float* %43, align 4
  %45 = load float, float* %9, align 4
  %46 = load float, float* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @make_cube_wireframe.positions, i64 0, i64 %48
  %50 = getelementptr inbounds [3 x float], [3 x float]* %49, i64 0, i64 2
  %51 = load float, float* %50, align 4
  %52 = fmul float %46, %51
  %53 = fadd float %45, %52
  %54 = load float*, float** %11, align 8
  %55 = getelementptr inbounds float, float* %54, i32 1
  store float* %55, float** %11, align 8
  store float %53, float* %54, align 4
  br label %56

56:                                               ; preds = %18
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %15

59:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
