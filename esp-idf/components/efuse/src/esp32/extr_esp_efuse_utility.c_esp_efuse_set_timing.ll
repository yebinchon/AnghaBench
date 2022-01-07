; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_set_timing.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_DAC_CONF_REG = common dso_local global i32 0, align 4
@EFUSE_DAC_CLK_DIV = common dso_local global i32 0, align 4
@EFUSE_CLK_REG = common dso_local global i32 0, align 4
@EFUSE_CLK_SEL0 = common dso_local global i32 0, align 4
@EFUSE_CLK_SEL1 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @esp_efuse_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_efuse_set_timing() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @esp_clk_apb_freq()
  %6 = sdiv i32 %5, 1000000
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp sle i32 %7, 26
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 250, i32* %2, align 4
  store i32 255, i32* %3, align 4
  store i32 52, i32* %4, align 4
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 40
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 160, i32* %2, align 4
  store i32 255, i32* %3, align 4
  store i32 80, i32* %4, align 4
  br label %15

14:                                               ; preds = %10
  store i32 80, i32* %2, align 4
  store i32 128, i32* %3, align 4
  store i32 100, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* @EFUSE_DAC_CONF_REG, align 4
  %18 = load i32, i32* @EFUSE_DAC_CLK_DIV, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @EFUSE_CLK_REG, align 4
  %22 = load i32, i32* @EFUSE_CLK_SEL0, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @REG_SET_FIELD(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @EFUSE_CLK_REG, align 4
  %26 = load i32, i32* @EFUSE_CLK_SEL1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @REG_SET_FIELD(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @ESP_OK, align 4
  ret i32 %29
}

declare dso_local i32 @esp_clk_apb_freq(...) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
