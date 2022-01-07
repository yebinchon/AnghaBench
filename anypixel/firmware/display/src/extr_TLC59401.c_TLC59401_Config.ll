; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_Config.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_11__ = type { i8*, i8*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TLC59401_LOOKUP_ENTRIES = common dso_local global i32 0, align 4
@TLC59401_CHANNELS = common dso_local global i32 0, align 4
@lookupTable = common dso_local global i32** null, align 8
@TLC59401_POWER_AHB = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@TLC59401_POWER_APB1 = common dso_local global i32 0, align 4
@TLC59401_POWER_APB2 = common dso_local global i32 0, align 4
@TIM_CounterMode_Up = common dso_local global i32 0, align 4
@TIM_CKD_DIV1 = common dso_local global i32 0, align 4
@TLC59401_TMR = common dso_local global i32 0, align 4
@TIM_OCMode_PWM1 = common dso_local global i32 0, align 4
@TIM_OutputState_Enable = common dso_local global i32 0, align 4
@TIM_OutputNState_Disable = common dso_local global i32 0, align 4
@TIM_OCPolarity_High = common dso_local global i32 0, align 4
@TIM_OCNPolarity_High = common dso_local global i32 0, align 4
@TIM_OCIdleState_Reset = common dso_local global i8* null, align 8
@TLC59401_GSCLK_CCR = common dso_local global i32 0, align 4
@pins_tlc59401 = common dso_local global i32 0, align 4
@TLC59401_NUM_PINS = common dso_local global i32 0, align 4
@SPI_DataSize_8b = common dso_local global i32 0, align 4
@SPI_BaudRatePrescaler_64 = common dso_local global i32 0, align 4
@SPI_Direction_2Lines_FullDuplex = common dso_local global i32 0, align 4
@SPI_FirstBit_MSB = common dso_local global i32 0, align 4
@SPI_Mode_Master = common dso_local global i32 0, align 4
@SPI_CPOL_Low = common dso_local global i32 0, align 4
@SPI_CPHA_1Edge = common dso_local global i32 0, align 4
@SPI_NSS_Soft = common dso_local global i32 0, align 4
@TLC59401_SPI = common dso_local global %struct.TYPE_13__* null, align 8
@SPI_CR1_SPE = common dso_local global i32 0, align 4
@enableBlank = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TLC59401_Config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @TLC59401_LOOKUP_ENTRIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @TLC59401_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = mul nsw i32 4000, %16
  %18 = sdiv i32 %17, 64
  %19 = load i32**, i32*** @lookupTable, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %18, i32* %26, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %11

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* @TLC59401_POWER_AHB, align 4
  %36 = load i32, i32* @ENABLE, align 4
  %37 = call i32 @RCC_AHBPeriphClockCmd(i32 %35, i32 %36)
  %38 = load i32, i32* @TLC59401_POWER_APB1, align 4
  %39 = load i32, i32* @ENABLE, align 4
  %40 = call i32 @RCC_APB1PeriphClockCmd(i32 %38, i32 %39)
  %41 = load i32, i32* @TLC59401_POWER_APB2, align 4
  %42 = load i32, i32* @ENABLE, align 4
  %43 = call i32 @RCC_APB2PeriphClockCmd(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @TIM_CounterMode_Up, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @TIM_CKD_DIV1, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @TLC59401_TMR, align 4
  %52 = call i32 @TIM_TimeBaseInit(i32 %51, %struct.TYPE_10__* %3)
  %53 = load i32, i32* @TIM_OCMode_PWM1, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @TIM_OutputState_Enable, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @TIM_OutputNState_Disable, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @TIM_OCPolarity_High, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @TIM_OCNPolarity_High, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i8*, i8** @TIM_OCIdleState_Reset, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @TIM_OCIdleState_Reset, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @TLC59401_TMR, align 4
  %69 = call i32 @TLC59401_GSCLK_INIT(i32 %68, %struct.TYPE_11__* %4)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* @TLC59401_GSCLK_CCR, align 4
  %74 = load i32, i32* @pins_tlc59401, align 4
  %75 = load i32, i32* @TLC59401_NUM_PINS, align 4
  %76 = call i32 @CONFIG_pins(i32 %74, i32 %75)
  %77 = load i32, i32* @SPI_DataSize_8b, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 7
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @SPI_BaudRatePrescaler_64, align 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @SPI_Direction_2Lines_FullDuplex, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @SPI_FirstBit_MSB, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @SPI_Mode_Master, align 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @SPI_CPOL_Low, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @SPI_CPHA_1Edge, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @SPI_NSS_Soft, align 4
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TLC59401_SPI, align 8
  %94 = call i32 @SPI_I2S_DeInit(%struct.TYPE_13__* %93)
  %95 = load i32, i32* @SPI_CR1_SPE, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TLC59401_SPI, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TLC59401_SPI, align 8
  %102 = call i32 @SPI_Init(%struct.TYPE_13__* %101, %struct.TYPE_12__* %5)
  %103 = load i32, i32* @SPI_CR1_SPE, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TLC59401_SPI, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  store i32 0, i32* %1, align 4
  br label %108

108:                                              ; preds = %136, %34
  %109 = load i32, i32* %1, align 4
  %110 = icmp slt i32 %109, 5
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load i32, i32* %1, align 4
  %113 = mul nsw i32 %112, 3
  %114 = add nsw i32 %113, 1
  %115 = call i32 @TLC59401_SetDotCorrection(i32 %114, i32 31)
  %116 = load i32, i32* %1, align 4
  %117 = mul nsw i32 %116, 3
  %118 = add nsw i32 %117, 2
  %119 = call i32 @TLC59401_SetDotCorrection(i32 %118, i32 63)
  %120 = load i32, i32* %1, align 4
  %121 = mul nsw i32 %120, 3
  %122 = add nsw i32 %121, 3
  %123 = call i32 @TLC59401_SetDotCorrection(i32 %122, i32 31)
  %124 = load i32, i32* %1, align 4
  %125 = mul nsw i32 %124, 3
  %126 = add nsw i32 %125, 17
  %127 = call i32 @TLC59401_SetDotCorrection(i32 %126, i32 31)
  %128 = load i32, i32* %1, align 4
  %129 = mul nsw i32 %128, 3
  %130 = add nsw i32 %129, 18
  %131 = call i32 @TLC59401_SetDotCorrection(i32 %130, i32 63)
  %132 = load i32, i32* %1, align 4
  %133 = mul nsw i32 %132, 3
  %134 = add nsw i32 %133, 19
  %135 = call i32 @TLC59401_SetDotCorrection(i32 %134, i32 31)
  br label %136

136:                                              ; preds = %111
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %108

139:                                              ; preds = %108
  %140 = call i32 (...) @TLC59401_SendDotCorrection()
  store i32 0, i32* %1, align 4
  br label %141

141:                                              ; preds = %148, %139
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @TLC59401_CHANNELS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @TLC59401_SetValue(i32 %146, i32 0)
  br label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %1, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %1, align 4
  br label %141

151:                                              ; preds = %141
  %152 = call i32 (...) @TLC59401_Send()
  %153 = call i32 @Delay(i32 10)
  %154 = load i32, i32* @TLC59401_TMR, align 4
  %155 = load i32, i32* @ENABLE, align 4
  %156 = call i32 @TIM_Cmd(i32 %154, i32 %155)
  %157 = load i32, i32* @TLC59401_TMR, align 4
  %158 = load i32, i32* @ENABLE, align 4
  %159 = call i32 @TIM_CtrlPWMOutputs(i32 %157, i32 %158)
  store i32 1, i32* @enableBlank, align 4
  ret void
}

declare dso_local i32 @RCC_AHBPeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphClockCmd(i32, i32) #1

declare dso_local i32 @RCC_APB2PeriphClockCmd(i32, i32) #1

declare dso_local i32 @TIM_TimeBaseInit(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TLC59401_GSCLK_INIT(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CONFIG_pins(i32, i32) #1

declare dso_local i32 @SPI_I2S_DeInit(%struct.TYPE_13__*) #1

declare dso_local i32 @SPI_Init(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @TLC59401_SetDotCorrection(i32, i32) #1

declare dso_local i32 @TLC59401_SendDotCorrection(...) #1

declare dso_local i32 @TLC59401_SetValue(i32, i32) #1

declare dso_local i32 @TLC59401_Send(...) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @TIM_Cmd(i32, i32) #1

declare dso_local i32 @TIM_CtrlPWMOutputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
