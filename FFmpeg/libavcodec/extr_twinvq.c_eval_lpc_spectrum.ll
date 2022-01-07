; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpc_spectrum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpc_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, float, i32)* @eval_lpc_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @eval_lpc_spectrum(float* %0, float %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  store float 5.000000e-01, float* %8, align 4
  store float 5.000000e-01, float* %9, align 4
  %11 = load float, float* %5, align 4
  %12 = fmul float 2.000000e+00, %11
  store float %12, float* %10, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %58, %3
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float, float* %10, align 4
  %25 = fsub float %23, %24
  %26 = load float, float* %9, align 4
  %27 = fmul float %26, %25
  store float %27, float* %9, align 4
  %28 = load float*, float** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %28, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float, float* %10, align 4
  %35 = fsub float %33, %34
  %36 = load float, float* %8, align 4
  %37 = fmul float %36, %35
  store float %37, float* %8, align 4
  %38 = load float*, float** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load float, float* %10, align 4
  %45 = fsub float %43, %44
  %46 = load float, float* %9, align 4
  %47 = fmul float %46, %45
  store float %47, float* %9, align 4
  %48 = load float*, float** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %48, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float, float* %10, align 4
  %55 = fsub float %53, %54
  %56 = load float, float* %8, align 4
  %57 = fmul float %56, %55
  store float %57, float* %8, align 4
  br label %58

58:                                               ; preds = %18
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %7, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load float, float* %8, align 4
  %63 = load float, float* %10, align 4
  %64 = fsub float 2.000000e+00, %63
  %65 = fmul float %62, %64
  %66 = load float, float* %8, align 4
  %67 = fmul float %66, %65
  store float %67, float* %8, align 4
  %68 = load float, float* %9, align 4
  %69 = load float, float* %10, align 4
  %70 = fadd float 2.000000e+00, %69
  %71 = fmul float %68, %70
  %72 = load float, float* %9, align 4
  %73 = fmul float %72, %71
  store float %73, float* %9, align 4
  %74 = load float, float* %8, align 4
  %75 = load float, float* %9, align 4
  %76 = fadd float %74, %75
  %77 = fpext float %76 to double
  %78 = fdiv double 5.000000e-01, %77
  %79 = fptrunc double %78 to float
  ret float %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
