; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_disable_wakeup_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_disable_wakeup_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@ESP_SLEEP_WAKEUP_ALL = common dso_local global i64 0, align 8
@s_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ESP_SLEEP_WAKEUP_TIMER = common dso_local global i32 0, align 4
@RTC_TIMER_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_EXT0 = common dso_local global i32 0, align 4
@RTC_EXT0_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_EXT1 = common dso_local global i32 0, align 4
@RTC_EXT1_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_TOUCHPAD = common dso_local global i32 0, align 4
@RTC_TOUCH_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_GPIO = common dso_local global i32 0, align 4
@RTC_GPIO_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_UART = common dso_local global i32 0, align 4
@RTC_UART0_TRIG_EN = common dso_local global i32 0, align 4
@RTC_UART1_TRIG_EN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Incorrect wakeup source (%d) to disable.\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_ULP = common dso_local global i32 0, align 4
@RTC_ULP_TRIG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_disable_wakeup_source(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @ESP_SLEEP_WAKEUP_ALL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %90

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @ESP_SLEEP_WAKEUP_TIMER, align 4
  %11 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %12 = call i64 @CHECK_SOURCE(i64 %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %18 = and i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 5), align 8
  br label %89

19:                                               ; preds = %8
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT0, align 4
  %22 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %23 = call i64 @CHECK_SOURCE(i64 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 3), align 8
  %26 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %29 = and i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %88

30:                                               ; preds = %19
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT1, align 4
  %33 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %34 = call i64 @CHECK_SOURCE(i64 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %37 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %40 = and i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %87

41:                                               ; preds = %30
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* @ESP_SLEEP_WAKEUP_TOUCHPAD, align 4
  %44 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %45 = call i64 @CHECK_SOURCE(i64 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %51 = and i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %86

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* @ESP_SLEEP_WAKEUP_GPIO, align 4
  %55 = load i32, i32* @RTC_GPIO_TRIG_EN, align 4
  %56 = call i64 @CHECK_SOURCE(i64 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @RTC_GPIO_TRIG_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %62 = and i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %85

63:                                               ; preds = %52
  %64 = load i64, i64* %3, align 8
  %65 = load i32, i32* @ESP_SLEEP_WAKEUP_UART, align 4
  %66 = load i32, i32* @RTC_UART0_TRIG_EN, align 4
  %67 = load i32, i32* @RTC_UART1_TRIG_EN, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @CHECK_SOURCE(i64 %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, i32* @RTC_UART0_TRIG_EN, align 4
  %73 = load i32, i32* @RTC_UART1_TRIG_EN, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %77 = and i32 %76, %75
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %84

78:                                               ; preds = %63
  %79 = load i32, i32* @TAG, align 4
  %80 = load i64, i64* %3, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ESP_LOGE(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %58
  br label %86

86:                                               ; preds = %85, %47
  br label %87

87:                                               ; preds = %86, %36
  br label %88

88:                                               ; preds = %87, %25
  br label %89

89:                                               ; preds = %88, %14
  br label %90

90:                                               ; preds = %89, %7
  %91 = load i32, i32* @ESP_OK, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %78
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @CHECK_SOURCE(i64, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
