; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_spi.c_I2S_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_spi.c_I2S_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@I2SCFGR_CLEAR_Mask = common dso_local global i32 0, align 4
@I2S_AudioFreq_Default = common dso_local global i32 0, align 4
@I2S_DataFormat_16b = common dso_local global i32 0, align 4
@I2S_MCLKOutput_Enable = common dso_local global i64 0, align 8
@SPI_I2SCFGR_I2SMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I2S_Init(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @IS_SPI_1_PERIPH(%struct.TYPE_8__* %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IS_I2S_MODE(i32 %17)
  %19 = call i32 @assert_param(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_I2S_STANDARD(i32 %22)
  %24 = call i32 @assert_param(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @IS_I2S_DATA_FORMAT(i32 %27)
  %29 = call i32 @assert_param(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IS_I2S_MCLK_OUTPUT(i64 %32)
  %34 = call i32 @assert_param(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IS_I2S_AUDIO_FREQ(i32 %37)
  %39 = call i32 @assert_param(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @IS_I2S_CPOL(i64 %42)
  %44 = call i32 @assert_param(i32 %43)
  %45 = load i32, i32* @I2SCFGR_CLEAR_Mask, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I2S_AudioFreq_Default, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %109

61:                                               ; preds = %2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @I2S_DataFormat_16b, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %69

68:                                               ; preds = %61
  store i32 2, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = call i32 @RCC_GetClocksFreq(%struct.TYPE_9__* %10)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @I2S_MCLKOutput_Enable, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = sdiv i32 %79, 256
  %81 = mul nsw i32 %80, 10
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %81, %84
  %86 = add nsw i32 %85, 5
  store i32 %86, i32* %9, align 4
  br label %98

87:                                               ; preds = %69
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 32, %89
  %91 = sdiv i32 %88, %90
  %92 = mul nsw i32 %91, 10
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = add nsw i32 %96, 5
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %87, %78
  %99 = load i32, i32* %9, align 4
  %100 = sdiv i32 %99, 10
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = shl i32 %107, 8
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %98, %60
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %113, 255
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %109
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = or i32 %118, %122
  %124 = or i32 %117, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SPI_I2SCFGR_I2SMOD, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = or i32 %136, %140
  %142 = or i32 %133, %141
  %143 = or i32 %130, %142
  %144 = or i32 %127, %143
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_SPI_1_PERIPH(%struct.TYPE_8__*) #1

declare dso_local i32 @IS_I2S_MODE(i32) #1

declare dso_local i32 @IS_I2S_STANDARD(i32) #1

declare dso_local i32 @IS_I2S_DATA_FORMAT(i32) #1

declare dso_local i32 @IS_I2S_MCLK_OUTPUT(i64) #1

declare dso_local i32 @IS_I2S_AUDIO_FREQ(i32) #1

declare dso_local i32 @IS_I2S_CPOL(i64) #1

declare dso_local i32 @RCC_GetClocksFreq(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
