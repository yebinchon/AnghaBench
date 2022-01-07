; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_hard_thresholding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_hard_thresholding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, float, float, i32)* @hard_thresholding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hard_thresholding(float* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load float, float* %13, align 4
  %19 = fmul float %18, 0x3F847AE140000000
  %20 = fsub float 1.000000e+00, %19
  store float %20, float* %15, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %56, %7
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = call float @FFABS(float %35)
  %37 = load float, float* %12, align 4
  %38 = fcmp ole float %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load float, float* %15, align 4
  %41 = load float*, float** %8, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fmul float %45, %40
  store float %46, float* %44, align 4
  br label %47

47:                                               ; preds = %39, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %11, align 4
  %53 = load float*, float** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds float, float* %53, i64 %54
  store float* %55, float** %8, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %21

59:                                               ; preds = %21
  ret void
}

declare dso_local float @FFABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
