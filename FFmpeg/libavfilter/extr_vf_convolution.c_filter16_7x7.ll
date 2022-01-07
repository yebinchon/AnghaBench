; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_7x7.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_7x7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter16_7x7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter16_7x7(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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

26:                                               ; preds = %72, %10
  %27 = load i32, i32* %22, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %23, align 4
  %33 = icmp slt i32 %32, 49
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32**, i32*** %16, align 8
  %36 = load i32, i32* %23, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %22, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @AV_RN16A(i32* %43)
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %23, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = load i32, i32* %24, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %24, align 4
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %23, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %23, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load i32, i32* %24, align 4
  %58 = sitofp i32 %57 to float
  %59 = load float, float* %13, align 4
  %60 = fmul float %58, %59
  %61 = load float, float* %14, align 4
  %62 = fadd float %60, %61
  %63 = fadd float %62, 5.000000e-01
  %64 = fptosi float %63 to i32
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @av_clip(i32 %65, i32 0, i32 %66)
  %68 = load i32*, i32** %21, align 8
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %26

75:                                               ; preds = %26
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
