; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_precalculate_fade_factors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_precalculate_fade_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double**, i32)* @precalculate_fade_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precalculate_fade_factors(double** %0, i32 %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double** %0, double*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sitofp i32 %7 to double
  %9 = fdiv double 1.000000e+00, %8
  store double %9, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load double, double* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 1.000000e+00
  %19 = fmul double %15, %18
  %20 = fsub double 1.000000e+00, %19
  %21 = load double**, double*** %3, align 8
  %22 = getelementptr inbounds double*, double** %21, i64 0
  %23 = load double*, double** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  store double %20, double* %26, align 8
  %27 = load double**, double*** %3, align 8
  %28 = getelementptr inbounds double*, double** %27, i64 0
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fsub double 1.000000e+00, %33
  %35 = load double**, double*** %3, align 8
  %36 = getelementptr inbounds double*, double** %35, i64 1
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  store double %34, double* %40, align 8
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %10

44:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
