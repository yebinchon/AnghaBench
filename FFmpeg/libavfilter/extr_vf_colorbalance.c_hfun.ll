; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_hfun.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_hfun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @hfun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @hfun(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %11 = load float, float* %7, align 4
  %12 = load float, float* %8, align 4
  %13 = load float, float* %8, align 4
  %14 = fpext float %13 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = fptosi double %15 to i32
  %17 = call float @FFMIN(float %12, i32 %16)
  %18 = fmul float %11, %17
  store float %18, float* %9, align 4
  %19 = load float, float* %5, align 4
  %20 = load float, float* %6, align 4
  %21 = fdiv float %20, 3.000000e+01
  %22 = fadd float %19, %21
  %23 = call float @fmodf(float %22, float 1.200000e+01) #3
  store float %23, float* %10, align 4
  %24 = load float, float* %8, align 4
  %25 = load float, float* %9, align 4
  %26 = load float, float* %10, align 4
  %27 = fsub float %26, 3.000000e+00
  %28 = load float, float* %10, align 4
  %29 = fsub float 9.000000e+00, %28
  %30 = call i32 @FFMIN3(float %27, float %29, i32 1)
  %31 = call float @FFMAX(i32 %30, float -1.000000e+00)
  %32 = fmul float %25, %31
  %33 = fsub float %24, %32
  %34 = call float @av_clipf(float %33, i32 0, i32 1)
  ret float %34
}

declare dso_local float @FFMIN(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #2

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local float @FFMAX(i32, float) #1

declare dso_local i32 @FFMIN3(float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
