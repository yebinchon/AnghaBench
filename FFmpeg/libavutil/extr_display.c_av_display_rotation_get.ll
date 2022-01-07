; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_display.c_av_display_rotation_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_display.c_av_display_rotation_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @av_display_rotation_get(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca [2 x double], align 16
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call double @CONV_FP(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call double @CONV_FP(i32 %12)
  %14 = call double @hypot(double %9, double %13) #3
  %15 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  store double %14, double* %15, align 16
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call double @CONV_FP(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = call double @CONV_FP(i32 %22)
  %24 = call double @hypot(double %19, double %23) #3
  %25 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 1
  store double %24, double* %25, align 8
  %26 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %27 = load double, double* %26, align 16
  %28 = fcmp oeq double %27, 0.000000e+00
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 1
  %31 = load double, double* %30, align 8
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %1
  %34 = load double, double* @NAN, align 8
  store double %34, double* %2, align 8
  br label %57

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call double @CONV_FP(i32 %38)
  %40 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 1
  %41 = load double, double* %40, align 8
  %42 = fdiv double %39, %41
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call double @CONV_FP(i32 %45)
  %47 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %48 = load double, double* %47, align 16
  %49 = fdiv double %46, %48
  %50 = call i32 @atan2(double %42, double %49)
  %51 = mul nsw i32 %50, 180
  %52 = load i32, i32* @M_PI, align 4
  %53 = sdiv i32 %51, %52
  %54 = sitofp i32 %53 to double
  store double %54, double* %4, align 8
  %55 = load double, double* %4, align 8
  %56 = fneg double %55
  store double %56, double* %2, align 8
  br label %57

57:                                               ; preds = %35, %33
  %58 = load double, double* %2, align 8
  ret double %58
}

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #1

declare dso_local double @CONV_FP(i32) #2

declare dso_local i32 @atan2(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
