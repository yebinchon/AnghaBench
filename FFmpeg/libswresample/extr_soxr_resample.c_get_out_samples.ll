; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_get_out_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_get_out_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { double, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SwrContext*, i32)* @get_out_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_out_samples(%struct.SwrContext* %0, i32 %1) #0 {
  %3 = alloca %struct.SwrContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.SwrContext* %0, %struct.SwrContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %8 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %12 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fdiv double %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %14, %16
  store double %17, double* %5, align 8
  %18 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %19 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call double @soxr_delay(i32 %21)
  store double %22, double* %6, align 8
  %23 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %24 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.SwrContext*, %struct.SwrContext** %3, align 8
  %29 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = load double, double* %6, align 8
  %33 = fadd double %32, %31
  store double %33, double* %6, align 8
  br label %34

34:                                               ; preds = %27, %2
  %35 = load double, double* %5, align 8
  %36 = load double, double* %6, align 8
  %37 = fadd double %35, %36
  %38 = fadd double %37, 1.000000e+00
  %39 = fadd double %38, 5.000000e-01
  %40 = fptosi double %39 to i32
  ret i32 %40
}

declare dso_local double @soxr_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
