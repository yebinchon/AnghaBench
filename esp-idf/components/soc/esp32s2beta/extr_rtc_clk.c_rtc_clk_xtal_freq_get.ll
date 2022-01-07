; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_xtal_freq_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_xtal_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_XTAL_FREQ_REG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid RTC_XTAL_FREQ_REG value: 0x%08x\00", align 1
@RTC_XTAL_FREQ_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_clk_xtal_freq_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RTC_XTAL_FREQ_REG, align 4
  %4 = call i32 @READ_PERI_REG(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @clk_val_is_valid(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @SOC_LOGW(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @RTC_XTAL_FREQ_AUTO, align 4
  store i32 %12, i32* %1, align 4
  br label %16

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @reg_val_to_clk_val(i32 %14)
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @clk_val_is_valid(i32) #1

declare dso_local i32 @SOC_LOGW(i32, i8*, i32) #1

declare dso_local i32 @reg_val_to_clk_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
