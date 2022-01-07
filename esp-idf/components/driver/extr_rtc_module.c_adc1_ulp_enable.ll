; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc1_ulp_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc1_ulp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_spinlock = common dso_local global i32 0, align 4
@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC_CTRL_ULP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adc1_ulp_enable() #0 {
  %1 = call i32 (...) @adc_power_on()
  %2 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %3 = load i32, i32* @ADC_UNIT_1, align 4
  %4 = load i32, i32* @ADC_CTRL_ULP, align 4
  %5 = call i32 @adc_set_controller(i32 %3, i32 %4)
  %6 = call i32 (...) @adc1_fsm_disable()
  %7 = call i32 @adc1_hall_enable(i32 0)
  %8 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  ret void
}

declare dso_local i32 @adc_power_on(...) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @adc_set_controller(i32, i32) #1

declare dso_local i32 @adc1_fsm_disable(...) #1

declare dso_local i32 @adc1_hall_enable(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
