; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_ledc.c_timer_frequency_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_ledc.c_timer_frequency_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }

@LEDC_INTR_DISABLE = common dso_local global i32 0, align 4
@PULSE_IO = common dso_local global i32 0, align 4
@LEDC_AUTO_CLK = common dso_local global i32 0, align 4
@LEDC_HIGH_SPEED_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @timer_frequency_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_frequency_test(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 4000, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %17 = load i32, i32* @LEDC_INTR_DISABLE, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %21 = load i32, i32* @PULSE_IO, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 5000, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %26 = load i32, i32* @LEDC_AUTO_CLK, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %29, align 4
  %31 = call i32 @ledc_channel_config(%struct.TYPE_6__* %9)
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  %33 = call i32 @ledc_timer_config(%struct.TYPE_5__* %10)
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LEDC_HIGH_SPEED_MODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @frequency_set_get(i64 %41, i32 %43, i32 100, i32 100, i32 2)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @frequency_set_get(i64 %46, i32 %48, i32 5000, i32 5000, i32 5)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @frequency_set_get(i64 %51, i32 %53, i32 9000, i32 9025, i32 5)
  br label %61

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @frequency_set_get(i64 %57, i32 %59, i32 10, i32 10, i32 1)
  br label %61

61:                                               ; preds = %55, %39
  ret void
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @ledc_channel_config(%struct.TYPE_6__*) #1

declare dso_local i32 @ledc_timer_config(%struct.TYPE_5__*) #1

declare dso_local i32 @frequency_set_get(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
