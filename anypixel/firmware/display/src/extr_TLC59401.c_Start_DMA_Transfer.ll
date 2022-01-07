; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_Start_DMA_Transfer.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_Start_DMA_Transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TLC59401_SPI = common dso_local global i32 0, align 4
@needLatch0 = common dso_local global i32 0, align 4
@needLatch1 = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@TLC59401_TX_DMA = common dso_local global i32 0, align 4
@TLC59401_RX_DMA = common dso_local global i32 0, align 4
@TLC59401_DMA_DR = common dso_local global i64 0, align 8
@DMA_DIR_PeripheralDST = common dso_local global i32 0, align 4
@DMA_PeripheralInc_Disable = common dso_local global i32 0, align 4
@DMA_MemoryInc_Enable = common dso_local global i32 0, align 4
@DMA_PeripheralDataSize_Byte = common dso_local global i32 0, align 4
@DMA_MemoryDataSize_Byte = common dso_local global i32 0, align 4
@DMA_Mode_Normal = common dso_local global i32 0, align 4
@DMA_Priority_Medium = common dso_local global i32 0, align 4
@DMA_M2M_Disable = common dso_local global i32 0, align 4
@DMA_DIR_PeripheralSRC = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SPI_I2S_DMAReq_Tx = common dso_local global i32 0, align 4
@SPI_I2S_DMAReq_Rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @Start_DMA_Transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start_DMA_Transfer(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @TLC59401_SPI, align 4
  %10 = call i32 @isIdle(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @needLatch0, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @needLatch1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %77

19:                                               ; preds = %15
  %20 = load i32, i32* @TLC59401_SPI, align 4
  %21 = load i32, i32* @DISABLE, align 4
  %22 = call i32 @SPI_Cmd(i32 %20, i32 %21)
  %23 = load i32, i32* @TLC59401_TX_DMA, align 4
  %24 = load i32, i32* @DISABLE, align 4
  %25 = call i32 @DMA_Cmd(i32 %23, i32 %24)
  %26 = load i32, i32* @TLC59401_RX_DMA, align 4
  %27 = load i32, i32* @DISABLE, align 4
  %28 = call i32 @DMA_Cmd(i32 %26, i32 %27)
  %29 = load i64, i64* @TLC59401_DMA_DR, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @DMA_DIR_PeripheralDST, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 10
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @DMA_PeripheralInc_Disable, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 9
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @DMA_MemoryInc_Enable, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @DMA_PeripheralDataSize_Byte, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @DMA_MemoryDataSize_Byte, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @DMA_Mode_Normal, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @DMA_Priority_Medium, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @DMA_M2M_Disable, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @TLC59401_TX_DMA, align 4
  %54 = call i32 @DMA_Init(i32 %53, %struct.TYPE_3__* %8)
  %55 = load i32*, i32** %6, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @DMA_DIR_PeripheralSRC, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @TLC59401_RX_DMA, align 4
  %61 = call i32 @DMA_Init(i32 %60, %struct.TYPE_3__* %8)
  %62 = load i32, i32* @TLC59401_TX_DMA, align 4
  %63 = load i32, i32* @ENABLE, align 4
  %64 = call i32 @DMA_Cmd(i32 %62, i32 %63)
  %65 = load i32, i32* @TLC59401_RX_DMA, align 4
  %66 = load i32, i32* @ENABLE, align 4
  %67 = call i32 @DMA_Cmd(i32 %65, i32 %66)
  %68 = load i32, i32* @TLC59401_SPI, align 4
  %69 = load i32, i32* @SPI_I2S_DMAReq_Tx, align 4
  %70 = load i32, i32* @SPI_I2S_DMAReq_Rx, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ENABLE, align 4
  %73 = call i32 @SPI_I2S_DMACmd(i32 %68, i32 %71, i32 %72)
  %74 = load i32, i32* @TLC59401_SPI, align 4
  %75 = load i32, i32* @ENABLE, align 4
  %76 = call i32 @SPI_Cmd(i32 %74, i32 %75)
  store i32 1, i32* @needLatch0, align 4
  store i32 1, i32* @needLatch1, align 4
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %19, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @isIdle(i32) #1

declare dso_local i32 @SPI_Cmd(i32, i32) #1

declare dso_local i32 @DMA_Cmd(i32, i32) #1

declare dso_local i32 @DMA_Init(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SPI_I2S_DMACmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
