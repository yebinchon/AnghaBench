; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_set_matrix_item.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_set_matrix_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_matrix_item(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x float], align 16
  %10 = alloca [16 x float], align 16
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to float
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %17, %19
  store float %20, float* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 64, %21
  %23 = sitofp i32 %22 to float
  store float %23, float* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sitofp i32 %24 to float
  %26 = load float, float* %12, align 4
  %27 = fdiv float %25, %26
  %28 = fdiv float %27, 2.000000e+00
  store float %28, float* %13, align 4
  %29 = load float, float* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %29, %31
  %33 = fmul float %32, 2.000000e+00
  %34 = fsub float 1.000000e+00, %33
  store float %34, float* %14, align 4
  %35 = load float, float* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %35, %37
  %39 = fmul float %38, 2.000000e+00
  %40 = fsub float 1.000000e+00, %39
  store float %40, float* %15, align 4
  %41 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %42 = call i32 @mat_identity(float* %41)
  %43 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %44 = load i32, i32* @PI, align 4
  %45 = sub nsw i32 0, %44
  %46 = sdiv i32 %45, 4
  %47 = call i32 @mat_rotate(float* %43, i32 0, i32 1, i32 0, i32 %46)
  %48 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %49 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %50 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %51 = call i32 @mat_multiply(float* %48, float* %49, float* %50)
  %52 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %53 = load i32, i32* @PI, align 4
  %54 = sub nsw i32 0, %53
  %55 = sdiv i32 %54, 10
  %56 = call i32 @mat_rotate(float* %52, i32 1, i32 0, i32 0, i32 %55)
  %57 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %59 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %60 = call i32 @mat_multiply(float* %57, float* %58, float* %59)
  %61 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %62 = load float, float* %13, align 4
  %63 = fneg float %62
  %64 = load float, float* %11, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* %13, align 4
  %67 = load float, float* %11, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %13, align 4
  %70 = fneg float %69
  %71 = load float, float* %13, align 4
  %72 = call i32 @mat_ortho(float* %61, float %65, float %68, float %70, float %71, i32 -1, i32 1)
  %73 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %74 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %75 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %76 = call i32 @mat_multiply(float* %73, float* %74, float* %75)
  %77 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %78 = load float, float* %14, align 4
  %79 = fneg float %78
  %80 = load float, float* %15, align 4
  %81 = fneg float %80
  %82 = call i32 @mat_translate(float* %77, float %79, float %81, i32 0)
  %83 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %84 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %85 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %86 = call i32 @mat_multiply(float* %83, float* %84, float* %85)
  %87 = load float*, float** %5, align 8
  %88 = call i32 @mat_identity(float* %87)
  %89 = load float*, float** %5, align 8
  %90 = getelementptr inbounds [16 x float], [16 x float]* %9, i64 0, i64 0
  %91 = load float*, float** %5, align 8
  %92 = call i32 @mat_multiply(float* %89, float* %90, float* %91)
  ret void
}

declare dso_local i32 @mat_identity(float*) #1

declare dso_local i32 @mat_rotate(float*, i32, i32, i32, i32) #1

declare dso_local i32 @mat_multiply(float*, float*, float*) #1

declare dso_local i32 @mat_ortho(float*, float, float, float, float, i32, i32) #1

declare dso_local i32 @mat_translate(float*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
