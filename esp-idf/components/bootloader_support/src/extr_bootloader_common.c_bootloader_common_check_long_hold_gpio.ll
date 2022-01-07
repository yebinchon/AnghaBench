; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_common.c_bootloader_common_check_long_hold_gpio.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_common.c_bootloader_common_check_long_hold_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PIN_MUX_REG = common dso_local global i64* null, align 8
@GPIO_NOT_HOLD = common dso_local global i32 0, align 4
@GPIO_SHORT_HOLD = common dso_local global i32 0, align 4
@GPIO_LONG_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootloader_common_check_long_hold_gpio(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @gpio_pad_select_gpio(i64 %7)
  %9 = load i64*, i64** @GPIO_PIN_MUX_REG, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64*, i64** @GPIO_PIN_MUX_REG, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @PIN_INPUT_ENABLE(i64 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @gpio_pad_pullup(i64 %21)
  %23 = call i64 (...) @esp_log_early_timestamp()
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @GPIO_INPUT_GET(i64 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @GPIO_NOT_HOLD, align 4
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %37, %29
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @GPIO_INPUT_GET(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @GPIO_SHORT_HOLD, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %5, align 8
  %39 = call i64 (...) @esp_log_early_timestamp()
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 1000
  %43 = icmp ugt i64 %38, %42
  br i1 %43, label %30, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @GPIO_LONG_HOLD, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %34, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @gpio_pad_select_gpio(i64) #1

declare dso_local i32 @PIN_INPUT_ENABLE(i64) #1

declare dso_local i32 @gpio_pad_pullup(i64) #1

declare dso_local i64 @esp_log_early_timestamp(...) #1

declare dso_local i32 @GPIO_INPUT_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
