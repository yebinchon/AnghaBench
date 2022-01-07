; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sidechaincompress.c_output_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sidechaincompress.c_output_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double, double, double, double, double, i32, i32)* @output_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @output_gain(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, i32 %8, i32 %9) #0 {
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store double %0, double* %11, align 8
  store double %1, double* %12, align 8
  store double %2, double* %13, align 8
  store double %3, double* %14, align 8
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load double, double* %11, align 8
  %25 = call double @log(double %24) #3
  store double %25, double* %21, align 8
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  %26 = load i32, i32* %19, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  %29 = load double, double* %21, align 8
  %30 = fmul double %29, 5.000000e-01
  store double %30, double* %21, align 8
  br label %31

31:                                               ; preds = %28, %10
  %32 = load double, double* %12, align 8
  %33 = call i64 @IS_FAKE_INFINITY(double %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load double, double* %13, align 8
  store double %36, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  br label %47

37:                                               ; preds = %31
  %38 = load double, double* %21, align 8
  %39 = load double, double* %13, align 8
  %40 = fsub double %38, %39
  %41 = load double, double* %12, align 8
  %42 = fdiv double %40, %41
  %43 = load double, double* %13, align 8
  %44 = fadd double %42, %43
  store double %44, double* %22, align 8
  %45 = load double, double* %12, align 8
  %46 = fdiv double 1.000000e+00, %45
  store double %46, double* %23, align 8
  br label %47

47:                                               ; preds = %37, %35
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load double, double* %14, align 8
  %52 = fcmp ogt double %51, 1.000000e+00
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load double, double* %21, align 8
  %55 = load double, double* %15, align 8
  %56 = fcmp ogt double %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load double, double* %21, align 8
  %59 = load double, double* %16, align 8
  %60 = load double, double* %15, align 8
  %61 = load double, double* %16, align 8
  %62 = load double, double* %17, align 8
  %63 = load double, double* %23, align 8
  %64 = call double @hermite_interpolation(double %58, double %59, double %60, double %61, double %62, double 1.000000e+00, double %63)
  store double %64, double* %22, align 8
  br label %65

65:                                               ; preds = %57, %53, %50
  br label %82

66:                                               ; preds = %47
  %67 = load double, double* %14, align 8
  %68 = fcmp ogt double %67, 1.000000e+00
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load double, double* %21, align 8
  %71 = load double, double* %16, align 8
  %72 = fcmp olt double %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load double, double* %21, align 8
  %75 = load double, double* %15, align 8
  %76 = load double, double* %16, align 8
  %77 = load double, double* %15, align 8
  %78 = load double, double* %18, align 8
  %79 = load double, double* %23, align 8
  %80 = call double @hermite_interpolation(double %74, double %75, double %76, double %77, double %78, double 1.000000e+00, double %79)
  store double %80, double* %22, align 8
  br label %81

81:                                               ; preds = %73, %69, %66
  br label %82

82:                                               ; preds = %81, %65
  %83 = load double, double* %22, align 8
  %84 = load double, double* %21, align 8
  %85 = fsub double %83, %84
  %86 = call double @exp(double %85) #3
  ret double %86
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

declare dso_local i64 @IS_FAKE_INFINITY(double) #2

declare dso_local double @hermite_interpolation(double, double, double, double, double, double, double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
