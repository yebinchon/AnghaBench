; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter16_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter16_row(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %25 = load i32*, i32** %11, align 8
  store i32* %25, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %26

26:                                               ; preds = %75, %10
  %27 = load i32, i32* %22, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %18, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load i32**, i32*** %16, align 8
  %39 = load i32, i32* %23, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %22, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @AV_RN16A(i32* %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %23, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = load i32, i32* %24, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %24, align 4
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %23, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %23, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* %24, align 4
  %61 = sitofp i32 %60 to float
  %62 = load float, float* %13, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %14, align 4
  %65 = fadd float %63, %64
  %66 = fadd float %65, 5.000000e-01
  %67 = fptosi float %66 to i32
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @av_clip(i32 %68, i32 0, i32 %69)
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %22, align 4
  br label %26

78:                                               ; preds = %26
  ret void
}

declare dso_local i32 @AV_RN16A(i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
