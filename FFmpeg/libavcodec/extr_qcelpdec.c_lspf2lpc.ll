; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_lspf2lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_lspf2lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCELP_BANDWIDTH_EXPANSION_COEFF = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @lspf2lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lspf2lpc(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [10 x double], align 16
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load double, double* @QCELP_BANDWIDTH_EXPANSION_COEFF, align 8
  store double %8, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load float, float* @M_PI, align 4
  %14 = load float*, float** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fmul float %13, %18
  %20 = call double @cos(float %19)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x double], [10 x double]* %5, i64 0, i64 %22
  store double %20, double* %23, align 8
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %9

27:                                               ; preds = %9
  %28 = getelementptr inbounds [10 x double], [10 x double]* %5, i64 0, i64 0
  %29 = load float*, float** %4, align 8
  %30 = call i32 @ff_acelp_lspd2lpc(double* %28, float* %29, i32 5)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load double, double* %6, align 8
  %36 = load float*, float** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = fmul double %41, %35
  %43 = fptrunc double %42 to float
  store float %43, float* %39, align 4
  %44 = load double, double* @QCELP_BANDWIDTH_EXPANSION_COEFF, align 8
  %45 = load double, double* %6, align 8
  %46 = fmul double %45, %44
  store double %46, double* %6, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %31

50:                                               ; preds = %31
  ret void
}

declare dso_local double @cos(float) #1

declare dso_local i32 @ff_acelp_lspd2lpc(double*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
