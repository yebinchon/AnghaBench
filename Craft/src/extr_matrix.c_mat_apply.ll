; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_apply.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.mat_apply.vec = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_apply(float* %0, float* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast [4 x float]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x float]* @__const.mat_apply.vec to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %66, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load float*, float** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %23, i64 %27
  store float* %28, float** %13, align 8
  %29 = load float*, float** %13, align 8
  %30 = getelementptr inbounds float, float* %29, i32 1
  store float* %30, float** %13, align 8
  %31 = load float, float* %29, align 4
  %32 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  store float %31, float* %32, align 16
  %33 = load float*, float** %13, align 8
  %34 = getelementptr inbounds float, float* %33, i32 1
  store float* %34, float** %13, align 8
  %35 = load float, float* %33, align 4
  %36 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  store float %35, float* %36, align 4
  %37 = load float*, float** %13, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %13, align 8
  %39 = load float, float* %37, align 4
  %40 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  store float %39, float* %40, align 8
  %41 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %42 = load float*, float** %7, align 8
  %43 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %44 = call i32 @mat_vec_multiply(float* %41, float* %42, float* %43)
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %48, i64 %52
  store float* %53, float** %13, align 8
  %54 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %55 = load float, float* %54, align 16
  %56 = load float*, float** %13, align 8
  %57 = getelementptr inbounds float, float* %56, i32 1
  store float* %57, float** %13, align 8
  store float %55, float* %56, align 4
  %58 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %13, align 8
  %61 = getelementptr inbounds float, float* %60, i32 1
  store float* %61, float** %13, align 8
  store float %59, float* %60, align 4
  %62 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %63 = load float, float* %62, align 8
  %64 = load float*, float** %13, align 8
  %65 = getelementptr inbounds float, float* %64, i32 1
  store float* %65, float** %13, align 8
  store float %63, float* %64, align 4
  br label %66

66:                                               ; preds = %19
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %15

69:                                               ; preds = %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mat_vec_multiply(float*, float*, float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
