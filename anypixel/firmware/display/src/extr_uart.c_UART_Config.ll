; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_uart.c_UART_Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_uart.c_UART_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@ENABLE = common dso_local global i32 0, align 4
@USART_WordLength_8b = common dso_local global i32 0, align 4
@USART_StopBits_1 = common dso_local global i32 0, align 4
@USART_Parity_No = common dso_local global i32 0, align 4
@USART_HardwareFlowControl_None = common dso_local global i32 0, align 4
@USART_Mode_Rx = common dso_local global i32 0, align 4
@USART_Mode_Tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UART_Config(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FIFO_InitStruct(i32 %6, i32 %9, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ENABLE, align 4
  %18 = call i32 @RCC_AHBPeriphClockCmd(i32 %16, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ENABLE, align 4
  %23 = call i32 @RCC_APB1PeriphClockCmd(i32 %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ENABLE, align 4
  %28 = call i32 @RCC_APB2PeriphClockCmd(i32 %26, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CONFIG_pins(i32 %31, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USART_DeInit(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @USART_WordLength_8b, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @USART_StopBits_1, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @USART_Parity_No, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @USART_HardwareFlowControl_None, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @USART_Mode_Rx, align 4
  %53 = load i32, i32* @USART_Mode_Tx, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @USART_Init(i32 %58, %struct.TYPE_5__* %3)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ENABLE, align 4
  %64 = call i32 @USART_Cmd(i32 %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  ret void
}

declare dso_local i32 @FIFO_InitStruct(i32, i32, i32) #1

declare dso_local i32 @RCC_AHBPeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB2PeriphClockCmd(i32, i32) #1

declare dso_local i32 @CONFIG_pins(i32, i32) #1

declare dso_local i32 @USART_DeInit(i32) #1

declare dso_local i32 @USART_Init(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @USART_Cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
