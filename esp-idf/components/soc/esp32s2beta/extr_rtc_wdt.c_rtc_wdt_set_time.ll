; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_rtc_wdt_set_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_rtc_wdt_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@EFUSE_RD_REPEAT_DATA1_REG = common dso_local global i32 0, align 4
@EFUSE_WDT_DELAY_SEL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_wdt_set_time(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = call i64 (...) @rtc_clk_slow_freq_get_hz()
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = mul i32 %13, %14
  %16 = udiv i32 %15, 1000
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EFUSE_RD_REPEAT_DATA1_REG, align 4
  %23 = load i32, i32* @EFUSE_WDT_DELAY_SEL, align 4
  %24 = call i32 @REG_GET_FIELD(i32 %22, i32 %23)
  %25 = add nsw i32 1, %24
  %26 = ashr i32 %21, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %11
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @get_addr_reg(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WRITE_PERI_REG(i32 %29, i32 %30)
  %32 = load i32, i32* @ESP_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @rtc_clk_slow_freq_get_hz(...) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @get_addr_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
