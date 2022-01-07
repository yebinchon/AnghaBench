; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_break.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@uart_spinlock = common dso_local global i32* null, align 8
@UART = common dso_local global %struct.TYPE_10__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @uart_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_set_break(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @uart_spinlock, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = call i32 @UART_ENTER_CRITICAL(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %10, i64 %11
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %9, i32* %15, align 4
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 %17
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %22, i64 %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %28, i64 %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** @uart_spinlock, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @UART_EXIT_CRITICAL(i32* %36)
  %38 = load i32, i32* @ESP_OK, align 4
  ret i32 %38
}

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
