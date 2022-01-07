; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_haar1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_haar1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SQRT1_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32)* @celt_haar1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_haar1(float* %0, i32 %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %79, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %75, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load float*, float** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 0
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %23, i64 %31
  %33 = load float, float* %32, align 4
  store float %33, float* %9, align 4
  %34 = load float*, float** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %34, i64 %42
  %44 = load float, float* %43, align 4
  store float %44, float* %10, align 4
  %45 = load float, float* %9, align 4
  %46 = load float, float* %10, align 4
  %47 = fadd float %45, %46
  %48 = load float, float* @M_SQRT1_2, align 4
  %49 = fmul float %47, %48
  %50 = load float*, float** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %53, 0
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %50, i64 %58
  store float %49, float* %59, align 4
  %60 = load float, float* %9, align 4
  %61 = load float, float* %10, align 4
  %62 = fsub float %60, %61
  %63 = load float, float* @M_SQRT1_2, align 4
  %64 = fmul float %62, %63
  %65 = load float*, float** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %65, i64 %73
  store float %64, float* %74, align 4
  br label %75

75:                                               ; preds = %22
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %18

78:                                               ; preds = %18
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %13

82:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
