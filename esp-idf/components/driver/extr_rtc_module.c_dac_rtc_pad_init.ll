; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_dac_rtc_pad_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_dac_rtc_pad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAC_CHANNEL_1 = common dso_local global i64 0, align 8
@DAC_CHANNEL_MAX = common dso_local global i64 0, align 8
@DAC_ERR_STR_CHANNEL_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @dac_rtc_pad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac_rtc_pad_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @DAC_CHANNEL_1, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @DAC_CHANNEL_MAX, align 8
  %10 = icmp slt i64 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @DAC_ERR_STR_CHANNEL_ERROR, align 4
  %15 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %16 = call i32 @RTC_MODULE_CHECK(i32 %13, i32 %14, i32 %15)
  store i32 0, i32* %3, align 4
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @dac_pad_get_io_num(i64 %17, i32* %3)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rtc_gpio_init(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtc_gpio_output_disable(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @rtc_gpio_input_disable(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @rtc_gpio_pullup_dis(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rtc_gpio_pulldown_dis(i32 %27)
  %29 = load i32, i32* @ESP_OK, align 4
  ret i32 %29
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i32, i32) #1

declare dso_local i32 @dac_pad_get_io_num(i64, i32*) #1

declare dso_local i32 @rtc_gpio_init(i32) #1

declare dso_local i32 @rtc_gpio_output_disable(i32) #1

declare dso_local i32 @rtc_gpio_input_disable(i32) #1

declare dso_local i32 @rtc_gpio_pullup_dis(i32) #1

declare dso_local i32 @rtc_gpio_pulldown_dis(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
