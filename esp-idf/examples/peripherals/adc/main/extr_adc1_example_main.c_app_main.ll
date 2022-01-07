; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/adc/main/extr_adc1_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/adc/main/extr_adc1_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unit = common dso_local global i32 0, align 4
@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC_WIDTH_BIT_12 = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@atten = common dso_local global i32 0, align 4
@NO_OF_SAMPLES = common dso_local global i32 0, align 4
@DEFAULT_VREF = common dso_local global i32 0, align 4
@adc_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @unit, align 4
  %5 = load i32, i32* @ADC_UNIT_1, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %9 = call i32 @adc1_config_width(i32 %8)
  %10 = load i32, i32* @channel, align 4
  %11 = load i32, i32* @atten, align 4
  %12 = call i32 @adc1_config_channel_atten(i32 %10, i32 %11)
  br label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @channel, align 4
  %15 = load i32, i32* @atten, align 4
  %16 = call i32 @adc2_config_channel_atten(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17, %45
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @NO_OF_SAMPLES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, i32* @unit, align 4
  %25 = load i32, i32* @ADC_UNIT_1, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @channel, align 4
  %29 = call i64 @adc1_get_raw(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %41

34:                                               ; preds = %23
  %35 = load i32, i32* @channel, align 4
  %36 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %37 = call i32 @adc2_get_raw(i32 %35, i32 %36, i32* %3)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* @NO_OF_SAMPLES, align 4
  %47 = load i32, i32* %1, align 4
  %48 = sdiv i32 %47, %46
  store i32 %48, i32* %1, align 4
  %49 = call i32 @pdMS_TO_TICKS(i32 1000)
  %50 = call i32 @vTaskDelay(i32 %49)
  br label %18
}

declare dso_local i32 @adc1_config_width(i32) #1

declare dso_local i32 @adc1_config_channel_atten(i32, i32) #1

declare dso_local i32 @adc2_config_channel_atten(i32, i32) #1

declare dso_local i64 @adc1_get_raw(i32) #1

declare dso_local i32 @adc2_get_raw(i32, i32, i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
