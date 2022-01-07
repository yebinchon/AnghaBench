; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_touchpad.c_touch_pad_sw_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_touchpad.c_touch_pad_sw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@RTCCNTL = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TOUCH_FSM_MODE_SW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"touch fsm mode error\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @touch_pad_sw_start() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RTCCNTL, i32 0, i32 0, i32 0), align 8
  %2 = load i64, i64* @TOUCH_FSM_MODE_SW, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %6 = call i32 @RTC_MODULE_CHECK(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (...) @RTC_TOUCH_ENTER_CRITICAL()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RTCCNTL, i32 0, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RTCCNTL, i32 0, i32 0, i32 1), align 8
  %8 = call i32 (...) @RTC_TOUCH_EXIT_CRITICAL()
  %9 = load i32, i32* @ESP_OK, align 4
  ret i32 %9
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @RTC_TOUCH_ENTER_CRITICAL(...) #1

declare dso_local i32 @RTC_TOUCH_EXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
