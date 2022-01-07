; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_pad_get_io_num.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_pad_get_io_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC2_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ADC2 Channel Err\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC2_CHANNEL_0_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_1_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_2_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_3_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_4_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_5_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_6_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_7_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_8_GPIO_NUM = common dso_local global i32 0, align 4
@ADC2_CHANNEL_9_GPIO_NUM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc2_pad_get_io_num(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADC2_CHANNEL_MAX, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %11 = call i32 @RTC_MODULE_CHECK(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %43 [
    i32 137, label %13
    i32 136, label %16
    i32 135, label %19
    i32 134, label %22
    i32 133, label %25
    i32 132, label %28
    i32 131, label %31
    i32 130, label %34
    i32 129, label %37
    i32 128, label %40
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @ADC2_CHANNEL_0_GPIO_NUM, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i32, i32* @ADC2_CHANNEL_1_GPIO_NUM, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load i32, i32* @ADC2_CHANNEL_2_GPIO_NUM, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @ADC2_CHANNEL_3_GPIO_NUM, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load i32, i32* @ADC2_CHANNEL_4_GPIO_NUM, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load i32, i32* @ADC2_CHANNEL_5_GPIO_NUM, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @ADC2_CHANNEL_6_GPIO_NUM, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load i32, i32* @ADC2_CHANNEL_7_GPIO_NUM, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %45

37:                                               ; preds = %2
  %38 = load i32, i32* @ADC2_CHANNEL_8_GPIO_NUM, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* @ADC2_CHANNEL_9_GPIO_NUM, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %46 = load i32, i32* @ESP_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
