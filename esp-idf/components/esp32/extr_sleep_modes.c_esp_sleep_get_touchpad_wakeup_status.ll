; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_touchpad_wakeup_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_touchpad_wakeup_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_SLEEP_WAKEUP_TOUCHPAD = common dso_local global i64 0, align 8
@TOUCH_PAD_MAX = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_get_touchpad_wakeup_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 (...) @esp_sleep_get_wakeup_cause()
  %5 = load i64, i64* @ESP_SLEEP_WAKEUP_TOUCHPAD, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @TOUCH_PAD_MAX, align 4
  store i32 %8, i32* %1, align 4
  br label %20

9:                                                ; preds = %0
  %10 = call i64 @touch_pad_get_wakeup_status(i32* %2)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i1 [ false, %9 ], [ true, %14 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %15, %7
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @esp_sleep_get_wakeup_cause(...) #1

declare dso_local i64 @touch_pad_get_wakeup_status(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
