; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_brownout.c_esp_brownout_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_brownout.c_esp_brownout_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_BROWN_OUT_REG = common dso_local global i32 0, align 4
@RTC_CNTL_BROWN_OUT_ENA = common dso_local global i32 0, align 4
@RTC_CNTL_BROWN_OUT_PD_RF_ENA = common dso_local global i32 0, align 4
@RTC_CNTL_BROWN_OUT_RST_WAIT_S = common dso_local global i32 0, align 4
@BROWNOUT_DET_LVL = common dso_local global i32 0, align 4
@RTC_CNTL_DBROWN_OUT_THRES_S = common dso_local global i32 0, align 4
@rtc_brownout_isr_handler = common dso_local global i32 0, align 4
@RTC_CNTL_BROWN_OUT_INT_ENA_M = common dso_local global i32 0, align 4
@RTC_CNTL_INT_ENA_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_brownout_init() #0 {
  %1 = load i32, i32* @RTC_CNTL_BROWN_OUT_REG, align 4
  %2 = load i32, i32* @RTC_CNTL_BROWN_OUT_ENA, align 4
  %3 = load i32, i32* @RTC_CNTL_BROWN_OUT_PD_RF_ENA, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @RTC_CNTL_BROWN_OUT_RST_WAIT_S, align 4
  %6 = shl i32 2, %5
  %7 = or i32 %4, %6
  %8 = load i32, i32* @BROWNOUT_DET_LVL, align 4
  %9 = load i32, i32* @RTC_CNTL_DBROWN_OUT_THRES_S, align 4
  %10 = shl i32 %8, %9
  %11 = or i32 %7, %10
  %12 = call i32 @REG_WRITE(i32 %1, i32 %11)
  %13 = load i32, i32* @rtc_brownout_isr_handler, align 4
  %14 = load i32, i32* @RTC_CNTL_BROWN_OUT_INT_ENA_M, align 4
  %15 = call i32 @rtc_isr_register(i32 %13, i32* null, i32 %14)
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  %17 = load i32, i32* @RTC_CNTL_INT_ENA_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_BROWN_OUT_INT_ENA_M, align 4
  %19 = call i32 @REG_SET_BIT(i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @rtc_isr_register(i32, i32*, i32) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
