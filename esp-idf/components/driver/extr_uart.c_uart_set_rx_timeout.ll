; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_rx_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_rx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64 }

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"tout_thresh max value is 126\00", align 1
@uart_spinlock = common dso_local global i32* null, align 8
@UART = common dso_local global %struct.TYPE_8__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@UART_RX_TOUT_THRHD_V = common dso_local global i32 0, align 4
@UART_TOUT_REF_FACTOR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_set_rx_timeout(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @UART_NUM_MAX, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %10 = call i32 @UART_CHECK(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 127
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %15 = call i32 @UART_CHECK(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** @uart_spinlock, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @UART_ENTER_CRITICAL(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @UART, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @UART, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32*, i32** @uart_spinlock, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @UART_EXIT_CRITICAL(i32* %39)
  %41 = load i32, i32* @ESP_OK, align 4
  ret i32 %41
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
