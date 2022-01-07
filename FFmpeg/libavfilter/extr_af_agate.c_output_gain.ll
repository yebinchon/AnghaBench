; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_agate.c_output_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_agate.c_output_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double, double, double, double, i32)* @output_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @output_gain(double %0, double %1, double %2, double %3, double %4, double %5, double %6, i32 %7) #0 {
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load double, double* %9, align 8
  %22 = call double @log(double %21) #3
  store double %22, double* %17, align 8
  %23 = load double, double* %10, align 8
  store double %23, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  %24 = load double, double* %10, align 8
  %25 = call i64 @IS_FAKE_INFINITY(double %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store double 1.000000e+03, double* %18, align 8
  br label %28

28:                                               ; preds = %27, %8
  %29 = load double, double* %17, align 8
  %30 = load double, double* %11, align 8
  %31 = fsub double %29, %30
  %32 = load double, double* %18, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* %11, align 8
  %35 = fadd double %33, %34
  store double %35, double* %19, align 8
  %36 = load double, double* %18, align 8
  store double %36, double* %20, align 8
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load double, double* %12, align 8
  %41 = fcmp ogt double %40, 1.000000e+00
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load double, double* %17, align 8
  %44 = load double, double* %14, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load double, double* %17, align 8
  %48 = load double, double* %14, align 8
  %49 = load double, double* %13, align 8
  %50 = load double, double* %14, align 8
  %51 = load double, double* %11, align 8
  %52 = fsub double %50, %51
  %53 = load double, double* %18, align 8
  %54 = fmul double %52, %53
  %55 = load double, double* %11, align 8
  %56 = fadd double %54, %55
  %57 = load double, double* %13, align 8
  %58 = load double, double* %20, align 8
  %59 = call double @hermite_interpolation(double %47, double %48, double %49, double %56, double %57, double %58, i32 1)
  store double %59, double* %19, align 8
  br label %60

60:                                               ; preds = %46, %42, %39
  br label %83

61:                                               ; preds = %28
  %62 = load double, double* %12, align 8
  %63 = fcmp ogt double %62, 1.000000e+00
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load double, double* %17, align 8
  %66 = load double, double* %13, align 8
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load double, double* %17, align 8
  %70 = load double, double* %13, align 8
  %71 = load double, double* %14, align 8
  %72 = load double, double* %13, align 8
  %73 = load double, double* %11, align 8
  %74 = fsub double %72, %73
  %75 = load double, double* %18, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %11, align 8
  %78 = fadd double %76, %77
  %79 = load double, double* %14, align 8
  %80 = load double, double* %20, align 8
  %81 = call double @hermite_interpolation(double %69, double %70, double %71, double %78, double %79, double %80, i32 1)
  store double %81, double* %19, align 8
  br label %82

82:                                               ; preds = %68, %64, %61
  br label %83

83:                                               ; preds = %82, %60
  %84 = load double, double* %15, align 8
  %85 = load double, double* %19, align 8
  %86 = load double, double* %17, align 8
  %87 = fsub double %85, %86
  %88 = call i32 @exp(double %87)
  %89 = call double @FFMAX(double %84, i32 %88)
  ret double %89
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

declare dso_local i64 @IS_FAKE_INFINITY(double) #2

declare dso_local double @hermite_interpolation(double, double, double, double, double, double, i32) #2

declare dso_local double @FFMAX(double, i32) #2

declare dso_local i32 @exp(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
