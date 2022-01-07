; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_tilt_compensation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_tilt_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_tilt_compensation(float* %0, float %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load float*, float** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %11, i64 %14
  %16 = load float, float* %15, align 4
  store float %16, float* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %37, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load float, float* %6, align 4
  %24 = load float*, float** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %24, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fmul float %23, %29
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fsub float %35, %30
  store float %36, float* %34, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load float, float* %6, align 4
  %42 = load float*, float** %5, align 8
  %43 = load float, float* %42, align 4
  %44 = fmul float %41, %43
  %45 = load float*, float** %7, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = fsub float %47, %44
  store float %48, float* %46, align 4
  %49 = load float, float* %9, align 4
  %50 = load float*, float** %5, align 8
  store float %49, float* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
