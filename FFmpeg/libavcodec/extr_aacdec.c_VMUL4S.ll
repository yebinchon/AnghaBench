; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL4S.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL4S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, float*, i32, i32, float*)* @VMUL4S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @VMUL4S(float* %0, float* %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.av_intfloat32, align 4
  %13 = alloca %union.av_intfloat32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = lshr i32 %14, 12
  store i32 %15, i32* %11, align 4
  %16 = bitcast %union.av_intfloat32* %12 to float*
  %17 = load float*, float** %10, align 8
  %18 = load float, float* %17, align 4
  store float %18, float* %16, align 4
  %19 = bitcast %union.av_intfloat32* %12 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, -2147483648
  %23 = xor i32 %20, %22
  %24 = bitcast %union.av_intfloat32* %13 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  %30 = load float, float* %29, align 4
  %31 = bitcast %union.av_intfloat32* %13 to float*
  %32 = load float, float* %31, align 4
  %33 = fmul float %30, %32
  %34 = load float*, float** %6, align 8
  %35 = getelementptr inbounds float, float* %34, i32 1
  store float* %35, float** %6, align 8
  store float %33, float* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 1
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = lshr i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = bitcast %union.av_intfloat32* %12 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -2147483648
  %46 = xor i32 %43, %45
  %47 = bitcast %union.av_intfloat32* %13 to i32*
  store i32 %46, i32* %47, align 4
  %48 = load float*, float** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = lshr i32 %49, 2
  %51 = and i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %48, i64 %52
  %54 = load float, float* %53, align 4
  %55 = bitcast %union.av_intfloat32* %13 to float*
  %56 = load float, float* %55, align 4
  %57 = fmul float %54, %56
  %58 = load float*, float** %6, align 8
  %59 = getelementptr inbounds float, float* %58, i32 1
  store float* %59, float** %6, align 8
  store float %57, float* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = lshr i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = bitcast %union.av_intfloat32* %12 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, -2147483648
  %70 = xor i32 %67, %69
  %71 = bitcast %union.av_intfloat32* %13 to i32*
  store i32 %70, i32* %71, align 4
  %72 = load float*, float** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 3
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %72, i64 %76
  %78 = load float, float* %77, align 4
  %79 = bitcast %union.av_intfloat32* %13 to float*
  %80 = load float, float* %79, align 4
  %81 = fmul float %78, %80
  %82 = load float*, float** %6, align 8
  %83 = getelementptr inbounds float, float* %82, i32 1
  store float* %83, float** %6, align 8
  store float %81, float* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 1
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = bitcast %union.av_intfloat32* %12 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, -2147483648
  %92 = xor i32 %89, %91
  %93 = bitcast %union.av_intfloat32* %13 to i32*
  store i32 %92, i32* %93, align 4
  %94 = load float*, float** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = lshr i32 %95, 6
  %97 = and i32 %96, 3
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %94, i64 %98
  %100 = load float, float* %99, align 4
  %101 = bitcast %union.av_intfloat32* %13 to float*
  %102 = load float, float* %101, align 4
  %103 = fmul float %100, %102
  %104 = load float*, float** %6, align 8
  %105 = getelementptr inbounds float, float* %104, i32 1
  store float* %105, float** %6, align 8
  store float %103, float* %104, align 4
  %106 = load float*, float** %6, align 8
  ret float* %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
