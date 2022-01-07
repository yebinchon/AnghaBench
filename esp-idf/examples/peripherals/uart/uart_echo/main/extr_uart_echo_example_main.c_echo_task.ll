; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_echo/main/extr_uart_echo_example_main.c_echo_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_echo/main/extr_uart_echo_example_main.c_echo_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@UART_NUM_1 = common dso_local global i32 0, align 4
@ECHO_TEST_TXD = common dso_local global i32 0, align 4
@ECHO_TEST_RXD = common dso_local global i32 0, align 4
@ECHO_TEST_RTS = common dso_local global i32 0, align 4
@ECHO_TEST_CTS = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @echo_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 115200, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %8 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %10 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %12 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %14 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* @UART_NUM_1, align 4
  %16 = call i32 @uart_param_config(i32 %15, %struct.TYPE_3__* %3)
  %17 = load i32, i32* @UART_NUM_1, align 4
  %18 = load i32, i32* @ECHO_TEST_TXD, align 4
  %19 = load i32, i32* @ECHO_TEST_RXD, align 4
  %20 = load i32, i32* @ECHO_TEST_RTS, align 4
  %21 = load i32, i32* @ECHO_TEST_CTS, align 4
  %22 = call i32 @uart_set_pin(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @UART_NUM_1, align 4
  %24 = load i32, i32* @BUF_SIZE, align 4
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @uart_driver_install(i32 %23, i32 %25, i32 0, i32 0, i32* null, i32 0)
  %27 = load i32, i32* @BUF_SIZE, align 4
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %1, %30
  %31 = load i32, i32* @UART_NUM_1, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @BUF_SIZE, align 4
  %34 = load i32, i32* @portTICK_RATE_MS, align 4
  %35 = sdiv i32 20, %34
  %36 = call i32 @uart_read_bytes(i32 %31, i32* %32, i32 %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @UART_NUM_1, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @uart_write_bytes(i32 %37, i8* %39, i32 %40)
  br label %30
}

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @uart_set_pin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uart_read_bytes(i32, i32*, i32, i32) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
