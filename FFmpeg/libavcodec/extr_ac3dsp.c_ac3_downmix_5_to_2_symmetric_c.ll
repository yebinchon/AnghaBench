; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_5_to_2_symmetric_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_5_to_2_symmetric_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32)* @ac3_downmix_5_to_2_symmetric_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac3_downmix_5_to_2_symmetric_c(float** %0, float** %1, i32 %2) #0 {
  %4 = alloca float**, align 8
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float** %0, float*** %4, align 8
  store float** %1, float*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load float**, float*** %5, align 8
  %14 = getelementptr inbounds float*, float** %13, i64 0
  %15 = load float*, float** %14, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  store float %17, float* %10, align 4
  %18 = load float**, float*** %5, align 8
  %19 = getelementptr inbounds float*, float** %18, i64 0
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  store float %22, float* %11, align 4
  %23 = load float**, float*** %5, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 3
  %27 = load float, float* %26, align 4
  store float %27, float* %12, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %105, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %28
  %33 = load float**, float*** %4, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = load float, float* %10, align 4
  %41 = fmul float %39, %40
  %42 = load float**, float*** %4, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 1
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float, float* %11, align 4
  %50 = fmul float %48, %49
  %51 = fadd float %41, %50
  %52 = load float**, float*** %4, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 3
  %54 = load float*, float** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float, float* %12, align 4
  %60 = fmul float %58, %59
  %61 = fadd float %51, %60
  store float %61, float* %8, align 4
  %62 = load float**, float*** %4, align 8
  %63 = getelementptr inbounds float*, float** %62, i64 1
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %11, align 4
  %70 = fmul float %68, %69
  %71 = load float**, float*** %4, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 2
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float, float* %10, align 4
  %79 = fmul float %77, %78
  %80 = fadd float %70, %79
  %81 = load float**, float*** %4, align 8
  %82 = getelementptr inbounds float*, float** %81, i64 4
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float, float* %12, align 4
  %89 = fmul float %87, %88
  %90 = fadd float %80, %89
  store float %90, float* %9, align 4
  %91 = load float, float* %8, align 4
  %92 = load float**, float*** %4, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 0
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %91, float* %97, align 4
  %98 = load float, float* %9, align 4
  %99 = load float**, float*** %4, align 8
  %100 = getelementptr inbounds float*, float** %99, i64 1
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  store float %98, float* %104, align 4
  br label %105

105:                                              ; preds = %32
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %28

108:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
