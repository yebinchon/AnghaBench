; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Initializing touch pad\00", align 1
@TOUCH_FSM_MODE_TIMER = common dso_local global i32 0, align 4
@TOUCH_HVOLT_2V7 = common dso_local global i32 0, align 4
@TOUCH_LVOLT_0V5 = common dso_local global i32 0, align 4
@TOUCH_HVOLT_ATTEN_1V = common dso_local global i32 0, align 4
@TOUCHPAD_FILTER_TOUCH_PERIOD = common dso_local global i32 0, align 4
@tp_example_rtc_intr = common dso_local global i32 0, align 4
@tp_example_read_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"touch_pad_read_task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = load i32, i32* @TAG, align 4
  %2 = call i32 @ESP_LOGI(i32 %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @touch_pad_init()
  %4 = load i32, i32* @TOUCH_FSM_MODE_TIMER, align 4
  %5 = call i32 @touch_pad_set_fsm_mode(i32 %4)
  %6 = load i32, i32* @TOUCH_HVOLT_2V7, align 4
  %7 = load i32, i32* @TOUCH_LVOLT_0V5, align 4
  %8 = load i32, i32* @TOUCH_HVOLT_ATTEN_1V, align 4
  %9 = call i32 @touch_pad_set_voltage(i32 %6, i32 %7, i32 %8)
  %10 = call i32 (...) @tp_example_touch_pad_init()
  %11 = load i32, i32* @TOUCHPAD_FILTER_TOUCH_PERIOD, align 4
  %12 = call i32 @touch_pad_filter_start(i32 %11)
  %13 = call i32 (...) @tp_example_set_thresholds()
  %14 = load i32, i32* @tp_example_rtc_intr, align 4
  %15 = call i32 @touch_pad_isr_register(i32 %14, i32* null)
  %16 = call i32 @xTaskCreate(i32* @tp_example_read_task, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32* null, i32 5, i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @touch_pad_init(...) #1

declare dso_local i32 @touch_pad_set_fsm_mode(i32) #1

declare dso_local i32 @touch_pad_set_voltage(i32, i32, i32) #1

declare dso_local i32 @tp_example_touch_pad_init(...) #1

declare dso_local i32 @touch_pad_filter_start(i32) #1

declare dso_local i32 @tp_example_set_thresholds(...) #1

declare dso_local i32 @touch_pad_isr_register(i32, i32*) #1

declare dso_local i32 @xTaskCreate(i32*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
