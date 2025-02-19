; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32s2beta/extr_tp_read_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32s2beta/extr_tp_read_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TOUCH_BUTTON_NUM = common dso_local global i32 0, align 4
@button = common dso_local global i32* null, align 8
@TOUCH_PAD_THRESHOLD_MAX = common dso_local global i32 0, align 4
@TOUCH_PAD_DENOISE_CAP_L7 = common dso_local global i32 0, align 4
@TOUCH_PAD_DENOISE_BIT4 = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Denoise function init\00", align 1
@TOUCH_FSM_MODE_TIMER = common dso_local global i32 0, align 4
@tp_example_read_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"touch_pad_read_task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = call i32 (...) @touch_pad_init()
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @TOUCH_BUTTON_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i32*, i32** @button, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @touch_pad_config(i32 %13)
  %15 = load i32*, i32** @button, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TOUCH_PAD_THRESHOLD_MAX, align 4
  %21 = call i32 @touch_pad_set_thresh(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %4

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %27 = load i32, i32* @TOUCH_PAD_DENOISE_CAP_L7, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %29 = load i32, i32* @TOUCH_PAD_DENOISE_BIT4, align 4
  store i32 %29, i32* %28, align 4
  %30 = bitcast %struct.TYPE_3__* %2 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @touch_pad_denoise_set_config(i64 %31)
  %33 = call i32 (...) @touch_pad_denoise_enable()
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @TOUCH_FSM_MODE_TIMER, align 4
  %37 = call i32 @touch_pad_set_fsm_mode(i32 %36)
  %38 = call i32 (...) @touch_pad_fsm_start()
  %39 = call i32 @xTaskCreate(i32* @tp_example_read_task, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32* null, i32 5, i32* null)
  ret void
}

declare dso_local i32 @touch_pad_init(...) #1

declare dso_local i32 @touch_pad_config(i32) #1

declare dso_local i32 @touch_pad_set_thresh(i32, i32) #1

declare dso_local i32 @touch_pad_denoise_set_config(i64) #1

declare dso_local i32 @touch_pad_denoise_enable(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @touch_pad_set_fsm_mode(i32) #1

declare dso_local i32 @touch_pad_fsm_start(...) #1

declare dso_local i32 @xTaskCreate(i32*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
