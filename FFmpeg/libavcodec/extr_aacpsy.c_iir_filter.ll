; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsy.c_iir_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsy.c_iir_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, float*)* @iir_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @iir_filter(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sitofp i32 %6 to float
  %8 = load float*, float** %4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fsub float %7, %10
  %12 = fmul float 0x3FE8275260000000, %11
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  %15 = load float, float* %14, align 4
  %16 = fmul float 0x3FE04DD300000000, %15
  %17 = fadd float %12, %16
  store float %17, float* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float*, float** %4, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float %19, float* %21, align 4
  %22 = load float, float* %5, align 4
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float %22, float* %24, align 4
  %25 = load float, float* %5, align 4
  ret float %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
