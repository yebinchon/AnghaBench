; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_apply_order_2_transfer_function.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_apply_order_2_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_acelp_apply_order_2_transfer_function(float* %0, float* %1, float* %2, float* %3, float %4, float* %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float %4, float* %12, align 4
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %74, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load float, float* %12, align 4
  %23 = load float*, float** %9, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %22, %27
  %29 = load float*, float** %11, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %13, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = fmul float %31, %34
  %36 = fsub float %28, %35
  %37 = load float*, float** %11, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %13, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  %44 = fsub float %36, %43
  store float %44, float* %16, align 4
  %45 = load float, float* %16, align 4
  %46 = load float*, float** %10, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %13, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = fmul float %48, %51
  %53 = fadd float %45, %52
  %54 = load float*, float** %10, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %13, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = fmul float %56, %59
  %61 = fadd float %53, %60
  %62 = load float*, float** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  store float %61, float* %65, align 4
  %66 = load float*, float** %13, align 8
  %67 = getelementptr inbounds float, float* %66, i64 0
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %13, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  store float %68, float* %70, align 4
  %71 = load float, float* %16, align 4
  %72 = load float*, float** %13, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  store float %71, float* %73, align 4
  br label %74

74:                                               ; preds = %21
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %17

77:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
