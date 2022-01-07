; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { double, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.SwrContext*, double)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.SwrContext* %0, double %1) #0 {
  %3 = alloca %struct.SwrContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.SwrContext* %0, %struct.SwrContext** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %8 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = call double @soxr_delay(i32 %10)
  store double %11, double* %5, align 8
  %12 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %13 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %18 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = load double, double* %5, align 8
  %22 = fadd double %21, %20
  store double %22, double* %5, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load double, double* %5, align 8
  %25 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %26 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fdiv double %24, %27
  store double %28, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %4, align 8
  %31 = fmul double %29, %30
  %32 = fadd double %31, 5.000000e-01
  ret double %32
}

declare dso_local double @soxr_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
