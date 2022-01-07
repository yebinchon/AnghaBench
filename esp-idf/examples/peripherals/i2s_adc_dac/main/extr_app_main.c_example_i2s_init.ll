; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_example_i2s_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_example_i2s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXAMPLE_I2S_NUM = common dso_local global i32 0, align 4
@I2S_MODE_MASTER = common dso_local global i32 0, align 4
@I2S_MODE_RX = common dso_local global i32 0, align 4
@I2S_MODE_TX = common dso_local global i32 0, align 4
@I2S_MODE_DAC_BUILT_IN = common dso_local global i32 0, align 4
@I2S_MODE_ADC_BUILT_IN = common dso_local global i32 0, align 4
@EXAMPLE_I2S_FORMAT = common dso_local global i32 0, align 4
@I2S_COMM_FORMAT_I2S_MSB = common dso_local global i32 0, align 4
@EXAMPLE_I2S_SAMPLE_BITS = common dso_local global i32 0, align 4
@EXAMPLE_I2S_SAMPLE_RATE = common dso_local global i32 0, align 4
@I2S_DAC_CHANNEL_BOTH_EN = common dso_local global i32 0, align 4
@I2S_ADC_UNIT = common dso_local global i32 0, align 4
@I2S_ADC_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @example_i2s_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @EXAMPLE_I2S_NUM, align 4
  store i32 %3, i32* %1, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %5 = load i32, i32* @I2S_MODE_MASTER, align 4
  %6 = load i32, i32* @I2S_MODE_RX, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @I2S_MODE_TX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @I2S_MODE_DAC_BUILT_IN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @I2S_MODE_ADC_BUILT_IN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 1024, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %19 = load i32, i32* @EXAMPLE_I2S_FORMAT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %21 = load i32, i32* @I2S_COMM_FORMAT_I2S_MSB, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  %23 = load i32, i32* @EXAMPLE_I2S_SAMPLE_BITS, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 8
  %25 = load i32, i32* @EXAMPLE_I2S_SAMPLE_RATE, align 4
  store i32 %25, i32* %24, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @i2s_driver_install(i32 %26, %struct.TYPE_3__* %2, i32 0, i32* null)
  %28 = load i32, i32* @I2S_DAC_CHANNEL_BOTH_EN, align 4
  %29 = call i32 @i2s_set_dac_mode(i32 %28)
  %30 = load i32, i32* @I2S_ADC_UNIT, align 4
  %31 = load i32, i32* @I2S_ADC_CHANNEL, align 4
  %32 = call i32 @i2s_set_adc_mode(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @i2s_driver_install(i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @i2s_set_dac_mode(i32) #1

declare dso_local i32 @i2s_set_adc_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
