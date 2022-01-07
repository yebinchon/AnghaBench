; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_esp_timing.c_mbedtls_timing_get_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_esp_timing.c_mbedtls_timing_get_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_timing_hr_time = type { i32 }
%struct._hr_time = type { %struct.timeval }
%struct.timeval = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mbedtls_timing_hr_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._hr_time*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 8
  store %struct.mbedtls_timing_hr_time* %0, %struct.mbedtls_timing_hr_time** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mbedtls_timing_hr_time*, %struct.mbedtls_timing_hr_time** %4, align 8
  %10 = bitcast %struct.mbedtls_timing_hr_time* %9 to %struct._hr_time*
  store %struct._hr_time* %10, %struct._hr_time** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct._hr_time*, %struct._hr_time** %6, align 8
  %15 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %14, i32 0, i32 0
  %16 = call i32 @gettimeofday(%struct.timeval* %15, i32* null)
  store i64 0, i64* %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct._hr_time*, %struct._hr_time** %6, align 8
  %22 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %20, %24
  %26 = mul i64 %25, 1000
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct._hr_time*, %struct._hr_time** %6, align 8
  %30 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %28, %32
  %34 = sdiv i32 %33, 1000
  %35 = sext i32 %34 to i64
  %36 = add i64 %26, %35
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %17, %13
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
