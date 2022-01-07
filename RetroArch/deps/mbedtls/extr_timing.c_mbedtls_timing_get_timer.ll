; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_timing.c_mbedtls_timing_get_timer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_timing.c_mbedtls_timing_get_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_timing_hr_time = type { i32 }
%struct.timeval = type { i32, i32 }
%struct._hr_time = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mbedtls_timing_hr_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct._hr_time*, align 8
  store %struct.mbedtls_timing_hr_time* %0, %struct.mbedtls_timing_hr_time** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mbedtls_timing_hr_time*, %struct.mbedtls_timing_hr_time** %4, align 8
  %10 = bitcast %struct.mbedtls_timing_hr_time* %9 to %struct._hr_time*
  store %struct._hr_time* %10, %struct._hr_time** %8, align 8
  %11 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct._hr_time*, %struct._hr_time** %8, align 8
  %18 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct._hr_time*, %struct._hr_time** %8, align 8
  %23 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  store i64 0, i64* %3, align 8
  br label %45

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct._hr_time*, %struct._hr_time** %8, align 8
  %29 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  %33 = mul nsw i32 %32, 1000
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct._hr_time*, %struct._hr_time** %8, align 8
  %37 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  %41 = sdiv i32 %40, 1000
  %42 = add nsw i32 %33, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %25, %14
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
