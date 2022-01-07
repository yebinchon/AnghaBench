; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_time_random_matrix.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_time_random_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf ms\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @time_random_matrix(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call float* @random_matrix(i32 %22, i32 %23)
  store float* %24, float** %11, align 8
  br label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call float* @random_matrix(i32 %26, i32 %27)
  store float* %28, float** %11, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call float* @random_matrix(i32 %41, i32 %42)
  store float* %43, float** %13, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call float* @random_matrix(i32 %45, i32 %46)
  store float* %47, float** %13, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call float* @random_matrix(i32 %57, i32 %58)
  store float* %59, float** %15, align 8
  %60 = call i64 (...) @clock()
  store i64 %60, i64* %17, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %77, %55
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load float*, float** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load float*, float** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load float*, float** %15, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @gemm_cpu(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 1, float* %70, i32 %71, float* %72, i32 %73, i32 1, float* %74, i32 %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %61

80:                                               ; preds = %61
  %81 = call i64 (...) @clock()
  store i64 %81, i64* %18, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %17, align 8
  %90 = sub nsw i64 %88, %89
  %91 = sitofp i64 %90 to float
  %92 = load float, float* @CLOCKS_PER_SEC, align 4
  %93 = fdiv float %91, %92
  %94 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, float %93)
  %95 = load float*, float** %11, align 8
  %96 = call i32 @free(float* %95)
  %97 = load float*, float** %13, align 8
  %98 = call i32 @free(float* %97)
  %99 = load float*, float** %15, align 8
  %100 = call i32 @free(float* %99)
  ret void
}

declare dso_local float* @random_matrix(i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @gemm_cpu(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, float) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
