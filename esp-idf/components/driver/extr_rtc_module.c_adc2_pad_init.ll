; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_pad_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_pad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_FLOATING = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adc2_pad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc2_pad_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @adc2_pad_get_io_num(i32 %4, i32* %3)
  %6 = call i32 @ADC2_CHECK_FUNCTION_RET(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @rtc_gpio_init(i32 %7)
  %9 = call i32 @ADC2_CHECK_FUNCTION_RET(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @rtc_gpio_output_disable(i32 %10)
  %12 = call i32 @ADC2_CHECK_FUNCTION_RET(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rtc_gpio_input_disable(i32 %13)
  %15 = call i32 @ADC2_CHECK_FUNCTION_RET(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GPIO_FLOATING, align 4
  %18 = call i32 @gpio_set_pull_mode(i32 %16, i32 %17)
  %19 = call i32 @ADC2_CHECK_FUNCTION_RET(i32 %18)
  %20 = load i32, i32* @ESP_OK, align 4
  ret i32 %20
}

declare dso_local i32 @ADC2_CHECK_FUNCTION_RET(i32) #1

declare dso_local i32 @adc2_pad_get_io_num(i32, i32*) #1

declare dso_local i32 @rtc_gpio_init(i32) #1

declare dso_local i32 @rtc_gpio_output_disable(i32) #1

declare dso_local i32 @rtc_gpio_input_disable(i32) #1

declare dso_local i32 @gpio_set_pull_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
