; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialInit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mb serial set parity failure.\00", align 1
@ucUartNumber = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@UART_PARITY_ODD = common dso_local global i32 0, align 4
@UART_PARITY_EVEN = common dso_local global i32 0, align 4
@UART_DATA_5_BITS = common dso_local global i32 0, align 4
@UART_DATA_6_BITS = common dso_local global i32 0, align 4
@UART_DATA_7_BITS = common dso_local global i32 0, align 4
@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"mb config failure, uart_param_config() returned (0x%x).\00", align 1
@MB_SERIAL_BUF_SIZE = common dso_local global i32 0, align 4
@MB_QUEUE_LENGTH = common dso_local global i32 0, align 4
@xMbUartQueue = common dso_local global i32 0, align 4
@MB_PORT_SERIAL_ISR_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"mb serial driver failure, uart_driver_install() returned (0x%x).\00", align 1
@MB_SERIAL_TOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"mb serial set rx timeout failure, uart_set_rx_timeout() returned (0x%x).\00", align 1
@vUartTask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"uart_queue_task\00", align 1
@MB_SERIAL_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@MB_SERIAL_TASK_PRIO = common dso_local global i32 0, align 4
@xMbTaskHandle = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"mb stack serial task creation error. xTaskCreate() returned (0x%x).\00", align 1
@uiRxBufferPos = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xMBPortSerialInit(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* @ESP_OK, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 130
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 (i32, i32, i8*, ...) @MB_PORT_CHECK(i32 %17, i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* @ucUartNumber, align 4
  %21 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @UART_PARITY_ODD, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @UART_PARITY_EVEN, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %4, %28, %26, %24
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 5, label %32
    i32 6, label %34
    i32 7, label %36
    i32 8, label %38
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @UART_DATA_5_BITS, align 4
  store i32 %33, i32* %11, align 4
  br label %42

34:                                               ; preds = %30
  %35 = load i32, i32* @UART_DATA_6_BITS, align 4
  store i32 %35, i32* %11, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @UART_DATA_7_BITS, align 4
  store i32 %37, i32* %11, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %39, i32* %11, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 2, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %49 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %51 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %52, align 4
  %54 = load i32, i32* @ucUartNumber, align 4
  %55 = call i64 @uart_param_config(i32 %54, %struct.TYPE_3__* %12)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @ESP_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i32, i32, i8*, ...) @MB_PORT_CHECK(i32 %59, i32 %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ucUartNumber, align 4
  %65 = load i32, i32* @MB_SERIAL_BUF_SIZE, align 4
  %66 = load i32, i32* @MB_SERIAL_BUF_SIZE, align 4
  %67 = load i32, i32* @MB_QUEUE_LENGTH, align 4
  %68 = load i32, i32* @MB_PORT_SERIAL_ISR_FLAG, align 4
  %69 = call i64 @uart_driver_install(i32 %64, i32 %65, i32 %66, i32 %67, i32* @xMbUartQueue, i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @ESP_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i32, i32, i8*, ...) @MB_PORT_CHECK(i32 %73, i32 %74, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ucUartNumber, align 4
  %79 = load i32, i32* @MB_SERIAL_TOUT, align 4
  %80 = call i64 @uart_set_rx_timeout(i32 %78, i32 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @ESP_OK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i32, i32, i8*, ...) @MB_PORT_CHECK(i32 %84, i32 %85, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @vUartTask, align 4
  %90 = load i32, i32* @MB_SERIAL_TASK_STACK_SIZE, align 4
  %91 = load i32, i32* @MB_SERIAL_TASK_PRIO, align 4
  %92 = call i64 @xTaskCreate(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32* null, i32 %91, i32* @xMbTaskHandle)
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* @pdPASS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %42
  %97 = load i32, i32* @xMbTaskHandle, align 4
  %98 = call i32 @vTaskDelete(i32 %97)
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i32, i32, i8*, ...) @MB_PORT_CHECK(i32 %99, i32 %100, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %107

104:                                              ; preds = %42
  %105 = load i32, i32* @xMbTaskHandle, align 4
  %106 = call i32 @vTaskSuspend(i32 %105)
  br label %107

107:                                              ; preds = %104, %96
  store i64 0, i64* @uiRxBufferPos, align 8
  %108 = load i32, i32* @TRUE, align 4
  ret i32 %108
}

declare dso_local i32 @MB_PORT_CHECK(i32, i32, i8*, ...) #1

declare dso_local i64 @uart_param_config(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @uart_set_rx_timeout(i32, i32) #1

declare dso_local i64 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @vTaskDelete(i32) #1

declare dso_local i32 @vTaskSuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
