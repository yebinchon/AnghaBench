; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_5_to_1_symmetric_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_5_to_1_symmetric_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32)* @ac3_downmix_5_to_1_symmetric_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac3_downmix_5_to_1_symmetric_c(float** %0, float** %1, i32 %2) #0 {
  %4 = alloca float**, align 8
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float** %0, float*** %4, align 8
  store float** %1, float*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load float**, float*** %5, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 0
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  store float %15, float* %8, align 4
  %16 = load float**, float*** %5, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  store float %20, float* %9, align 4
  %21 = load float**, float*** %5, align 8
  %22 = getelementptr inbounds float*, float** %21, i64 0
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 3
  %25 = load float, float* %24, align 4
  store float %25, float* %10, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %86, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load float**, float*** %4, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 0
  %33 = load float*, float** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float, float* %8, align 4
  %39 = fmul float %37, %38
  %40 = load float**, float*** %4, align 8
  %41 = getelementptr inbounds float*, float** %40, i64 1
  %42 = load float*, float** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float, float* %9, align 4
  %48 = fmul float %46, %47
  %49 = fadd float %39, %48
  %50 = load float**, float*** %4, align 8
  %51 = getelementptr inbounds float*, float** %50, i64 2
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float, float* %8, align 4
  %58 = fmul float %56, %57
  %59 = fadd float %49, %58
  %60 = load float**, float*** %4, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 3
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %10, align 4
  %68 = fmul float %66, %67
  %69 = fadd float %59, %68
  %70 = load float**, float*** %4, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 4
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float, float* %10, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %69, %78
  %80 = load float**, float*** %4, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 0
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float %79, float* %85, align 4
  br label %86

86:                                               ; preds = %30
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %26

89:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
