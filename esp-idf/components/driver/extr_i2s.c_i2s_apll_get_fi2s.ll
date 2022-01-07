; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_apll_get_fi2s.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_apll_get_fi2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APLL_MIN_FREQ = common dso_local global float 0.000000e+00, align 4
@APLL_MAX_FREQ = common dso_local global float 0.000000e+00, align 4
@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32, i32, i32)* @i2s_apll_get_fi2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @i2s_apll_get_fi2s(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i64 (...) @rtc_clk_xtal_freq_get()
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %16, 1000000
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = sitofp i32 %18 to float
  %20 = load i32, i32* %10, align 4
  %21 = sitofp i32 %20 to float
  %22 = load i32, i32* %9, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, 2.560000e+02
  %25 = fadd float %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, 6.553600e+04
  %29 = fadd float %25, %28
  %30 = fadd float %29, 4.000000e+00
  %31 = fmul float %19, %30
  store float %31, float* %13, align 4
  %32 = load float, float* %13, align 4
  %33 = load float, float* @APLL_MIN_FREQ, align 4
  %34 = fcmp olt float %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %5
  %36 = load float, float* %13, align 4
  %37 = load float, float* @APLL_MAX_FREQ, align 4
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %5
  %40 = load float, float* @APLL_MAX_FREQ, align 4
  store float %40, float* %6, align 4
  br label %50

41:                                               ; preds = %35
  %42 = load float, float* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 2
  %45 = mul nsw i32 2, %44
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %42, %46
  store float %47, float* %14, align 4
  %48 = load float, float* %14, align 4
  %49 = fdiv float %48, 2.000000e+00
  store float %49, float* %6, align 4
  br label %50

50:                                               ; preds = %41, %39
  %51 = load float, float* %6, align 4
  ret float %51
}

declare dso_local i64 @rtc_clk_xtal_freq_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
