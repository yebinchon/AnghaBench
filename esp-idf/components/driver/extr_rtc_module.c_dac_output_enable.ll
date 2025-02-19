; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_dac_output_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_dac_output_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAC_CHANNEL_1 = common dso_local global i64 0, align 8
@DAC_CHANNEL_MAX = common dso_local global i64 0, align 8
@DAC_ERR_STR_CHANNEL_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@rtc_spinlock = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dac_output_enable(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @DAC_CHANNEL_1, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @DAC_CHANNEL_MAX, align 8
  %9 = icmp slt i64 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @DAC_ERR_STR_CHANNEL_ERROR, align 4
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %15 = call i32 @RTC_MODULE_CHECK(i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @dac_rtc_pad_init(i64 %16)
  %18 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @dac_output_set_enable(i64 %19, i32 1)
  %21 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  %22 = load i32, i32* @ESP_OK, align 4
  ret i32 %22
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i32, i32) #1

declare dso_local i32 @dac_rtc_pad_init(i64) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @dac_output_set_enable(i64, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
