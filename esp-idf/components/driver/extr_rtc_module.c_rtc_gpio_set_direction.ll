; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"RTC_GPIO number error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_gpio_set_direction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @rtc_gpio_is_valid_gpio(i32 %5)
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @RTC_MODULE_CHECK(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %30 [
    i32 130, label %10
    i32 128, label %15
    i32 129, label %20
    i32 131, label %25
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @rtc_gpio_output_disable(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rtc_gpio_input_enable(i32 %13)
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtc_gpio_output_enable(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @rtc_gpio_input_disable(i32 %18)
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtc_gpio_output_enable(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @rtc_gpio_input_enable(i32 %23)
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rtc_gpio_output_disable(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @rtc_gpio_input_disable(i32 %28)
  br label %30

30:                                               ; preds = %2, %25, %20, %15, %10
  %31 = load i32, i32* @ESP_OK, align 4
  ret i32 %31
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @rtc_gpio_is_valid_gpio(i32) #1

declare dso_local i32 @rtc_gpio_output_disable(i32) #1

declare dso_local i32 @rtc_gpio_input_enable(i32) #1

declare dso_local i32 @rtc_gpio_output_enable(i32) #1

declare dso_local i32 @rtc_gpio_input_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
