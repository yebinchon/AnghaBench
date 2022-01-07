; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_tp_example_set_thresholds.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_tp_example_set_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOUCH_BUTTON_NUM = common dso_local global i32 0, align 4
@button = common dso_local global i32* null, align 8
@button_threshold = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"test init: touch pad [%d] base %d, thresh %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tp_example_set_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_set_thresholds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %42, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TOUCH_BUTTON_NUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = load i32*, i32** @button, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @touch_pad_read_raw_data(i32 %12, i32* %1)
  %14 = load i32*, i32** @button, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32*, i32** @button_threshold, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  %26 = call i32 @touch_pad_set_thresh(i32 %18, i32 %25)
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32*, i32** @button, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32*, i32** @button_threshold, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %34, %39
  %41 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %7
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %3

45:                                               ; preds = %3
  ret void
}

declare dso_local i32 @touch_pad_read_raw_data(i32, i32*) #1

declare dso_local i32 @touch_pad_set_thresh(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
