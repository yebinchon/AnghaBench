; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_sendLEDpackets.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_sendLEDpackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@USART_NW = common dso_local global i32 0, align 4
@PANEL_NW = common dso_local global i64 0, align 8
@USART_SW = common dso_local global i32 0, align 4
@PANEL_SW = common dso_local global i64 0, align 8
@USART_SE = common dso_local global i32 0, align 4
@PANEL_SE = common dso_local global i64 0, align 8
@USART_NE = common dso_local global i32 0, align 4
@PANEL_NE = common dso_local global i64 0, align 8
@usarts = common dso_local global i32* null, align 8
@ledpackets = common dso_local global %struct.TYPE_2__* null, align 8
@LocalTime = common dso_local global i32 0, align 4
@lastPacketTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendLEDpackets() #0 {
  %1 = load i32, i32* @USART_NW, align 4
  %2 = load i64, i64* @PANEL_NW, align 8
  %3 = call i32 @handle_feedback(i32 %1, i64 %2)
  %4 = load i32, i32* @USART_SW, align 4
  %5 = load i64, i64* @PANEL_SW, align 8
  %6 = call i32 @handle_feedback(i32 %4, i64 %5)
  %7 = load i32, i32* @USART_SE, align 4
  %8 = load i64, i64* @PANEL_SE, align 8
  %9 = call i32 @handle_feedback(i32 %7, i64 %8)
  %10 = load i32, i32* @USART_NE, align 4
  %11 = load i64, i64* @PANEL_NE, align 8
  %12 = call i32 @handle_feedback(i32 %10, i64 %11)
  %13 = load i32*, i32** @usarts, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledpackets, align 8
  %16 = load i64, i64* @PANEL_NW, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @UART_SendBytes(i32* %14, i32 %19, i32 4)
  %21 = load i32*, i32** @usarts, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledpackets, align 8
  %24 = load i64, i64* @PANEL_SW, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @UART_SendBytes(i32* %22, i32 %27, i32 4)
  %29 = load i32*, i32** @usarts, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledpackets, align 8
  %32 = load i64, i64* @PANEL_SE, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @UART_SendBytes(i32* %30, i32 %35, i32 4)
  %37 = load i32*, i32** @usarts, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledpackets, align 8
  %40 = load i64, i64* @PANEL_NE, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @UART_SendBytes(i32* %38, i32 %43, i32 4)
  %45 = load i32, i32* @LocalTime, align 4
  store i32 %45, i32* @lastPacketTime, align 4
  ret void
}

declare dso_local i32 @handle_feedback(i32, i64) #1

declare dso_local i32 @UART_SendBytes(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
