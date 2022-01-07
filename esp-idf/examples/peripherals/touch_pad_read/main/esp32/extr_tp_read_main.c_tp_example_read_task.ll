; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32/extr_tp_read_main.c_tp_example_read_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_read/main/esp32/extr_tp_read_main.c_tp_example_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [80 x i8] c"Touch Sensor normal mode read, the output format is: \0ATouchpad num:[raw data]\0A\0A\00", align 1
@TOUCH_PAD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"T%d:[%4d] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tp_example_read_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_read_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %1, %21
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %18, %7
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TOUCH_PAD_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @touch_pad_read(i32 %13, i32* %3)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %8

21:                                               ; preds = %8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %24 = sdiv i32 200, %23
  %25 = call i32 @vTaskDelay(i32 %24)
  br label %7
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @touch_pad_read(i32, i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
