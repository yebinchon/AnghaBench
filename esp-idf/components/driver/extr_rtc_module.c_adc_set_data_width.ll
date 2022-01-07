; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_data_width.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_data_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }

@ADC_WIDTH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ADC bit width error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@rtc_spinlock = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC_UNIT_2 = common dso_local global i32 0, align 4
@SENS = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc_set_data_width(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ADC_CHECK_UNIT(i32 %5)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ADC_WIDTH_MAX, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %12 = call i32 @RTC_MODULE_CHECK(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %14 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  %15 = load i32, i32* @ESP_OK, align 4
  ret i32 %15
}

declare dso_local i32 @ADC_CHECK_UNIT(i32) #1

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
