; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_i2ctools_example_main.c_initialize_console.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_i2ctools_example_main.c_initialize_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@stdin = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@ESP_LINE_ENDINGS_CR = common dso_local global i32 0, align 4
@ESP_LINE_ENDINGS_CRLF = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_BAUDRATE = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@CONFIG_EXAMPLE_MAX_CMD_LENGTH = common dso_local global i32 0, align 4
@CONFIG_EXAMPLE_MAX_CMD_ARGUMENTS = common dso_local global i32 0, align 4
@esp_console_get_completion = common dso_local global i32 0, align 4
@esp_console_get_hint = common dso_local global i32 0, align 4
@HISTORY_PATH = common dso_local global i32 0, align 4
@LOG_COLOR_CYAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_console() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = load i32, i32* @stdin, align 4
  %4 = load i32, i32* @_IONBF, align 4
  %5 = call i32 @setvbuf(i32 %3, i32* null, i32 %4, i32 0)
  %6 = load i32, i32* @ESP_LINE_ENDINGS_CR, align 4
  %7 = call i32 @esp_vfs_dev_uart_set_rx_line_endings(i32 %6)
  %8 = load i32, i32* @ESP_LINE_ENDINGS_CRLF, align 4
  %9 = call i32 @esp_vfs_dev_uart_set_tx_line_endings(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %12 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %14 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %16 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %18 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_BAUDRATE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %20 = call i32 @uart_param_config(i32 %19, %struct.TYPE_5__* %1)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %23 = call i32 @uart_driver_install(i32 %22, i32 256, i32 0, i32 0, i32* null, i32 0)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %26 = call i32 @esp_vfs_dev_uart_use_driver(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %29 = load i32, i32* @CONFIG_EXAMPLE_MAX_CMD_LENGTH, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %31 = load i32, i32* @CONFIG_EXAMPLE_MAX_CMD_ARGUMENTS, align 4
  store i32 %31, i32* %30, align 4
  %32 = call i32 @esp_console_init(%struct.TYPE_6__* %2)
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = call i32 @linenoiseSetMultiLine(i32 1)
  %35 = call i32 @linenoiseSetCompletionCallback(i32* @esp_console_get_completion)
  %36 = call i32 @linenoiseSetHintsCallback(i32* @esp_console_get_hint)
  %37 = call i32 @linenoiseHistorySetMaxLen(i32 100)
  ret void
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @esp_vfs_dev_uart_set_rx_line_endings(i32) #1

declare dso_local i32 @esp_vfs_dev_uart_set_tx_line_endings(i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @esp_vfs_dev_uart_use_driver(i32) #1

declare dso_local i32 @esp_console_init(%struct.TYPE_6__*) #1

declare dso_local i32 @linenoiseSetMultiLine(i32) #1

declare dso_local i32 @linenoiseSetCompletionCallback(i32*) #1

declare dso_local i32 @linenoiseSetHintsCallback(i32*) #1

declare dso_local i32 @linenoiseHistorySetMaxLen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
