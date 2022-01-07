; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_isr_ensure_installed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_isr_ensure_installed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@s_rtc_isr_handler_list_lock = common dso_local global i32 0, align 4
@s_rtc_isr_handle = common dso_local global i64 0, align 8
@RTC_CNTL_INT_ENA_REG = common dso_local global i32 0, align 4
@RTC_CNTL_INT_CLR_REG = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@ETS_RTC_CORE_INTR_SOURCE = common dso_local global i32 0, align 4
@rtc_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @rtc_isr_ensure_installed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtc_isr_ensure_installed() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ESP_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 @portENTER_CRITICAL(i32* @s_rtc_isr_handler_list_lock)
  %4 = load i64, i64* @s_rtc_isr_handle, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @RTC_CNTL_INT_ENA_REG, align 4
  %9 = call i32 @REG_WRITE(i32 %8, i32 0)
  %10 = load i32, i32* @RTC_CNTL_INT_CLR_REG, align 4
  %11 = load i32, i32* @UINT32_MAX, align 4
  %12 = call i32 @REG_WRITE(i32 %10, i32 %11)
  %13 = load i32, i32* @ETS_RTC_CORE_INTR_SOURCE, align 4
  %14 = call i64 @esp_intr_alloc(i32 %13, i32 0, i32* @rtc_isr, i32* null, i64* @s_rtc_isr_handle)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %20

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %18, %6
  %21 = call i32 @portEXIT_CRITICAL(i32* @s_rtc_isr_handler_list_lock)
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i64 @esp_intr_alloc(i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
