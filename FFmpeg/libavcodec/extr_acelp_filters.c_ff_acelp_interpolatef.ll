; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_interpolatef.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_interpolatef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_acelp_interpolatef(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %74, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load float*, float** %9, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %29, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %10, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %36, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %35, %42
  %44 = load float, float* %18, align 4
  %45 = fadd float %44, %43
  store float %45, float* %18, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load float*, float** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %51, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %10, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %58, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fmul float %57, %64
  %66 = load float, float* %18, align 4
  %67 = fadd float %66, %65
  store float %67, float* %18, align 4
  br label %24

68:                                               ; preds = %24
  %69 = load float, float* %18, align 4
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float %69, float* %73, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %19

77:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
