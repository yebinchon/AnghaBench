; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ff_ebur128_loudness_momentary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ff_ebur128_loudness_momentary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@HUGE_VAL = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ebur128_loudness_momentary(%struct.TYPE_6__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 4
  %15 = call i32 @ebur128_energy_in_interval(%struct.TYPE_6__* %8, i32 %14, double* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load double, double* %6, align 8
  %22 = fcmp ole double %21, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load double, double* @HUGE_VAL, align 8
  %25 = fneg double %24
  %26 = load double*, double** %5, align 8
  store double %25, double* %26, align 8
  store i32 0, i32* %3, align 4
  br label %32

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load double, double* %6, align 8
  %30 = call double @ebur128_energy_to_loudness(double %29)
  %31 = load double*, double** %5, align 8
  store double %30, double* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ebur128_energy_in_interval(%struct.TYPE_6__*, i32, double*) #1

declare dso_local double @ebur128_energy_to_loudness(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
