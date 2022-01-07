; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusdsp.c_postfilter_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusdsp.c_postfilter_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, float*, i32)* @postfilter_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postfilter_c(float* %0, i32 %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load float*, float** %7, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  store float %20, float* %9, align 4
  %21 = load float*, float** %7, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  store float %23, float* %10, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 2
  %26 = load float, float* %25, align 4
  store float %26, float* %11, align 4
  %27 = load float*, float** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 0, %28
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %27, i64 %31
  %33 = load float, float* %32, align 4
  store float %33, float* %12, align 4
  %34 = load float*, float** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 0, %35
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %34, i64 %38
  %40 = load float, float* %39, align 4
  store float %40, float* %13, align 4
  %41 = load float*, float** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 0, %42
  %44 = add nsw i32 %43, 0
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %41, i64 %45
  %47 = load float, float* %46, align 4
  store float %47, float* %14, align 4
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 0, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %48, i64 %52
  %54 = load float, float* %53, align 4
  store float %54, float* %15, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %93, %4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %55
  %60 = load float*, float** %5, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %60, i64 %65
  %67 = load float, float* %66, align 4
  store float %67, float* %17, align 4
  %68 = load float, float* %9, align 4
  %69 = load float, float* %14, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %10, align 4
  %72 = load float, float* %15, align 4
  %73 = load float, float* %13, align 4
  %74 = fadd float %72, %73
  %75 = fmul float %71, %74
  %76 = fadd float %70, %75
  %77 = load float, float* %11, align 4
  %78 = load float, float* %17, align 4
  %79 = load float, float* %12, align 4
  %80 = fadd float %78, %79
  %81 = fmul float %77, %80
  %82 = fadd float %76, %81
  %83 = load float*, float** %5, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fadd float %87, %82
  store float %88, float* %86, align 4
  %89 = load float, float* %13, align 4
  store float %89, float* %12, align 4
  %90 = load float, float* %14, align 4
  store float %90, float* %13, align 4
  %91 = load float, float* %15, align 4
  store float %91, float* %14, align 4
  %92 = load float, float* %17, align 4
  store float %92, float* %15, align 4
  br label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %55

96:                                               ; preds = %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
