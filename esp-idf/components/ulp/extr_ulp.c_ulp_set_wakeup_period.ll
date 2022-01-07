; ModuleID = '/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp.c_ulp_set_wakeup_period.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp.c_ulp_set_wakeup_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RTC_CLK_CAL_FRACT = common dso_local global i64 0, align 8
@RTC_CNTL_TIMER2_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ULPCP_TOUCH_START_WAIT = common dso_local global i32 0, align 4
@SENS_SLEEP_CYCLES_S0 = common dso_local global i32 0, align 4
@SENS_ULP_CP_SLEEP_CYC0_REG = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@ULP_FSM_PREPARE_SLEEP_CYCLES = common dso_local global i64 0, align 8
@ULP_FSM_WAKEUP_SLEEP_CYCLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ulp_set_wakeup_period(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @ESP_OK, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
