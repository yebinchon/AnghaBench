; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_column.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_column(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
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
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %76, %10
  %25 = load i32, i32* %21, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %22, align 4
  %31 = load i32, i32* %18, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load i32**, i32*** %16, align 8
  %37 = load i32, i32* %22, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %20, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 0, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %22, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = load i32, i32* %23, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %23, align 4
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %22, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %22, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load i32, i32* %23, align 4
  %61 = sitofp i32 %60 to float
  %62 = load float, float* %13, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %14, align 4
  %65 = fadd float %63, %64
  %66 = fadd float %65, 5.000000e-01
  %67 = fptosi float %66 to i32
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @av_clip_uint8(i32 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %11, align 8
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  br label %24

79:                                               ; preds = %24
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
