; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_fir_float_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_fir_float_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32)* @lfe_fir_float_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lfe_fir_float_c(float* %0, float* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 64, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = ashr i32 8, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  %26 = ashr i32 %23, %25
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %107, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %97, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %32
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %80, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  %43 = load float*, float** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %43, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %7, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 0, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %52, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fmul float %51, %57
  %59 = load float, float* %17, align 4
  %60 = fadd float %59, %58
  store float %60, float* %17, align 4
  %61 = load float*, float** %8, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sub nsw i32 255, %64
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %61, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load float*, float** %7, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 0, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %71, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fmul float %70, %76
  %78 = load float, float* %18, align 4
  %79 = fadd float %78, %77
  store float %79, float* %18, align 4
  br label %80

80:                                               ; preds = %42
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %38

83:                                               ; preds = %38
  %84 = load float, float* %17, align 4
  %85 = load float*, float** %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  %89 = load float, float* %18, align 4
  %90 = load float*, float** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %90, i64 %95
  store float %89, float* %96, align 4
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %32

100:                                              ; preds = %32
  %101 = load float*, float** %7, align 8
  %102 = getelementptr inbounds float, float* %101, i32 1
  store float* %102, float** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load float*, float** %6, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds float, float* %104, i64 %105
  store float* %106, float** %6, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %27

110:                                              ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
