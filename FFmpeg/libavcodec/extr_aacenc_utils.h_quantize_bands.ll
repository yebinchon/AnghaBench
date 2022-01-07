; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_quantize_bands.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_quantize_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32, i32, i32, float, float)* @quantize_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quantize_bands(i32* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %57, %8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load float*, float** %11, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float, float* %15, align 4
  %31 = fmul float %29, %30
  store float %31, float* %18, align 4
  %32 = load float, float* %18, align 4
  %33 = load float, float* %16, align 4
  %34 = fadd float %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = sitofp i32 %35 to float
  %37 = call i64 @FFMIN(float %34, float %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %24
  %42 = load float*, float** %10, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %19, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %48, %41, %24
  %52 = load i32, i32* %19, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %20

60:                                               ; preds = %20
  ret void
}

declare dso_local i64 @FFMIN(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
