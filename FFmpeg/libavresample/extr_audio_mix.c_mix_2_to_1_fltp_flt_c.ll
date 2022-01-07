; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_1_fltp_flt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_1_fltp_flt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32)* @mix_2_to_1_fltp_flt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_2_to_1_fltp_flt_c(float** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float** %0, float*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load float**, float*** %6, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  store float* %18, float** %11, align 8
  %19 = load float**, float*** %6, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 1
  %21 = load float*, float** %20, align 8
  store float* %21, float** %12, align 8
  %22 = load float*, float** %11, align 8
  store float* %22, float** %13, align 8
  %23 = load float**, float*** %7, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  store float %27, float* %14, align 4
  %28 = load float**, float*** %7, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  store float %32, float* %15, align 4
  br label %33

33:                                               ; preds = %36, %5
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %91

36:                                               ; preds = %33
  %37 = load float*, float** %11, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %11, align 8
  %39 = load float, float* %37, align 4
  %40 = load float, float* %14, align 4
  %41 = fmul float %39, %40
  %42 = load float*, float** %12, align 8
  %43 = getelementptr inbounds float, float* %42, i32 1
  store float* %43, float** %12, align 8
  %44 = load float, float* %42, align 4
  %45 = load float, float* %15, align 4
  %46 = fmul float %44, %45
  %47 = fadd float %41, %46
  %48 = load float*, float** %13, align 8
  %49 = getelementptr inbounds float, float* %48, i32 1
  store float* %49, float** %13, align 8
  store float %47, float* %48, align 4
  %50 = load float*, float** %11, align 8
  %51 = getelementptr inbounds float, float* %50, i32 1
  store float* %51, float** %11, align 8
  %52 = load float, float* %50, align 4
  %53 = load float, float* %14, align 4
  %54 = fmul float %52, %53
  %55 = load float*, float** %12, align 8
  %56 = getelementptr inbounds float, float* %55, i32 1
  store float* %56, float** %12, align 8
  %57 = load float, float* %55, align 4
  %58 = load float, float* %15, align 4
  %59 = fmul float %57, %58
  %60 = fadd float %54, %59
  %61 = load float*, float** %13, align 8
  %62 = getelementptr inbounds float, float* %61, i32 1
  store float* %62, float** %13, align 8
  store float %60, float* %61, align 4
  %63 = load float*, float** %11, align 8
  %64 = getelementptr inbounds float, float* %63, i32 1
  store float* %64, float** %11, align 8
  %65 = load float, float* %63, align 4
  %66 = load float, float* %14, align 4
  %67 = fmul float %65, %66
  %68 = load float*, float** %12, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %12, align 8
  %70 = load float, float* %68, align 4
  %71 = load float, float* %15, align 4
  %72 = fmul float %70, %71
  %73 = fadd float %67, %72
  %74 = load float*, float** %13, align 8
  %75 = getelementptr inbounds float, float* %74, i32 1
  store float* %75, float** %13, align 8
  store float %73, float* %74, align 4
  %76 = load float*, float** %11, align 8
  %77 = getelementptr inbounds float, float* %76, i32 1
  store float* %77, float** %11, align 8
  %78 = load float, float* %76, align 4
  %79 = load float, float* %14, align 4
  %80 = fmul float %78, %79
  %81 = load float*, float** %12, align 8
  %82 = getelementptr inbounds float, float* %81, i32 1
  store float* %82, float** %12, align 8
  %83 = load float, float* %81, align 4
  %84 = load float, float* %15, align 4
  %85 = fmul float %83, %84
  %86 = fadd float %80, %85
  %87 = load float*, float** %13, align 8
  %88 = getelementptr inbounds float, float* %87, i32 1
  store float* %88, float** %13, align 8
  store float %86, float* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 4
  store i32 %90, i32* %8, align 4
  br label %33

91:                                               ; preds = %33
  br label %92

92:                                               ; preds = %95, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load float*, float** %11, align 8
  %97 = getelementptr inbounds float, float* %96, i32 1
  store float* %97, float** %11, align 8
  %98 = load float, float* %96, align 4
  %99 = load float, float* %14, align 4
  %100 = fmul float %98, %99
  %101 = load float*, float** %12, align 8
  %102 = getelementptr inbounds float, float* %101, i32 1
  store float* %102, float** %12, align 8
  %103 = load float, float* %101, align 4
  %104 = load float, float* %15, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %100, %105
  %107 = load float*, float** %13, align 8
  %108 = getelementptr inbounds float, float* %107, i32 1
  store float* %108, float** %13, align 8
  store float %106, float* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %8, align 4
  br label %92

111:                                              ; preds = %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
