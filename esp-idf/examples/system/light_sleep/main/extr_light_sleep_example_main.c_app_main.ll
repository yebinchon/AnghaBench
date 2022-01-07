; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/light_sleep/main/extr_light_sleep_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/light_sleep/main/extr_light_sleep_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BUTTON_GPIO_NUM_DEFAULT = common dso_local global i32 0, align 4
@BUTTON_WAKEUP_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_INTR_LOW_LEVEL = common dso_local global i32 0, align 4
@GPIO_INTR_HIGH_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Waiting for GPIO%d to go high...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Entering light sleep\0A\00", align 1
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Returned from light sleep, reason: %s, t=%lld ms, slept for %lld ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @BUTTON_GPIO_NUM_DEFAULT, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @BUTTON_WAKEUP_LEVEL_DEFAULT, align 4
  store i32 %8, i32* %2, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %10 = load i32, i32* @GPIO_MODE_INPUT, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @BIT64(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = call i32 @gpio_config(%struct.TYPE_3__* %3)
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = load i32, i32* @GPIO_INTR_LOW_LEVEL, align 4
  br label %23

21:                                               ; preds = %0
  %22 = load i32, i32* @GPIO_INTR_HIGH_LEVEL, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @gpio_wakeup_enable(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %23, %56
  %27 = call i32 @esp_sleep_enable_timer_wakeup(i32 2000000)
  %28 = call i32 (...) @esp_sleep_enable_gpio_wakeup()
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @rtc_gpio_get_level(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %1, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %39, %33
  %37 = call i32 @pdMS_TO_TICKS(i32 10)
  %38 = call i32 @vTaskDelay(i32 %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @rtc_gpio_get_level(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %36, label %44

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %26
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %48 = call i32 @uart_wait_tx_idle_polling(i32 %47)
  %49 = call i32 (...) @esp_timer_get_time()
  store i32 %49, i32* %4, align 4
  %50 = call i32 (...) @esp_light_sleep_start()
  %51 = call i32 (...) @esp_timer_get_time()
  store i32 %51, i32* %5, align 4
  %52 = call i32 (...) @esp_sleep_get_wakeup_cause()
  switch i32 %52, label %55 [
    i32 128, label %53
    i32 129, label %54
  ]

53:                                               ; preds = %45
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %56

54:                                               ; preds = %45
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %56

55:                                               ; preds = %45
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %56

56:                                               ; preds = %55, %54, %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sdiv i32 %58, 1000
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sdiv i32 %62, 1000
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %57, i32 %59, i32 %63)
  br label %26
}

declare dso_local i32 @BIT64(i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @gpio_config(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_wakeup_enable(i32, i32) #1

declare dso_local i32 @esp_sleep_enable_timer_wakeup(i32) #1

declare dso_local i32 @esp_sleep_enable_gpio_wakeup(...) #1

declare dso_local i32 @rtc_gpio_get_level(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @uart_wait_tx_idle_polling(i32) #1

declare dso_local i32 @esp_timer_get_time(...) #1

declare dso_local i32 @esp_light_sleep_start(...) #1

declare dso_local i32 @esp_sleep_get_wakeup_cause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
