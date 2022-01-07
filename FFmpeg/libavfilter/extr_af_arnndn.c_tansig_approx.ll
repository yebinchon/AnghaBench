; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_tansig_approx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_tansig_approx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tansig_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @tansig_approx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @tansig_approx(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float 1.000000e+00, float* %6, align 4
  %8 = load float, float* %3, align 4
  %9 = fcmp olt float %8, 8.000000e+00
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load float, float* %3, align 4
  %13 = fcmp ogt float %12, -8.000000e+00
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store float -1.000000e+00, float* %2, align 4
  br label %59

15:                                               ; preds = %11
  %16 = load float, float* %3, align 4
  %17 = call i64 @isnan(float %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store float 0.000000e+00, float* %2, align 4
  br label %59

20:                                               ; preds = %15
  %21 = load float, float* %3, align 4
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load float, float* %3, align 4
  %25 = fneg float %24
  store float %25, float* %3, align 4
  store float -1.000000e+00, float* %6, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load float, float* %3, align 4
  %28 = fmul float 2.500000e+01, %27
  %29 = fadd float 5.000000e-01, %28
  %30 = call i64 @floor(float %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sitofp i32 %32 to float
  %34 = fmul float 0x3FA47AE140000000, %33
  %35 = load float, float* %3, align 4
  %36 = fsub float %35, %34
  store float %36, float* %3, align 4
  %37 = load float*, float** @tansig_table, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  store float %41, float* %4, align 4
  %42 = load float, float* %4, align 4
  %43 = load float, float* %4, align 4
  %44 = fmul float %42, %43
  %45 = fsub float 1.000000e+00, %44
  store float %45, float* %5, align 4
  %46 = load float, float* %4, align 4
  %47 = load float, float* %3, align 4
  %48 = load float, float* %5, align 4
  %49 = fmul float %47, %48
  %50 = load float, float* %4, align 4
  %51 = load float, float* %3, align 4
  %52 = fmul float %50, %51
  %53 = fsub float 1.000000e+00, %52
  %54 = fmul float %49, %53
  %55 = fadd float %46, %54
  store float %55, float* %4, align 4
  %56 = load float, float* %6, align 4
  %57 = load float, float* %4, align 4
  %58 = fmul float %56, %57
  store float %58, float* %2, align 4
  br label %59

59:                                               ; preds = %26, %19, %14, %10
  %60 = load float, float* %2, align 4
  ret float %60
}

declare dso_local i64 @isnan(float) #1

declare dso_local i64 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
