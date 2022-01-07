; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_set_matrix_3d.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_set_matrix_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_matrix_3d(float* %0, i32 %1, i32 %2, float %3, float %4, float %5, float %6, float %7, float %8, i32 %9, i32 %10) #0 {
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [16 x float], align 16
  %24 = alloca [16 x float], align 16
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  store float* %0, float** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sitofp i32 %29 to float
  %31 = load i32, i32* %14, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  store float %33, float* %25, align 4
  store float 1.250000e-01, float* %26, align 4
  %34 = load i32, i32* %22, align 4
  %35 = mul nsw i32 %34, 32
  %36 = add nsw i32 %35, 64
  %37 = sitofp i32 %36 to float
  store float %37, float* %27, align 4
  %38 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %39 = call i32 @mat_identity(float* %38)
  %40 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %41 = load float, float* %15, align 4
  %42 = fneg float %41
  %43 = load float, float* %16, align 4
  %44 = fneg float %43
  %45 = load float, float* %17, align 4
  %46 = fneg float %45
  %47 = call i32 @mat_translate(float* %40, float %42, float %44, float %46)
  %48 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %49 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %50 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %51 = call i32 @mat_multiply(float* %48, float* %49, float* %50)
  %52 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %53 = load float, float* %18, align 4
  %54 = call i32 @cosf(float %53)
  %55 = load float, float* %18, align 4
  %56 = call i32 @sinf(float %55)
  %57 = load float, float* %19, align 4
  %58 = call i32 @mat_rotate(float* %52, i32 %54, i32 0, i32 %56, float %57)
  %59 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %60 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %61 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %62 = call i32 @mat_multiply(float* %59, float* %60, float* %61)
  %63 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %64 = load float, float* %18, align 4
  %65 = fneg float %64
  %66 = call i32 @mat_rotate(float* %63, i32 0, i32 1, i32 0, float %65)
  %67 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %68 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %69 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %70 = call i32 @mat_multiply(float* %67, float* %68, float* %69)
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %11
  %74 = load i32, i32* %21, align 4
  store i32 %74, i32* %28, align 4
  %75 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %76 = load i32, i32* %28, align 4
  %77 = sub nsw i32 0, %76
  %78 = sitofp i32 %77 to float
  %79 = load float, float* %25, align 4
  %80 = fmul float %78, %79
  %81 = fptosi float %80 to i32
  %82 = load i32, i32* %28, align 4
  %83 = sitofp i32 %82 to float
  %84 = load float, float* %25, align 4
  %85 = fmul float %83, %84
  %86 = fptosi float %85 to i32
  %87 = load i32, i32* %28, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* %28, align 4
  %90 = load float, float* %27, align 4
  %91 = fneg float %90
  %92 = load float, float* %27, align 4
  %93 = call i32 @mat_ortho(float* %75, i32 %81, i32 %86, i32 %88, i32 %89, float %91, float %92)
  br label %101

94:                                               ; preds = %11
  %95 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %96 = load float, float* %20, align 4
  %97 = load float, float* %25, align 4
  %98 = load float, float* %26, align 4
  %99 = load float, float* %27, align 4
  %100 = call i32 @mat_perspective(float* %95, float %96, float %97, float %98, float %99)
  br label %101

101:                                              ; preds = %94, %73
  %102 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %103 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 0, i64 0
  %104 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %105 = call i32 @mat_multiply(float* %102, float* %103, float* %104)
  %106 = load float*, float** %12, align 8
  %107 = call i32 @mat_identity(float* %106)
  %108 = load float*, float** %12, align 8
  %109 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 0, i64 0
  %110 = load float*, float** %12, align 8
  %111 = call i32 @mat_multiply(float* %108, float* %109, float* %110)
  ret void
}

declare dso_local i32 @mat_identity(float*) #1

declare dso_local i32 @mat_translate(float*, float, float, float) #1

declare dso_local i32 @mat_multiply(float*, float*, float*) #1

declare dso_local i32 @mat_rotate(float*, i32, i32, i32, float) #1

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @sinf(float) #1

declare dso_local i32 @mat_ortho(float*, i32, i32, i32, i32, float, float) #1

declare dso_local i32 @mat_perspective(float*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
