; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_tempsensor.c_temp_sensor_read_celsius.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_tempsensor.c_temp_sensor_read_celsius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float }
%struct.TYPE_6__ = type { i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@dac_offset = common dso_local global %struct.TYPE_5__* null, align 8
@TSENS_ADC_FACTOR = common dso_local global float 0.000000e+00, align 4
@TSENS_DAC_FACTOR = common dso_local global float 0.000000e+00, align 4
@TSENS_SYS_OFFSET = common dso_local global float 0.000000e+00, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Exceeding the temperature range!\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @temp_sensor_read_celsius(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store float* %0, float** %2, align 8
  %7 = load float*, float** %2, align 8
  %8 = icmp ne float* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %11 = call i32 @TSENS_CHECK(i32 %9, i64 %10)
  store i64 0, i64* %4, align 8
  %12 = call i64 @temp_sensor_get_config(%struct.TYPE_6__* %3)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = call i64 @temp_sensor_read_raw(i64* %4)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @TSENS_CHECK(i32 %21, i64 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dac_offset, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %6, align 8
  %28 = load float, float* @TSENS_ADC_FACTOR, align 4
  %29 = load i64, i64* %4, align 8
  %30 = sitofp i64 %29 to float
  %31 = fmul float %28, %30
  %32 = load float, float* @TSENS_DAC_FACTOR, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fmul float %32, %35
  %37 = fsub float %31, %36
  %38 = load float, float* @TSENS_SYS_OFFSET, align 4
  %39 = fsub float %37, %38
  %40 = load float*, float** %2, align 8
  store float %39, float* %40, align 4
  %41 = load float*, float** %2, align 8
  %42 = load float, float* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fcmp olt float %42, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %16
  %48 = load float*, float** %2, align 8
  %49 = load float, float* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  %53 = fcmp ogt float %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47, %16
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 @ESP_LOGW(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %57 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @TSENS_CHECK(i32, i64) #1

declare dso_local i64 @temp_sensor_get_config(%struct.TYPE_6__*) #1

declare dso_local i64 @temp_sensor_read_raw(i64*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
