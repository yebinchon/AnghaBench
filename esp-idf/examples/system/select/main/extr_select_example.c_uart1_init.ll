; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_uart1_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_uart1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@UART_NUM_1 = common dso_local global i32 0, align 4
@UART1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/uart/1\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@uart_fd = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Cannot open UART1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uart1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart1_init() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 115200, i32* %2, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %4 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %6 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %8 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %10 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @UART_NUM_1, align 4
  %12 = call i32 @uart_param_config(i32 %11, %struct.TYPE_6__* %1)
  %13 = load i32, i32* @UART_NUM_1, align 4
  %14 = call i32 @uart_driver_install(i32 %13, i32 256, i32 0, i32 0, i32* null, i32 0)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UART1, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @uart_fd, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @uart1_deinit()
  br label %24

24:                                               ; preds = %20, %0
  %25 = call i32 @esp_vfs_dev_uart_use_driver(i32 1)
  ret void
}

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @uart1_deinit(...) #1

declare dso_local i32 @esp_vfs_dev_uart_use_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
