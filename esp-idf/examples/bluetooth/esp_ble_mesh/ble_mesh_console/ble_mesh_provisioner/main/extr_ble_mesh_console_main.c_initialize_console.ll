; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_console_main.c_initialize_console.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_console_main.c_initialize_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@stdin = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@ESP_LINE_ENDINGS_CR = common dso_local global i32 0, align 4
@ESP_LINE_ENDINGS_CRLF = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@__const.initialize_console.console_config = private unnamed_addr constant %struct.TYPE_3__ { i32 20, i32 256, i32 0 }, align 4
@esp_console_get_completion = common dso_local global i32 0, align 4
@esp_console_get_hint = common dso_local global i32 0, align 4
@HISTORY_PATH = common dso_local global i32 0, align 4
@LOG_COLOR_CYAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_console() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i32, i32* @stdin, align 4
  %3 = load i32, i32* @_IONBF, align 4
  %4 = call i32 @setvbuf(i32 %2, i32* null, i32 %3, i32 0)
  %5 = load i32, i32* @stdout, align 4
  %6 = load i32, i32* @_IONBF, align 4
  %7 = call i32 @setvbuf(i32 %5, i32* null, i32 %6, i32 0)
  %8 = load i32, i32* @ESP_LINE_ENDINGS_CR, align 4
  %9 = call i32 @esp_vfs_dev_uart_set_rx_line_endings(i32 %8)
  %10 = load i32, i32* @ESP_LINE_ENDINGS_CRLF, align 4
  %11 = call i32 @esp_vfs_dev_uart_set_tx_line_endings(i32 %10)
  %12 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %13 = call i32 @uart_driver_install(i32 %12, i32 256, i32 0, i32 0, i32* null, i32 0)
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %16 = call i32 @esp_vfs_dev_uart_use_driver(i32 %15)
  %17 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_3__* @__const.initialize_console.console_config to i8*), i64 12, i1 false)
  %18 = call i32 @esp_console_init(%struct.TYPE_3__* %1)
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  %20 = call i32 @linenoiseSetMultiLine(i32 1)
  %21 = call i32 @linenoiseSetCompletionCallback(i32* @esp_console_get_completion)
  %22 = call i32 @linenoiseSetHintsCallback(i32* @esp_console_get_hint)
  %23 = call i32 @linenoiseHistorySetMaxLen(i32 100)
  ret void
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @esp_vfs_dev_uart_set_rx_line_endings(i32) #1

declare dso_local i32 @esp_vfs_dev_uart_set_tx_line_endings(i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @esp_vfs_dev_uart_use_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @esp_console_init(%struct.TYPE_3__*) #1

declare dso_local i32 @linenoiseSetMultiLine(i32) #1

declare dso_local i32 @linenoiseSetCompletionCallback(i32*) #1

declare dso_local i32 @linenoiseSetHintsCallback(i32*) #1

declare dso_local i32 @linenoiseHistorySetMaxLen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
