; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_equalizer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_equalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FILTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double)* @equalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @equalizer(%struct.TYPE_6__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store double %1, double* %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load double, double* %4, align 8
  %12 = call double @hz_2_rad(i32 %10, double %11)
  store double %12, double* %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load double, double* %4, align 8
  %17 = call double @hz_2_rad(i32 %15, double %16)
  store double %17, double* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %63 [
    i32 130, label %21
    i32 129, label %35
    i32 128, label %49
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call double @butterworth_compute_bw_gain_db(i32 %24)
  store double %25, double* %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load i32, i32* @FILTER_ORDER, align 4
  %28 = load double, double* %5, align 8
  %29 = load double, double* %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load double, double* %7, align 8
  %34 = call i32 @butterworth_bp_filter(%struct.TYPE_6__* %26, i32 %27, double %28, double %29, i32 %32, double %33, i32 0)
  br label %63

35:                                               ; preds = %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call double @chebyshev1_compute_bw_gain_db(i32 %38)
  store double %39, double* %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i32, i32* @FILTER_ORDER, align 4
  %42 = load double, double* %5, align 8
  %43 = load double, double* %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load double, double* %7, align 8
  %48 = call i32 @chebyshev1_bp_filter(%struct.TYPE_6__* %40, i32 %41, double %42, double %43, i32 %46, double %47, i32 0)
  br label %63

49:                                               ; preds = %2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call double @chebyshev2_compute_bw_gain_db(i32 %52)
  store double %53, double* %7, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32, i32* @FILTER_ORDER, align 4
  %56 = load double, double* %5, align 8
  %57 = load double, double* %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load double, double* %7, align 8
  %62 = call i32 @chebyshev2_bp_filter(%struct.TYPE_6__* %54, i32 %55, double %56, double %57, i32 %60, double %61, i32 0)
  br label %63

63:                                               ; preds = %2, %49, %35, %21
  ret void
}

declare dso_local double @hz_2_rad(i32, double) #1

declare dso_local double @butterworth_compute_bw_gain_db(i32) #1

declare dso_local i32 @butterworth_bp_filter(%struct.TYPE_6__*, i32, double, double, i32, double, i32) #1

declare dso_local double @chebyshev1_compute_bw_gain_db(i32) #1

declare dso_local i32 @chebyshev1_bp_filter(%struct.TYPE_6__*, i32, double, double, i32, double, i32) #1

declare dso_local double @chebyshev2_compute_bw_gain_db(i32) #1

declare dso_local i32 @chebyshev2_bp_filter(%struct.TYPE_6__*, i32, double, double, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
