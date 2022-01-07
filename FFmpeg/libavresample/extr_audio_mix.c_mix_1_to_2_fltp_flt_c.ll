; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_1_to_2_fltp_flt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_1_to_2_fltp_flt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32)* @mix_1_to_2_fltp_flt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_1_to_2_fltp_flt_c(float** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float** %0, float*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load float**, float*** %6, align 8
  %18 = getelementptr inbounds float*, float** %17, i64 0
  %19 = load float*, float** %18, align 8
  store float* %19, float** %12, align 8
  %20 = load float**, float*** %6, align 8
  %21 = getelementptr inbounds float*, float** %20, i64 1
  %22 = load float*, float** %21, align 8
  store float* %22, float** %13, align 8
  %23 = load float*, float** %12, align 8
  store float* %23, float** %14, align 8
  %24 = load float**, float*** %7, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 0
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  store float %28, float* %15, align 4
  %29 = load float**, float*** %7, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 1
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  store float %33, float* %16, align 4
  br label %34

34:                                               ; preds = %37, %5
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = load float*, float** %14, align 8
  %39 = getelementptr inbounds float, float* %38, i32 1
  store float* %39, float** %14, align 8
  %40 = load float, float* %38, align 4
  store float %40, float* %11, align 4
  %41 = load float, float* %11, align 4
  %42 = load float, float* %15, align 4
  %43 = fmul float %41, %42
  %44 = load float*, float** %12, align 8
  %45 = getelementptr inbounds float, float* %44, i32 1
  store float* %45, float** %12, align 8
  store float %43, float* %44, align 4
  %46 = load float, float* %11, align 4
  %47 = load float, float* %16, align 4
  %48 = fmul float %46, %47
  %49 = load float*, float** %13, align 8
  %50 = getelementptr inbounds float, float* %49, i32 1
  store float* %50, float** %13, align 8
  store float %48, float* %49, align 4
  %51 = load float*, float** %14, align 8
  %52 = getelementptr inbounds float, float* %51, i32 1
  store float* %52, float** %14, align 8
  %53 = load float, float* %51, align 4
  store float %53, float* %11, align 4
  %54 = load float, float* %11, align 4
  %55 = load float, float* %15, align 4
  %56 = fmul float %54, %55
  %57 = load float*, float** %12, align 8
  %58 = getelementptr inbounds float, float* %57, i32 1
  store float* %58, float** %12, align 8
  store float %56, float* %57, align 4
  %59 = load float, float* %11, align 4
  %60 = load float, float* %16, align 4
  %61 = fmul float %59, %60
  %62 = load float*, float** %13, align 8
  %63 = getelementptr inbounds float, float* %62, i32 1
  store float* %63, float** %13, align 8
  store float %61, float* %62, align 4
  %64 = load float*, float** %14, align 8
  %65 = getelementptr inbounds float, float* %64, i32 1
  store float* %65, float** %14, align 8
  %66 = load float, float* %64, align 4
  store float %66, float* %11, align 4
  %67 = load float, float* %11, align 4
  %68 = load float, float* %15, align 4
  %69 = fmul float %67, %68
  %70 = load float*, float** %12, align 8
  %71 = getelementptr inbounds float, float* %70, i32 1
  store float* %71, float** %12, align 8
  store float %69, float* %70, align 4
  %72 = load float, float* %11, align 4
  %73 = load float, float* %16, align 4
  %74 = fmul float %72, %73
  %75 = load float*, float** %13, align 8
  %76 = getelementptr inbounds float, float* %75, i32 1
  store float* %76, float** %13, align 8
  store float %74, float* %75, align 4
  %77 = load float*, float** %14, align 8
  %78 = getelementptr inbounds float, float* %77, i32 1
  store float* %78, float** %14, align 8
  %79 = load float, float* %77, align 4
  store float %79, float* %11, align 4
  %80 = load float, float* %11, align 4
  %81 = load float, float* %15, align 4
  %82 = fmul float %80, %81
  %83 = load float*, float** %12, align 8
  %84 = getelementptr inbounds float, float* %83, i32 1
  store float* %84, float** %12, align 8
  store float %82, float* %83, align 4
  %85 = load float, float* %11, align 4
  %86 = load float, float* %16, align 4
  %87 = fmul float %85, %86
  %88 = load float*, float** %13, align 8
  %89 = getelementptr inbounds float, float* %88, i32 1
  store float* %89, float** %13, align 8
  store float %87, float* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %8, align 4
  br label %34

92:                                               ; preds = %34
  br label %93

93:                                               ; preds = %96, %92
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load float*, float** %14, align 8
  %98 = getelementptr inbounds float, float* %97, i32 1
  store float* %98, float** %14, align 8
  %99 = load float, float* %97, align 4
  store float %99, float* %11, align 4
  %100 = load float, float* %11, align 4
  %101 = load float, float* %15, align 4
  %102 = fmul float %100, %101
  %103 = load float*, float** %12, align 8
  %104 = getelementptr inbounds float, float* %103, i32 1
  store float* %104, float** %12, align 8
  store float %102, float* %103, align 4
  %105 = load float, float* %11, align 4
  %106 = load float, float* %16, align 4
  %107 = fmul float %105, %106
  %108 = load float*, float** %13, align 8
  %109 = getelementptr inbounds float, float* %108, i32 1
  store float* %109, float** %13, align 8
  store float %107, float* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %8, align 4
  br label %93

112:                                              ; preds = %93
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
