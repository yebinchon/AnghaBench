; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_sphere.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_sphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@make_sphere.indices = internal global [8 x [3 x i32]] [[3 x i32] [i32 4, i32 3, i32 0], [3 x i32] [i32 1, i32 4, i32 0], [3 x i32] [i32 3, i32 4, i32 5], [3 x i32] [i32 4, i32 1, i32 5], [3 x i32] [i32 0, i32 3, i32 2], [3 x i32] [i32 0, i32 2, i32 1], [3 x i32] [i32 5, i32 2, i32 3], [3 x i32] [i32 5, i32 1, i32 2]], align 16
@make_sphere.positions = internal global [6 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], align 16
@make_sphere.uvs = internal global [6 x [3 x float]] [[3 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00], [3 x float] zeroinitializer, [3 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_sphere(float* %0, float %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %74, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %77

13:                                               ; preds = %10
  %14 = load float*, float** %4, align 8
  %15 = load float, float* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %18
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.positions, i64 0, i64 %22
  %24 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %26
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.positions, i64 0, i64 %30
  %32 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %34
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.positions, i64 0, i64 %38
  %40 = getelementptr inbounds [3 x float], [3 x float]* %39, i64 0, i64 0
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %42
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.uvs, i64 0, i64 %46
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i64 0, i64 0
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %50
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %51, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.uvs, i64 0, i64 %54
  %56 = getelementptr inbounds [3 x float], [3 x float]* %55, i64 0, i64 0
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* @make_sphere.indices, i64 0, i64 %58
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 0, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* @make_sphere.uvs, i64 0, i64 %62
  %64 = getelementptr inbounds [3 x float], [3 x float]* %63, i64 0, i64 0
  %65 = call i32 @_make_sphere(float* %14, float %15, i32 %16, float* %24, float* %32, float* %40, float* %48, float* %56, float* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 24
  %71 = load float*, float** %4, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds float, float* %71, i64 %72
  store float* %73, float** %4, align 8
  br label %74

74:                                               ; preds = %13
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %10

77:                                               ; preds = %10
  ret void
}

declare dso_local i32 @_make_sphere(float*, float, i32, float*, float*, float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
