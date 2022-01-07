; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_VMUL4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, float*, i32, float*)* @VMUL4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @VMUL4(float* %0, float* %1, i32 %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %10 = load float*, float** %8, align 8
  %11 = load float, float* %10, align 4
  store float %11, float* %9, align 4
  %12 = load float*, float** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %12, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load float, float* %9, align 4
  %19 = fmul float %17, %18
  %20 = load float*, float** %5, align 8
  %21 = getelementptr inbounds float, float* %20, i32 1
  store float* %21, float** %5, align 8
  store float %19, float* %20, align 4
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 2
  %25 = and i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %22, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float, float* %9, align 4
  %30 = fmul float %28, %29
  %31 = load float*, float** %5, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %5, align 8
  store float %30, float* %31, align 4
  %33 = load float*, float** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 3
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %33, i64 %37
  %39 = load float, float* %38, align 4
  %40 = load float, float* %9, align 4
  %41 = fmul float %39, %40
  %42 = load float*, float** %5, align 8
  %43 = getelementptr inbounds float, float* %42, i32 1
  store float* %43, float** %5, align 8
  store float %41, float* %42, align 4
  %44 = load float*, float** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = lshr i32 %45, 6
  %47 = and i32 %46, 3
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %44, i64 %48
  %50 = load float, float* %49, align 4
  %51 = load float, float* %9, align 4
  %52 = fmul float %50, %51
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %5, align 8
  store float %52, float* %53, align 4
  %55 = load float*, float** %5, align 8
  ret float* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
