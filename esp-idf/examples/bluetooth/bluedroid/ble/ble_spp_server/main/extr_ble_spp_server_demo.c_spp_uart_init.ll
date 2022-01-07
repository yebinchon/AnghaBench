; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_spp_uart_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_spp_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@UART_HW_FLOWCTRL_RTS = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@UART_NUM_0 = common dso_local global i64 0, align 8
@UART_PIN_NO_CHANGE = common dso_local global i32 0, align 4
@spp_uart_queue = common dso_local global i32 0, align 4
@uart_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uTask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spp_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spp_uart_init() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 115200, i32* %2, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 122, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %5 = load i32, i32* @UART_HW_FLOWCTRL_RTS, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %7 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %9 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %11 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* @UART_NUM_0, align 8
  %13 = call i32 @uart_param_config(i64 %12, %struct.TYPE_3__* %1)
  %14 = load i64, i64* @UART_NUM_0, align 8
  %15 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %16 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %17 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %18 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %19 = call i32 @uart_set_pin(i64 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* @UART_NUM_0, align 8
  %21 = call i32 @uart_driver_install(i64 %20, i32 4096, i32 8192, i32 10, i32* @spp_uart_queue, i32 0)
  %22 = load i32, i32* @uart_task, align 4
  %23 = load i64, i64* @UART_NUM_0, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @xTaskCreate(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2048, i8* %24, i32 8, i32* null)
  ret void
}

declare dso_local i32 @uart_param_config(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @uart_set_pin(i64, i32, i32, i32, i32) #1

declare dso_local i32 @uart_driver_install(i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
