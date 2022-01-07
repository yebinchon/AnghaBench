; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_events/main/extr_uart_events_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_events/main/extr_uart_events_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@EX_UART_NUM = common dso_local global i32 0, align 4
@UART_PIN_NO_CHANGE = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@uart0_queue = common dso_local global i32 0, align 4
@PATTERN_CHR_NUM = common dso_local global i32 0, align 4
@uart_event_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"uart_event_task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i32, i32* @TAG, align 4
  %3 = load i32, i32* @ESP_LOG_INFO, align 4
  %4 = call i32 @esp_log_level_set(i32 %2, i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 115200, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %9 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %11 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %13 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @EX_UART_NUM, align 4
  %15 = call i32 @uart_param_config(i32 %14, %struct.TYPE_3__* %1)
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* @ESP_LOG_INFO, align 4
  %18 = call i32 @esp_log_level_set(i32 %16, i32 %17)
  %19 = load i32, i32* @EX_UART_NUM, align 4
  %20 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %21 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %22 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %23 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %24 = call i32 @uart_set_pin(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @EX_UART_NUM, align 4
  %26 = load i32, i32* @BUF_SIZE, align 4
  %27 = mul nsw i32 %26, 2
  %28 = load i32, i32* @BUF_SIZE, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @uart_driver_install(i32 %25, i32 %27, i32 %29, i32 20, i32* @uart0_queue, i32 0)
  %31 = load i32, i32* @EX_UART_NUM, align 4
  %32 = load i32, i32* @PATTERN_CHR_NUM, align 4
  %33 = call i32 @uart_enable_pattern_det_baud_intr(i32 %31, i8 signext 43, i32 %32, i32 9, i32 0, i32 0)
  %34 = load i32, i32* @EX_UART_NUM, align 4
  %35 = call i32 @uart_pattern_queue_reset(i32 %34, i32 20)
  %36 = load i32, i32* @uart_event_task, align 4
  %37 = call i32 @xTaskCreate(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 2048, i32* null, i32 12, i32* null)
  ret void
}

declare dso_local i32 @esp_log_level_set(i32, i32) #1

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @uart_set_pin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @uart_enable_pattern_det_baud_intr(i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @uart_pattern_queue_reset(i32, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
