; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_i2s_data_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_i2s_data_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ADC_I2S_DATA_SRC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ADC i2s data source error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@rtc_spinlock = common dso_local global i32 0, align 4
@SYSCON = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc_set_i2s_data_source(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @ADC_I2S_DATA_SRC_MAX, align 8
  %5 = icmp slt i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @RTC_MODULE_CHECK(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SYSCON, i32 0, i32 0, i32 0), align 8
  %11 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  %12 = load i32, i32* @ESP_OK, align 4
  ret i32 %12
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
