; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpcenv_2parts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpcenv_2parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float*, float*, i32, i32)* @eval_lpcenv_2parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_lpcenv_2parts(i32* %0, i32 %1, float* %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load float*, float** %10, align 8
  %16 = load float*, float** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @eval_lpcenv_or_interp(i32* %13, i32 %14, float* %15, float* %16, i32 %18, i32 %19, i32 0)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load float*, float** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %23, i64 %26
  %28 = load float*, float** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sdiv i32 %29, 2
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 2, %31
  %33 = call i32 @eval_lpcenv_or_interp(i32* %21, i32 %22, float* %27, float* %28, i32 %30, i32 %32, i32 1)
  %34 = load float*, float** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %34, i64 %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float*, float** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %44, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %50, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @interpolate(float* %43, float %49, float %57, i32 %58)
  %60 = load float*, float** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds float, float* %63, i64 %67
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float*, float** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 2, %72
  %74 = sub nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %70, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 2, %78
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @twinvq_memset_float(float* %69, float %77, i32 %80)
  ret void
}

declare dso_local i32 @eval_lpcenv_or_interp(i32*, i32, float*, float*, i32, i32, i32) #1

declare dso_local i32 @interpolate(float*, float, float, i32) #1

declare dso_local i32 @twinvq_memset_float(float*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
