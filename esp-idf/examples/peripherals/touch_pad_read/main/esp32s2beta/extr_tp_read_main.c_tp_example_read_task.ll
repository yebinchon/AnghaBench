; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32s2beta/extr_tp_read_main.c_tp_example_read_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32s2beta/extr_tp_read_main.c_tp_example_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Touch Sensor read, the output format is: \0ATouchpad num:[raw data]\0A\0A\00", align 1
@TOUCH_BUTTON_NUM = common dso_local global i32 0, align 4
@button = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"T%d: [%4d] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tp_example_read_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_read_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @portTICK_RATE_MS, align 4
  %6 = sdiv i32 100, %5
  %7 = call i32 @vTaskDelay(i32 %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %1, %31
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TOUCH_BUTTON_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32*, i32** @button, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @touch_pad_read_raw_data(i32 %19, i32* %3)
  %21 = load i32*, i32** @button, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %34 = sdiv i32 200, %33
  %35 = call i32 @vTaskDelay(i32 %34)
  br label %9
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @touch_pad_read_raw_data(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
