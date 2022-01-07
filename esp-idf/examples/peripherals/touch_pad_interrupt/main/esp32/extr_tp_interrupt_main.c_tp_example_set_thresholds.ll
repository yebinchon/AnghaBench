; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_tp_example_set_thresholds.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_tp_example_set_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOUCH_PAD_MAX = common dso_local global i32 0, align 4
@s_pad_init_val = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"test init: touch pad [%d] val is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tp_example_set_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_set_thresholds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TOUCH_PAD_MAX, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @touch_pad_read_filtered(i32 %8, i32* %1)
  %10 = load i32, i32* %1, align 4
  %11 = load i32*, i32** @s_pad_init_val, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @TAG, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sdiv i32 %21, 3
  %23 = call i32 @touch_pad_set_thresh(i32 %19, i32 %22)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  br label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %3

28:                                               ; preds = %3
  ret void
}

declare dso_local i32 @touch_pad_read_filtered(i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @touch_pad_set_thresh(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
