; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_interpolate_isp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_interpolate_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_ORDER = common dso_local global i32 0, align 4
@isfp_inter = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*)* @interpolate_isp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_isp(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %8 = load i32, i32* @LP_ORDER, align 4
  %9 = zext i32 %8 to i64
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load float*, float** @isfp_inter, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  store float %18, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %52, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LP_ORDER, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = fsub double 1.000000e+00, %25
  %27 = load double*, double** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fmul double %26, %31
  %33 = load float, float* %7, align 4
  %34 = fpext float %33 to double
  %35 = load double*, double** %3, align 8
  %36 = mul nsw i64 3, %9
  %37 = getelementptr inbounds double, double* %35, i64 %36
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fmul double %34, %41
  %43 = fadd double %32, %42
  %44 = load double*, double** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %9
  %48 = getelementptr inbounds double, double* %44, i64 %47
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %43, double* %51, align 8
  br label %52

52:                                               ; preds = %23
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %19

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %10

59:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
