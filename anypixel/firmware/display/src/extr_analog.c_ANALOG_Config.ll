; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_analog.c_ANALOG_Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_analog.c_ANALOG_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@ADC_POWER_AHB = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@ADC_POWER_APB1 = common dso_local global i32 0, align 4
@ADC_POWER_APB2 = common dso_local global i32 0, align 4
@pins_adc = common dso_local global i32 0, align 4
@ADC_PINS_NUM = common dso_local global i32 0, align 4
@ADC_Resolution_12b = common dso_local global i32 0, align 4
@ADC_ExternalTrigConvEdge_None = common dso_local global i32 0, align 4
@ADC_DataAlign_Right = common dso_local global i32 0, align 4
@ADC_ScanDirection_Upward = common dso_local global i32 0, align 4
@ADC1 = common dso_local global i32 0, align 4
@ADC_Channel_0 = common dso_local global i32 0, align 4
@ADC_SampleTime_239_5Cycles = common dso_local global i32 0, align 4
@ADC_Channel_1 = common dso_local global i32 0, align 4
@ADC_Channel_2 = common dso_local global i32 0, align 4
@ADC_Channel_3 = common dso_local global i32 0, align 4
@ADC_Channel_4 = common dso_local global i32 0, align 4
@ADC_Channel_5 = common dso_local global i32 0, align 4
@ADC_Channel_6 = common dso_local global i32 0, align 4
@ADC_Channel_7 = common dso_local global i32 0, align 4
@ADC_Channel_8 = common dso_local global i32 0, align 4
@ADC_Channel_9 = common dso_local global i32 0, align 4
@ADC_DMAMode_Circular = common dso_local global i32 0, align 4
@ADC_FLAG_ADRDY = common dso_local global i32 0, align 4
@DMA1_Channel1 = common dso_local global i32 0, align 4
@ADC_DMA_ADDR = common dso_local global i64 0, align 8
@adc_readings = common dso_local global i64 0, align 8
@DMA_DIR_PeripheralSRC = common dso_local global i32 0, align 4
@DMA_PeripheralInc_Disable = common dso_local global i32 0, align 4
@DMA_MemoryInc_Enable = common dso_local global i32 0, align 4
@DMA_PeripheralDataSize_HalfWord = common dso_local global i32 0, align 4
@DMA_MemoryDataSize_HalfWord = common dso_local global i32 0, align 4
@DMA_Mode_Circular = common dso_local global i32 0, align 4
@DMA_Priority_High = common dso_local global i32 0, align 4
@DMA_M2M_Disable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ANALOG_Config() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = load i32, i32* @ADC_POWER_AHB, align 4
  %4 = load i32, i32* @ENABLE, align 4
  %5 = call i32 @RCC_AHBPeriphClockCmd(i32 %3, i32 %4)
  %6 = load i32, i32* @ADC_POWER_APB1, align 4
  %7 = load i32, i32* @ENABLE, align 4
  %8 = call i32 @RCC_APB1PeriphClockCmd(i32 %6, i32 %7)
  %9 = load i32, i32* @ADC_POWER_APB2, align 4
  %10 = load i32, i32* @ENABLE, align 4
  %11 = call i32 @RCC_APB2PeriphClockCmd(i32 %9, i32 %10)
  %12 = load i32, i32* @pins_adc, align 4
  %13 = load i32, i32* @ADC_PINS_NUM, align 4
  %14 = call i32 @CONFIG_pins(i32 %12, i32 %13)
  %15 = call i32 @ADC_StructInit(%struct.TYPE_7__* %1)
  %16 = load i32, i32* @ADC_Resolution_12b, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ENABLE, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @ADC_ExternalTrigConvEdge_None, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ADC_DataAlign_Right, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @ADC_ScanDirection_Upward, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ADC1, align 4
  %27 = call i32 @ADC_Init(i32 %26, %struct.TYPE_7__* %1)
  %28 = load i32, i32* @ADC1, align 4
  %29 = load i32, i32* @ADC_Channel_0, align 4
  %30 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %31 = call i32 @ADC_ChannelConfig(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @ADC1, align 4
  %33 = load i32, i32* @ADC_Channel_1, align 4
  %34 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %35 = call i32 @ADC_ChannelConfig(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @ADC1, align 4
  %37 = load i32, i32* @ADC_Channel_2, align 4
  %38 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %39 = call i32 @ADC_ChannelConfig(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @ADC1, align 4
  %41 = load i32, i32* @ADC_Channel_3, align 4
  %42 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %43 = call i32 @ADC_ChannelConfig(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @ADC1, align 4
  %45 = load i32, i32* @ADC_Channel_4, align 4
  %46 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %47 = call i32 @ADC_ChannelConfig(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @ADC1, align 4
  %49 = load i32, i32* @ADC_Channel_5, align 4
  %50 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %51 = call i32 @ADC_ChannelConfig(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @ADC1, align 4
  %53 = load i32, i32* @ADC_Channel_6, align 4
  %54 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %55 = call i32 @ADC_ChannelConfig(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @ADC1, align 4
  %57 = load i32, i32* @ADC_Channel_7, align 4
  %58 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %59 = call i32 @ADC_ChannelConfig(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @ADC1, align 4
  %61 = load i32, i32* @ADC_Channel_8, align 4
  %62 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %63 = call i32 @ADC_ChannelConfig(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @ADC1, align 4
  %65 = load i32, i32* @ADC_Channel_9, align 4
  %66 = load i32, i32* @ADC_SampleTime_239_5Cycles, align 4
  %67 = call i32 @ADC_ChannelConfig(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @ADC1, align 4
  %69 = call i32 @ADC_GetCalibrationFactor(i32 %68)
  %70 = load i32, i32* @ADC1, align 4
  %71 = load i32, i32* @ADC_DMAMode_Circular, align 4
  %72 = call i32 @ADC_DMARequestModeConfig(i32 %70, i32 %71)
  %73 = load i32, i32* @ADC1, align 4
  %74 = load i32, i32* @ENABLE, align 4
  %75 = call i32 @ADC_DMACmd(i32 %73, i32 %74)
  %76 = load i32, i32* @ADC1, align 4
  %77 = load i32, i32* @ENABLE, align 4
  %78 = call i32 @ADC_Cmd(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %85, %0
  %80 = load i32, i32* @ADC1, align 4
  %81 = load i32, i32* @ADC_FLAG_ADRDY, align 4
  %82 = call i32 @ADC_GetFlagStatus(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %79

86:                                               ; preds = %79
  %87 = load i32, i32* @ADC1, align 4
  %88 = call i32 @ADC_StartOfConversion(i32 %87)
  %89 = load i32, i32* @DMA1_Channel1, align 4
  %90 = call i32 @DMA_DeInit(i32 %89)
  %91 = load i64, i64* @ADC_DMA_ADDR, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 10
  store i8* %92, i8** %93, align 8
  %94 = load i64, i64* @adc_readings, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 9
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @DMA_DIR_PeripheralSRC, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 10, i32* %99, align 8
  %100 = load i32, i32* @DMA_PeripheralInc_Disable, align 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 7
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @DMA_MemoryInc_Enable, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @DMA_PeripheralDataSize_HalfWord, align 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @DMA_MemoryDataSize_HalfWord, align 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* @DMA_Mode_Circular, align 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @DMA_Priority_High, align 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @DMA_M2M_Disable, align 4
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @DMA1_Channel1, align 4
  %115 = call i32 @DMA_Init(i32 %114, %struct.TYPE_6__* %2)
  %116 = load i32, i32* @DMA1_Channel1, align 4
  %117 = load i32, i32* @ENABLE, align 4
  %118 = call i32 @DMA_Cmd(i32 %116, i32 %117)
  ret void
}

declare dso_local i32 @RCC_AHBPeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB2PeriphClockCmd(i32, i32) #1

declare dso_local i32 @CONFIG_pins(i32, i32) #1

declare dso_local i32 @ADC_StructInit(%struct.TYPE_7__*) #1

declare dso_local i32 @ADC_Init(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ADC_ChannelConfig(i32, i32, i32) #1

declare dso_local i32 @ADC_GetCalibrationFactor(i32) #1

declare dso_local i32 @ADC_DMARequestModeConfig(i32, i32) #1

declare dso_local i32 @ADC_DMACmd(i32, i32) #1

declare dso_local i32 @ADC_Cmd(i32, i32) #1

declare dso_local i32 @ADC_GetFlagStatus(i32, i32) #1

declare dso_local i32 @ADC_StartOfConversion(i32) #1

declare dso_local i32 @DMA_DeInit(i32) #1

declare dso_local i32 @DMA_Init(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DMA_Cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
