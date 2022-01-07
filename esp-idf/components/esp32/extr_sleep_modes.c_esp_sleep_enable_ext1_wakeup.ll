; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_enable_ext1_wakeup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_enable_ext1_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@ESP_EXT1_WAKEUP_ANY_HIGH = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not an RTC IO: GPIO%d\00", align 1
@rtc_gpio_desc = common dso_local global %struct.TYPE_4__* null, align 8
@s_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@RTC_EXT1_TRIG_EN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_enable_ext1_wakeup(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @ESP_EXT1_WAKEUP_ANY_HIGH, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %41

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @RTC_GPIO_IS_VALID_GPIO(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_gpio_desc, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %31, %21
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 2), align 8
  %48 = load i64, i64* %5, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 1), align 8
  %49 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 0), align 8
  %51 = or i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 0), align 8
  %52 = load i32, i32* @ESP_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %26, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @RTC_GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
