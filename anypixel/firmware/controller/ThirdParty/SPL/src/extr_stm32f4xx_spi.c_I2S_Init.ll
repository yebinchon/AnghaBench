; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_spi.c_I2S_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_spi.c_I2S_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i64 }

@I2SCFGR_CLEAR_MASK = common dso_local global i32 0, align 4
@I2S_AudioFreq_Default = common dso_local global i32 0, align 4
@I2S_DataFormat_16b = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_9__* null, align 8
@RCC_CFGR_I2SSRC = common dso_local global i32 0, align 4
@RCC_PLLI2SCFGR_PLLI2SN = common dso_local global i32 0, align 4
@RCC_PLLI2SCFGR_PLLI2SR = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLM = common dso_local global i32 0, align 4
@HSE_VALUE = common dso_local global i32 0, align 4
@I2S_MCLKOutput_Enable = common dso_local global i64 0, align 8
@SPI_I2SCFGR_I2SMOD = common dso_local global i64 0, align 8
@I2S_EXTERNAL_CLOCK_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I2S_Init(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @IS_SPI_23_PERIPH(%struct.TYPE_7__* %14)
  %16 = call i32 @assert_param(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IS_I2S_MODE(i32 %19)
  %21 = call i32 @assert_param(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IS_I2S_STANDARD(i32 %24)
  %26 = call i32 @assert_param(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IS_I2S_DATA_FORMAT(i32 %29)
  %31 = call i32 @assert_param(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @IS_I2S_MCLK_OUTPUT(i64 %34)
  %36 = call i32 @assert_param(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @IS_I2S_AUDIO_FREQ(i32 %39)
  %41 = call i32 @assert_param(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @IS_I2S_CPOL(i64 %44)
  %46 = call i32 @assert_param(i32 %45)
  %47 = load i32, i32* @I2SCFGR_CLEAR_MASK, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 2, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I2S_AudioFreq_Default, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %152

63:                                               ; preds = %2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I2S_DataFormat_16b, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %71

70:                                               ; preds = %63
  store i32 2, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RCC, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RCC_CFGR_I2SSRC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i32, i32* @RCC_CFGR_I2SSRC, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RCC, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RCC, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RCC_PLLI2SCFGR_PLLI2SN, align 4
  %90 = and i32 %88, %89
  %91 = ashr i32 %90, 6
  %92 = load i32, i32* @RCC_PLLI2SCFGR_PLLI2SN, align 4
  %93 = ashr i32 %92, 6
  %94 = and i32 %91, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RCC, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RCC_PLLI2SCFGR_PLLI2SR, align 4
  %99 = and i32 %97, %98
  %100 = ashr i32 %99, 28
  %101 = load i32, i32* @RCC_PLLI2SCFGR_PLLI2SR, align 4
  %102 = ashr i32 %101, 28
  %103 = and i32 %100, %102
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RCC, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RCC_PLLCFGR_PLLM, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @HSE_VALUE, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @I2S_MCLKOutput_Enable, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %85
  %122 = load i32, i32* %10, align 4
  %123 = sdiv i32 %122, 256
  %124 = mul nsw i32 %123, 10
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %124, %127
  %129 = add nsw i32 %128, 5
  store i32 %129, i32* %9, align 4
  br label %141

130:                                              ; preds = %85
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 32, %132
  %134 = sdiv i32 %131, %133
  %135 = mul nsw i32 %134, 10
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %135, %138
  %140 = add nsw i32 %139, 5
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %130, %121
  %142 = load i32, i32* %9, align 4
  %143 = sdiv i32 %142, 10
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, 1
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %146, %147
  %149 = sdiv i32 %148, 2
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 8
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %141, %62
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %6, align 4
  %157 = icmp sgt i32 %156, 255
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = or i32 %161, %165
  %167 = or i32 %160, %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i64, i64* @SPI_I2SCFGR_I2SMOD, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = or i32 %180, %184
  %186 = or i32 %177, %185
  %187 = or i32 %174, %186
  %188 = or i32 %171, %187
  %189 = load i32, i32* %5, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_SPI_23_PERIPH(%struct.TYPE_7__*) #1

declare dso_local i32 @IS_I2S_MODE(i32) #1

declare dso_local i32 @IS_I2S_STANDARD(i32) #1

declare dso_local i32 @IS_I2S_DATA_FORMAT(i32) #1

declare dso_local i32 @IS_I2S_MCLK_OUTPUT(i64) #1

declare dso_local i32 @IS_I2S_AUDIO_FREQ(i32) #1

declare dso_local i32 @IS_I2S_CPOL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
