; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_raw_to_voltage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_raw_to_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }

@ADC_WIDTH_BIT_12 = common dso_local global i32 0, align 4
@ADC_12_BIT_RES = common dso_local global i32 0, align 4
@LUT_ENABLED = common dso_local global i64 0, align 8
@ADC_ATTEN_DB_11 = common dso_local global i64 0, align 8
@LUT_LOW_THRESH = common dso_local global i32 0, align 4
@LUT_HIGH_THRESH = common dso_local global i32 0, align 4
@LUT_ADC_STEP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_adc_cal_raw_to_voltage(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  %18 = shl i32 %12, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ADC_12_BIT_RES, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ADC_12_BIT_RES, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i64, i64* @LUT_ENABLED, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ADC_ATTEN_DB_11, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @LUT_LOW_THRESH, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @calculate_voltage_lut(i32 %40, i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @LUT_HIGH_THRESH, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %39
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @calculate_voltage_linear(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @LUT_LOW_THRESH, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @interpolate_two_points(i32 %63, i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %81

70:                                               ; preds = %39
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %35, %29, %26
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @calculate_voltage_linear(i32 %73, i32 %76, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %70, %54
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @calculate_voltage_lut(i32, i32, i32, i32) #1

declare dso_local i32 @calculate_voltage_linear(i32, i32, i32) #1

declare dso_local i32 @interpolate_two_points(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
