; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_sum_square_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_sum_square_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float ([2 x float]*, i32)* @sbr_sum_square_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @sbr_sum_square_c([2 x float]* %0, i32 %1) #0 {
  %3 = alloca [2 x float]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store [2 x float]* %0, [2 x float]** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %81, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %84

12:                                               ; preds = %8
  %13 = load [2 x float]*, [2 x float]** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 %16
  %18 = getelementptr inbounds [2 x float], [2 x float]* %17, i64 0, i64 0
  %19 = load float, float* %18, align 4
  %20 = load [2 x float]*, [2 x float]** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 0
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 %23
  %25 = getelementptr inbounds [2 x float], [2 x float]* %24, i64 0, i64 0
  %26 = load float, float* %25, align 4
  %27 = fmul float %19, %26
  %28 = load float, float* %5, align 4
  %29 = fadd float %28, %27
  store float %29, float* %5, align 4
  %30 = load [2 x float]*, [2 x float]** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 0
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 %33
  %35 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 1
  %36 = load float, float* %35, align 4
  %37 = load [2 x float]*, [2 x float]** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 0
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x float], [2 x float]* %37, i64 %40
  %42 = getelementptr inbounds [2 x float], [2 x float]* %41, i64 0, i64 1
  %43 = load float, float* %42, align 4
  %44 = fmul float %36, %43
  %45 = load float, float* %6, align 4
  %46 = fadd float %45, %44
  store float %46, float* %6, align 4
  %47 = load [2 x float]*, [2 x float]** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x float], [2 x float]* %47, i64 %50
  %52 = getelementptr inbounds [2 x float], [2 x float]* %51, i64 0, i64 0
  %53 = load float, float* %52, align 4
  %54 = load [2 x float]*, [2 x float]** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x float], [2 x float]* %54, i64 %57
  %59 = getelementptr inbounds [2 x float], [2 x float]* %58, i64 0, i64 0
  %60 = load float, float* %59, align 4
  %61 = fmul float %53, %60
  %62 = load float, float* %5, align 4
  %63 = fadd float %62, %61
  store float %63, float* %5, align 4
  %64 = load [2 x float]*, [2 x float]** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x float], [2 x float]* %64, i64 %67
  %69 = getelementptr inbounds [2 x float], [2 x float]* %68, i64 0, i64 1
  %70 = load float, float* %69, align 4
  %71 = load [2 x float]*, [2 x float]** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x float], [2 x float]* %71, i64 %74
  %76 = getelementptr inbounds [2 x float], [2 x float]* %75, i64 0, i64 1
  %77 = load float, float* %76, align 4
  %78 = fmul float %70, %77
  %79 = load float, float* %6, align 4
  %80 = fadd float %79, %78
  store float %80, float* %6, align 4
  br label %81

81:                                               ; preds = %12
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %7, align 4
  br label %8

84:                                               ; preds = %8
  %85 = load float, float* %5, align 4
  %86 = load float, float* %6, align 4
  %87 = fadd float %85, %86
  ret float %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
