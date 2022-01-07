; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_dot_prods.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_dot_prods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, float*, i32, i32, float*)* @dot_prods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dot_prods(i32* %0, float* %1, float* %2, float* %3, i32 %4, i32 %5, float* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %22 = load float*, float** %9, align 8
  %23 = bitcast float* %22 to i32*
  store i32* %23, i32** %15, align 8
  %24 = load float*, float** %10, align 8
  %25 = bitcast float* %24 to i32*
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = bitcast i32* %31 to float*
  store float* %32, float** %17, align 8
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %93, %7
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %33
  store i32 0, i32* %20, align 4
  %38 = load i32, i32* %18, align 4
  %39 = ashr i32 %38, 2
  %40 = shl i32 %39, 3
  %41 = load i32, i32* %18, align 4
  %42 = and i32 %41, 3
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %66, %37
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %53, %62
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %20, align 4
  %71 = sitofp i32 %70 to float
  %72 = load float*, float** %17, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fmul float %71, %76
  %78 = load float*, float** %14, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  %80 = load float, float* %79, align 4
  %81 = fmul float %77, %80
  %82 = load float*, float** %17, align 8
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %82, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fadd float %81, %87
  %89 = load float*, float** %11, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  store float %88, float* %92, align 4
  br label %93

93:                                               ; preds = %69
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %33

96:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
