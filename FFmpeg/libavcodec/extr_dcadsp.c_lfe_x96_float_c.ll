; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_x96_float_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_x96_float_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @lfe_x96_float_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lfe_x96_float_c(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load float*, float** %7, align 8
  %14 = load float, float* %13, align 4
  store float %14, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %49, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load float*, float** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float 2.500000e-01, %24
  %26 = load float, float* %9, align 4
  %27 = fmul float 7.500000e-01, %26
  %28 = fadd float %25, %27
  store float %28, float* %11, align 4
  %29 = load float*, float** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fmul float 7.500000e-01, %33
  %35 = load float, float* %9, align 4
  %36 = fmul float 2.500000e-01, %35
  %37 = fadd float %34, %36
  store float %37, float* %12, align 4
  %38 = load float*, float** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %9, align 4
  %43 = load float, float* %11, align 4
  %44 = load float*, float** %5, align 8
  %45 = getelementptr inbounds float, float* %44, i32 1
  store float* %45, float** %5, align 8
  store float %43, float* %44, align 4
  %46 = load float, float* %12, align 4
  %47 = load float*, float** %5, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %5, align 8
  store float %46, float* %47, align 4
  br label %49

49:                                               ; preds = %19
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load float, float* %9, align 4
  %54 = load float*, float** %7, align 8
  store float %53, float* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
