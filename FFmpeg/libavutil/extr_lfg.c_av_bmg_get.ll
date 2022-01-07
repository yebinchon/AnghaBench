; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_lfg.c_av_bmg_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_lfg.c_av_bmg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_bmg_get(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load double, double* @UINT_MAX, align 8
  %10 = fdiv double 2.000000e+00, %9
  %11 = load i32*, i32** %3, align 8
  %12 = call double @av_lfg_get(i32* %11)
  %13 = fmul double %10, %12
  %14 = fsub double %13, 1.000000e+00
  store double %14, double* %5, align 8
  %15 = load double, double* @UINT_MAX, align 8
  %16 = fdiv double 2.000000e+00, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call double @av_lfg_get(i32* %17)
  %19 = fmul double %16, %18
  %20 = fsub double %19, 1.000000e+00
  store double %20, double* %6, align 8
  %21 = load double, double* %5, align 8
  %22 = load double, double* %5, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %6, align 8
  %25 = load double, double* %6, align 8
  %26 = fmul double %24, %25
  %27 = fadd double %23, %26
  store double %27, double* %7, align 8
  br label %28

28:                                               ; preds = %8
  %29 = load double, double* %7, align 8
  %30 = fcmp oge double %29, 1.000000e+00
  br i1 %30, label %8, label %31

31:                                               ; preds = %28
  %32 = load double, double* %7, align 8
  %33 = call double @log(double %32) #3
  %34 = fmul double -2.000000e+00, %33
  %35 = load double, double* %7, align 8
  %36 = fdiv double %34, %35
  %37 = call double @sqrt(double %36) #3
  store double %37, double* %7, align 8
  %38 = load double, double* %5, align 8
  %39 = load double, double* %7, align 8
  %40 = fmul double %38, %39
  %41 = load double*, double** %4, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  store double %40, double* %42, align 8
  %43 = load double, double* %6, align 8
  %44 = load double, double* %7, align 8
  %45 = fmul double %43, %44
  %46 = load double*, double** %4, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  store double %45, double* %47, align 8
  ret void
}

declare dso_local double @av_lfg_get(i32*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
