; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_touchpad.c_touch_pad_clear_group_mask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_touchpad.c_touch_pad_clear_group_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TOUCH_PAD_BIT_MASK_MAX = common dso_local global i32 0, align 4
@SENS = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RTCCNTL = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @touch_pad_clear_group_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @RTC_TOUCH_ENTER_CRITICAL()
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TOUCH_PAD_BIT_MASK_MAX, align 4
  %6 = and i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SENS, i32 0, i32 0, i32 0), align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SENS, i32 0, i32 0, i32 0), align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TOUCH_PAD_BIT_MASK_MAX, align 4
  %12 = and i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @RTCCNTL, i32 0, i32 0, i32 0), align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @RTCCNTL, i32 0, i32 0, i32 0), align 4
  %16 = call i32 (...) @RTC_TOUCH_EXIT_CRITICAL()
  %17 = load i32, i32* @ESP_OK, align 4
  ret i32 %17
}

declare dso_local i32 @RTC_TOUCH_ENTER_CRITICAL(...) #1

declare dso_local i32 @RTC_TOUCH_EXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
