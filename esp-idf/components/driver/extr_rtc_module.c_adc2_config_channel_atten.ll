; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_config_channel_atten.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_config_channel_atten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ADC2_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ADC2 Channel Err\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC_ATTEN_11db = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ADC2 Atten Err\00", align 1
@adc2_spinlock = common dso_local global i32 0, align 4
@adc2_wifi_lock = common dso_local global i32 0, align 4
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@SENS = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc2_config_channel_atten(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADC2_CHANNEL_MAX, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %11 = call i32 @RTC_MODULE_CHECK(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ADC_ATTEN_11db, align 4
  %14 = icmp sle i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %17 = call i32 @RTC_MODULE_CHECK(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @adc2_pad_init(i32 %18)
  %20 = call i32 @portENTER_CRITICAL(i32* @adc2_spinlock)
  %21 = call i32 @_lock_try_acquire(i32* @adc2_wifi_lock)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = call i32 @portEXIT_CRITICAL(i32* @adc2_spinlock)
  %25 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SENS, i32 0, i32 0), align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 2
  %30 = shl i32 3, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 3
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 2
  %37 = shl i32 %34, %36
  %38 = or i32 %32, %37
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SENS, i32 0, i32 0), align 4
  %39 = call i32 @_lock_release(i32* @adc2_wifi_lock)
  %40 = call i32 @portEXIT_CRITICAL(i32* @adc2_spinlock)
  %41 = load i32, i32* @ESP_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @adc2_pad_init(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @_lock_try_acquire(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
