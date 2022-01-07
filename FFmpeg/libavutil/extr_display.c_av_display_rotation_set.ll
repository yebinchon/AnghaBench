; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_display.c_av_display_rotation_set.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_display.c_av_display_rotation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_display_rotation_set(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* %4, align 8
  %9 = fneg double %8
  %10 = load double, double* @M_PI, align 8
  %11 = fmul double %9, %10
  %12 = fdiv double %11, 1.800000e+02
  store double %12, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = call double @cos(double %13) #3
  store double %14, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = call double @sin(double %15) #3
  store double %16, double* %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 36)
  %19 = load double, double* %6, align 8
  %20 = call i32 @CONV_DB(double %19)
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load double, double* %7, align 8
  %24 = fneg double %23
  %25 = call i32 @CONV_DB(double %24)
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load double, double* %7, align 8
  %29 = call i32 @CONV_DB(double %28)
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load double, double* %6, align 8
  %33 = call i32 @CONV_DB(double %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 1073741824, i32* %37, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CONV_DB(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
