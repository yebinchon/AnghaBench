; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.h_twinvq_mulawinv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.h_twinvq_mulawinv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @twinvq_mulawinv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @twinvq_mulawinv(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fdiv float %7, %8
  %10 = call float @av_clipf(float %9, i32 -1, i32 1)
  store float %10, float* %4, align 4
  %11 = load float, float* %5, align 4
  %12 = load float, float* %4, align 4
  %13 = call float @FFSIGN(float %12)
  %14 = fmul float %11, %13
  %15 = load float, float* %6, align 4
  %16 = fadd float 1.000000e+00, %15
  %17 = fptosi float %16 to i32
  %18 = call i32 @log(i32 %17)
  %19 = load float, float* %4, align 4
  %20 = call i32 @fabs(float %19)
  %21 = mul nsw i32 %18, %20
  %22 = call i32 @exp(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = sitofp i32 %23 to float
  %25 = fmul float %14, %24
  %26 = load float, float* %6, align 4
  %27 = fdiv float %25, %26
  ret float %27
}

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local float @FFSIGN(float) #1

declare dso_local i32 @exp(i32) #1

declare dso_local i32 @log(i32) #1

declare dso_local i32 @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
