; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_comp_adjust.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_comp_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORRECTION_METHOD_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float, float, float, i32)* @comp_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_adjust(i32 %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load float, float* %7, align 4
  %15 = fneg float %14
  store float %15, float* %11, align 4
  %16 = load float, float* %7, align 4
  %17 = fpext float %16 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = fptrunc double %18 to float
  store float %19, float* %12, align 4
  %20 = load float, float* %8, align 4
  %21 = fpext float %20 to double
  %22 = fsub double -1.000000e+00, %21
  %23 = load float, float* %9, align 4
  %24 = fpext float %23 to double
  %25 = fmul double %22, %24
  %26 = load float, float* %8, align 4
  %27 = fpext float %26 to double
  %28 = fsub double %25, %27
  %29 = fptrunc double %28 to float
  store float %29, float* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CORRECTION_METHOD_RELATIVE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load float, float* %12, align 4
  %35 = load float, float* %13, align 4
  %36 = fmul float %35, %34
  store float %36, float* %13, align 4
  br label %37

37:                                               ; preds = %33, %5
  %38 = load float, float* %13, align 4
  %39 = load float, float* %11, align 4
  %40 = load float, float* %12, align 4
  %41 = call i32 @av_clipf(float %38, float %39, float %40)
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @lrint(i32 %43)
  ret i32 %44
}

declare dso_local i32 @lrint(i32) #1

declare dso_local i32 @av_clipf(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
