; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_ransac_update_num_iters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_ransac_update_num_iters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, i32)* @ransac_update_num_iters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ransac_update_num_iters(double %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load double, double* %5, align 8
  %11 = call double @av_clipd(double %10, double 0.000000e+00, double 1.000000e+00)
  store double %11, double* %5, align 8
  %12 = load double, double* %6, align 8
  %13 = call double @av_clipd(double %12, double 0.000000e+00, double 1.000000e+00)
  store double %13, double* %6, align 8
  %14 = load double, double* %5, align 8
  %15 = fsub double 1.000000e+00, %14
  %16 = load double, double* @DBL_MIN, align 8
  %17 = call double @FFMAX(double %15, double %16)
  store double %17, double* %8, align 8
  %18 = load double, double* %6, align 8
  %19 = fsub double 1.000000e+00, %18
  %20 = call double @pow(double %19, i32 3)
  %21 = fsub double 1.000000e+00, %20
  store double %21, double* %9, align 8
  %22 = load double, double* %9, align 8
  %23 = load double, double* @DBL_MIN, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load double, double* %8, align 8
  %28 = call double @log(double %27) #3
  store double %28, double* %8, align 8
  %29 = load double, double* %9, align 8
  %30 = call double @log(double %29) #3
  store double %30, double* %9, align 8
  %31 = load double, double* %9, align 8
  %32 = fcmp oge double %31, 0.000000e+00
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load double, double* %8, align 8
  %35 = fneg double %34
  %36 = load i32, i32* %7, align 4
  %37 = sitofp i32 %36 to double
  %38 = load double, double* %9, align 8
  %39 = fneg double %38
  %40 = fmul double %37, %39
  %41 = fcmp oge double %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33, %26
  %43 = load i32, i32* %7, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load double, double* %8, align 8
  %46 = load double, double* %9, align 8
  %47 = fdiv double %45, %46
  %48 = call i64 @round(double %47)
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ %43, %42 ], [ %49, %44 ]
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local double @av_clipd(double, double, double) #1

declare dso_local double @FFMAX(double, double) #1

declare dso_local double @pow(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i64 @round(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
