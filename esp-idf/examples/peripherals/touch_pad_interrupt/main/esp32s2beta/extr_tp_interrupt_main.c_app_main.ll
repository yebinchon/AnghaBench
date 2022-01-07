; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@que_touch = common dso_local global i32* null, align 8
@TOUCH_BUTTON_NUM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Initializing touch pad\00", align 1
@button = common dso_local global i32* null, align 8
@TOUCH_PAD_THRESHOLD_MAX = common dso_local global i32 0, align 4
@TOUCH_PAD_FILTER_IIR_8 = common dso_local global i32 0, align 4
@touchsensor_interrupt_cb = common dso_local global i32 0, align 4
@TOUCH_PAD_INTR_MASK_ALL = common dso_local global i32 0, align 4
@TOUCH_PAD_INTR_MASK_ACTIVE = common dso_local global i32 0, align 4
@TOUCH_PAD_INTR_MASK_INACTIVE = common dso_local global i32 0, align 4
@TOUCH_FSM_MODE_TIMER = common dso_local global i32 0, align 4
@tp_example_read_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"touch_pad_read_task\00", align 1
@TOUCH_PAD_DENOISE_BIT4 = common dso_local global i32 0, align 4
@TOUCH_PAD_DENOISE_CAP_L7 = common dso_local global i32 0, align 4
@TOUCH_PAD_SHIELD_DRV_L0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @que_touch, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @TOUCH_BUTTON_NUM, align 4
  %6 = call i32* @xQueueCreate(i32 %5, i32 4)
  store i32* %6, i32** @que_touch, align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @touch_pad_init()
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %29, %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @TOUCH_BUTTON_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i32*, i32** @button, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @touch_pad_config(i32 %20)
  %22 = load i32*, i32** @button, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TOUCH_PAD_THRESHOLD_MAX, align 4
  %28 = call i32 @touch_pad_set_thresh(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* @TOUCH_PAD_FILTER_IIR_8, align 4
  %34 = call i32 @touchsensor_filter_set(i32 %33)
  %35 = load i32, i32* @touchsensor_interrupt_cb, align 4
  %36 = load i32, i32* @TOUCH_PAD_INTR_MASK_ALL, align 4
  %37 = call i32 @touch_pad_isr_register(i32 %35, i32* null, i32 %36)
  %38 = load i32, i32* @TOUCH_PAD_INTR_MASK_ACTIVE, align 4
  %39 = load i32, i32* @TOUCH_PAD_INTR_MASK_INACTIVE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @touch_pad_intr_enable(i32 %40)
  %42 = load i32, i32* @TOUCH_FSM_MODE_TIMER, align 4
  %43 = call i32 @touch_pad_set_fsm_mode(i32 %42)
  %44 = call i32 (...) @touch_pad_fsm_start()
  %45 = call i32 @xTaskCreate(i32* @tp_example_read_task, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32* null, i32 5, i32* null)
  ret void
}

declare dso_local i32* @xQueueCreate(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @touch_pad_init(...) #1

declare dso_local i32 @touch_pad_config(i32) #1

declare dso_local i32 @touch_pad_set_thresh(i32, i32) #1

declare dso_local i32 @touchsensor_filter_set(i32) #1

declare dso_local i32 @touch_pad_isr_register(i32, i32*, i32) #1

declare dso_local i32 @touch_pad_intr_enable(i32) #1

declare dso_local i32 @touch_pad_set_fsm_mode(i32) #1

declare dso_local i32 @touch_pad_fsm_start(...) #1

declare dso_local i32 @xTaskCreate(i32*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
