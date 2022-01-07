; ModuleID = '/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp.c_ulp_run.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp.c_ulp_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_CORE_FOLW_8M = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_I2C_FOLW_8M = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_SLEEP_FOLW_8M = common dso_local global i32 0, align 4
@RTC_CNTL_MIN_SLP_VAL = common dso_local global i32 0, align 4
@RTC_CNTL_MIN_SLP_VAL_MIN = common dso_local global i32 0, align 4
@RTC_CNTL_OPTIONS0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_STATE0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER5_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ULP_CP_SLP_TIMER_EN = common dso_local global i32 0, align 4
@SENS_PC_INIT = common dso_local global i32 0, align 4
@SENS_SAR_START_FORCE_REG = common dso_local global i32 0, align 4
@SENS_ULP_CP_FORCE_START_TOP_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ulp_run(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ESP_OK, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
