; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_exp_rotation_impl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_exp_rotation_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, float, float)* @celt_exp_rotation_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_exp_rotation_impl(float* %0, i32 %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %17 = load float*, float** %6, align 8
  store float* %17, float** %11, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %53, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load float*, float** %11, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  store float %27, float* %13, align 4
  %28 = load float*, float** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  store float %32, float* %14, align 4
  %33 = load float, float* %9, align 4
  %34 = load float, float* %14, align 4
  %35 = fmul float %33, %34
  %36 = load float, float* %10, align 4
  %37 = load float, float* %13, align 4
  %38 = fmul float %36, %37
  %39 = fadd float %35, %38
  %40 = load float*, float** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float %39, float* %43, align 4
  %44 = load float, float* %9, align 4
  %45 = load float, float* %13, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %10, align 4
  %48 = load float, float* %14, align 4
  %49 = fmul float %47, %48
  %50 = fsub float %46, %49
  %51 = load float*, float** %11, align 8
  %52 = getelementptr inbounds float, float* %51, i32 1
  store float* %52, float** %11, align 8
  store float %50, float* %51, align 4
  br label %53

53:                                               ; preds = %24
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load float*, float** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 2, %59
  %61 = sub nsw i32 %58, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %57, i64 %63
  store float* %64, float** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 2, %66
  %68 = sub nsw i32 %65, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %102, %56
  %71 = load i32, i32* %12, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load float*, float** %11, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  store float %76, float* %15, align 4
  %77 = load float*, float** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  store float %81, float* %16, align 4
  %82 = load float, float* %9, align 4
  %83 = load float, float* %16, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* %10, align 4
  %86 = load float, float* %15, align 4
  %87 = fmul float %85, %86
  %88 = fadd float %84, %87
  %89 = load float*, float** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  store float %88, float* %92, align 4
  %93 = load float, float* %9, align 4
  %94 = load float, float* %15, align 4
  %95 = fmul float %93, %94
  %96 = load float, float* %10, align 4
  %97 = load float, float* %16, align 4
  %98 = fmul float %96, %97
  %99 = fsub float %95, %98
  %100 = load float*, float** %11, align 8
  %101 = getelementptr inbounds float, float* %100, i32 -1
  store float* %101, float** %11, align 8
  store float %99, float* %100, align 4
  br label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  br label %70

105:                                              ; preds = %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
