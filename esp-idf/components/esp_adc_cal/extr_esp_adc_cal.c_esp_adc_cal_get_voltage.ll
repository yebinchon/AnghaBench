; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_get_voltage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC_UNIT_1 = common dso_local global i64 0, align 8
@ADC1_CHANNEL_MAX = common dso_local global i64 0, align 8
@ADC2_CHANNEL_MAX = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_adc_cal_get_voltage(i64 %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @ADC_CAL_CHECK(i32 %11, i32 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 @ADC_CAL_CHECK(i32 %16, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ADC_UNIT_1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ADC1_CHANNEL_MAX, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %30 = call i32 @ADC_CAL_CHECK(i32 %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @adc1_get_raw(i64 %31)
  store i32 %32, i32* %8, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ADC2_CHANNEL_MAX, align 8
  %36 = icmp slt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %39 = call i32 @ADC_CAL_CHECK(i32 %37, i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @adc2_get_raw(i64 %40, i32 %43, i32* %8)
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  store i64 %48, i64* %4, align 8
  br label %56

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = call i32 @esp_adc_cal_raw_to_voltage(i32 %51, %struct.TYPE_4__* %52)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* @ESP_OK, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @ADC_CAL_CHECK(i32, i32) #1

declare dso_local i32 @adc1_get_raw(i64) #1

declare dso_local i64 @adc2_get_raw(i64, i32, i32*) #1

declare dso_local i32 @esp_adc_cal_raw_to_voltage(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
