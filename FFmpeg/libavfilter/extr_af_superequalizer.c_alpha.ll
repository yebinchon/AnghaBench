; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_alpha.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @alpha(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp ole float %4, 2.100000e+01
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fcmp ole float %8, 5.000000e+01
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load float, float* %3, align 4
  %12 = fsub float %11, 2.100000e+01
  %13 = call float @pow(float %12, float 0x3FD99999A0000000)
  %14 = fmul float 0x3FE2B1C440000000, %13
  %15 = load float, float* %3, align 4
  %16 = fsub float %15, 2.100000e+01
  %17 = fmul float 0x3FB4302B40000000, %16
  %18 = fadd float %14, %17
  store float %18, float* %2, align 4
  br label %23

19:                                               ; preds = %7
  %20 = load float, float* %3, align 4
  %21 = fsub float %20, 0x4021666660000000
  %22 = fmul float 0x3FBC361140000000, %21
  store float %22, float* %2, align 4
  br label %23

23:                                               ; preds = %19, %10, %6
  %24 = load float, float* %2, align 4
  ret float %24
}

declare dso_local float @pow(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
