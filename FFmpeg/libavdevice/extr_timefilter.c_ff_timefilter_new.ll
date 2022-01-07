; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_timefilter.c_ff_timefilter_new.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_timefilter.c_ff_timefilter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double }

@M_PI = common dso_local global i32 0, align 4
@M_SQRT2 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ff_timefilter_new(double %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %10 = call %struct.TYPE_4__* @av_mallocz(i32 24)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i32, i32* @M_PI, align 4
  %12 = mul nsw i32 2, %11
  %13 = sitofp i32 %12 to double
  %14 = load double, double* %7, align 8
  %15 = fmul double %13, %14
  %16 = load double, double* %6, align 8
  %17 = fmul double %15, %16
  %18 = load double, double* %5, align 8
  %19 = fmul double %17, %18
  store double %19, double* %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %42

23:                                               ; preds = %3
  %24 = load double, double* %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store double %24, double* %26, align 8
  %27 = load double, double* @M_SQRT2, align 8
  %28 = load double, double* %9, align 8
  %29 = fmul double %27, %28
  %30 = call double @qexpneg(double %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store double %30, double* %32, align 8
  %33 = load double, double* %9, align 8
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  %36 = call double @qexpneg(double %35)
  %37 = load double, double* %6, align 8
  %38 = fdiv double %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store double %38, double* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %4, align 8
  br label %42

42:                                               ; preds = %23, %22
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %43
}

declare dso_local %struct.TYPE_4__* @av_mallocz(i32) #1

declare dso_local double @qexpneg(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
