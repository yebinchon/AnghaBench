; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL2S.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL2S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, float*, i32, i32, float*)* @VMUL2S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @VMUL2S(float* %0, float* %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca %union.av_intfloat32, align 4
  %12 = alloca %union.av_intfloat32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %13 = load float*, float** %10, align 8
  %14 = load float, float* %13, align 4
  %15 = bitcast %union.av_intfloat32* %12 to float*
  store float %14, float* %15, align 4
  %16 = bitcast %union.av_intfloat32* %11 to float*
  store float %14, float* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = lshr i32 %17, 1
  %19 = shl i32 %18, 31
  %20 = bitcast %union.av_intfloat32* %11 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 31
  %25 = bitcast %union.av_intfloat32* %12 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load float*, float** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 15
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %28, i64 %31
  %33 = load float, float* %32, align 4
  %34 = bitcast %union.av_intfloat32* %11 to float*
  %35 = load float, float* %34, align 4
  %36 = fmul float %33, %35
  %37 = load float*, float** %6, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %6, align 8
  store float %36, float* %37, align 4
  %39 = load float*, float** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 4
  %42 = and i32 %41, 15
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %39, i64 %43
  %45 = load float, float* %44, align 4
  %46 = bitcast %union.av_intfloat32* %12 to float*
  %47 = load float, float* %46, align 4
  %48 = fmul float %45, %47
  %49 = load float*, float** %6, align 8
  %50 = getelementptr inbounds float, float* %49, i32 1
  store float* %50, float** %6, align 8
  store float %48, float* %49, align 4
  %51 = load float*, float** %6, align 8
  ret float* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
