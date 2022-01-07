; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_uart.c_UART_SendBytes.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_uart.c_UART_SendBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@USART_FLAG_TC = common dso_local global i32 0, align 4
@USART_IT_TC = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@DMA_DIR_MemoryToPeripheral = common dso_local global i32 0, align 4
@DMA_PeripheralInc_Disable = common dso_local global i32 0, align 4
@DMA_MemoryInc_Enable = common dso_local global i32 0, align 4
@DMA_PeripheralDataSize_Byte = common dso_local global i32 0, align 4
@DMA_MemoryDataSize_Byte = common dso_local global i32 0, align 4
@DMA_Mode_Normal = common dso_local global i32 0, align 4
@DMA_Priority_VeryHigh = common dso_local global i32 0, align 4
@DMA_FIFOMode_Disable = common dso_local global i32 0, align 4
@DMA_FIFOThreshold_3QuartersFull = common dso_local global i32 0, align 4
@DMA_MemoryBurst_Single = common dso_local global i32 0, align 4
@DMA_PeripheralBurst_Single = common dso_local global i32 0, align 4
@USART_DMAReq_Tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UART_SendBytes(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32 @DEBUGPIN_SET(i32 2)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = call i32 @DEBUGPIN_CLR(i32 2)
  %34 = call i32 @DEBUGPIN_TGL(i32 9)
  store i32 0, i32* %4, align 4
  br label %133

35:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %45, i8* %51, align 1
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @USART_FLAG_TC, align 4
  %60 = call i32 @USART_ClearFlag(i32 %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @USART_IT_TC, align 4
  %65 = load i32, i32* @ENABLE, align 4
  %66 = call i32 @USART_ITConfig(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DMA_ClearITPendingBit(i32 %69, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DMA_DeInit(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 14
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 13
  store i32 %84, i32* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 12
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* @DMA_DIR_MemoryToPeripheral, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 11
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* @DMA_PeripheralInc_Disable, align 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 10
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* @DMA_MemoryInc_Enable, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 9
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @DMA_PeripheralDataSize_Byte, align 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 8
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* @DMA_MemoryDataSize_Byte, align 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 7
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @DMA_Mode_Normal, align 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @DMA_Priority_VeryHigh, align 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @DMA_FIFOMode_Disable, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* @DMA_FIFOThreshold_3QuartersFull, align 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @DMA_MemoryBurst_Single, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @DMA_PeripheralBurst_Single, align 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @DMA_Init(i32 %117, %struct.TYPE_5__* %8)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @USART_DMAReq_Tx, align 4
  %123 = load i32, i32* @ENABLE, align 4
  %124 = call i32 @USART_DMACmd(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ENABLE, align 4
  %129 = call i32 @DMA_Cmd(i32 %127, i32 %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = call i32 @DEBUGPIN_CLR(i32 2)
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %55, %32
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DEBUGPIN_SET(i32) #1

declare dso_local i32 @DEBUGPIN_CLR(i32) #1

declare dso_local i32 @DEBUGPIN_TGL(i32) #1

declare dso_local i32 @USART_ClearFlag(i32, i32) #1

declare dso_local i32 @USART_ITConfig(i32, i32, i32) #1

declare dso_local i32 @DMA_ClearITPendingBit(i32, i32) #1

declare dso_local i32 @DMA_DeInit(i32) #1

declare dso_local i32 @DMA_Init(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @USART_DMACmd(i32, i32, i32) #1

declare dso_local i32 @DMA_Cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
