; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_volume_SSE2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_volume_SSE2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_mix_volume_SSE2(float* %0, float* %1, float %2, i64 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load float, float* %7, align 4
  %15 = call i32 @_mm_set1_ps(float %14)
  store i32 %15, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %85, %4
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, 16
  %19 = load i64, i64* %8, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %16
  %22 = load float*, float** %5, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = call i32 @_mm_loadu_ps(float* %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load float*, float** %5, align 8
  %27 = getelementptr inbounds float, float* %26, i64 4
  %28 = call i32 @_mm_loadu_ps(float* %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load float*, float** %5, align 8
  %31 = getelementptr inbounds float, float* %30, i64 8
  %32 = call i32 @_mm_loadu_ps(float* %31)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load float*, float** %5, align 8
  %35 = getelementptr inbounds float, float* %34, i64 12
  %36 = call i32 @_mm_loadu_ps(float* %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load float*, float** %6, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = call i32 @_mm_loadu_ps(float* %40)
  %42 = call i32 @_mm_mul_ps(i32 %38, i32 %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %10, align 4
  %45 = load float*, float** %6, align 8
  %46 = getelementptr inbounds float, float* %45, i64 4
  %47 = call i32 @_mm_loadu_ps(float* %46)
  %48 = call i32 @_mm_mul_ps(i32 %44, i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load float*, float** %6, align 8
  %52 = getelementptr inbounds float, float* %51, i64 8
  %53 = call i32 @_mm_loadu_ps(float* %52)
  %54 = call i32 @_mm_mul_ps(i32 %50, i32 %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load float*, float** %6, align 8
  %58 = getelementptr inbounds float, float* %57, i64 12
  %59 = call i32 @_mm_loadu_ps(float* %58)
  %60 = call i32 @_mm_mul_ps(i32 %56, i32 %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %81, %21
  %63 = load i32, i32* %11, align 4
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load float*, float** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = mul i32 4, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @_mm_add_ps(i32 %74, i32 %78)
  %80 = call i32 @_mm_storeu_ps(float* %70, i32 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %62

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 16
  store i64 %87, i64* %9, align 8
  %88 = load float*, float** %5, align 8
  %89 = getelementptr inbounds float, float* %88, i64 16
  store float* %89, float** %5, align 8
  %90 = load float*, float** %6, align 8
  %91 = getelementptr inbounds float, float* %90, i64 16
  store float* %91, float** %6, align 8
  br label %16

92:                                               ; preds = %16
  %93 = load float*, float** %5, align 8
  %94 = load float*, float** %6, align 8
  %95 = load float, float* %7, align 4
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %96, %97
  %99 = call i32 @audio_mix_volume_C(float* %93, float* %94, float %95, i64 %98)
  ret void
}

declare dso_local i32 @_mm_set1_ps(float) #1

declare dso_local i32 @_mm_loadu_ps(float*) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

declare dso_local i32 @_mm_storeu_ps(float*, i32) #1

declare dso_local i32 @_mm_add_ps(i32, i32) #1

declare dso_local i32 @audio_mix_volume_C(float*, float*, float, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
