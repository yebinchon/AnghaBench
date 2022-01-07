; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_async_rxtxtasks/main/extr_uart_async_rxtxtasks_main.c_rx_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_async_rxtxtasks/main/extr_uart_async_rxtxtasks_main.c_rx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx_task.RX_TASK_TAG = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"RX_TASK\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i64 0, align 8
@UART_NUM_1 = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Read %d bytes: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @rx_task.RX_TASK_TAG, align 8
  %6 = load i32, i32* @ESP_LOG_INFO, align 4
  %7 = call i32 @esp_log_level_set(i8* %5, i32 %6)
  %8 = load i64, i64* @RX_BUF_SIZE, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i64 @malloc(i64 %9)
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  br label %12

12:                                               ; preds = %1, %35
  %13 = load i32, i32* @UART_NUM_1, align 4
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* @RX_BUF_SIZE, align 8
  %16 = load i32, i32* @portTICK_RATE_MS, align 4
  %17 = sdiv i32 1000, %16
  %18 = call i32 @uart_read_bytes(i32 %13, i64* %14, i64 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load i64*, i64** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @rx_task.RX_TASK_TAG, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i64*, i64** %3, align 8
  %29 = call i32 @ESP_LOGI(i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64* %28)
  %30 = load i8*, i8** @rx_task.RX_TASK_TAG, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ESP_LOG_INFO, align 4
  %34 = call i32 @ESP_LOG_BUFFER_HEXDUMP(i8* %30, i64* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %12
  br label %12
}

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @uart_read_bytes(i32, i64*, i64, i32) #1

declare dso_local i32 @ESP_LOGI(i8*, i8*, i32, i64*) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEXDUMP(i8*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
