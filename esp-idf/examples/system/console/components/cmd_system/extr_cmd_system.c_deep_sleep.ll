; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_system/extr_cmd_system.c_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_system/extr_cmd_system.c_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i64*, i64 }

@deep_sleep_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enabling timer wakeup, timeout=%lluus\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GPIO %d is not an RTC IO\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid wakeup level: %d\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Enabling wakeup on GPIO%d, wakeup on %s level\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@GPIO_NUM_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @deep_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deep_sleep(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @arg_parse(i32 %10, i8** %11, i8** bitcast (%struct.TYPE_8__* @deep_sleep_args to i8**))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 3), align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @arg_print_errors(i32 %16, i32 %17, i8* %20)
  store i32 1, i32* %3, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 2), align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 2), align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 1000, %32
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @TAG, align 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @esp_sleep_enable_timer_wakeup(i64 %38)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  br label %41

41:                                               ; preds = %27, %22
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 1), align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rtc_gpio_is_valid_gpio(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @TAG, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 1, i32* %3, align 4
  br label %98

59:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 0), align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @deep_sleep_args, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @TAG, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ESP_LOGE(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 1, i32* %3, align 4
  br label %98

79:                                               ; preds = %72, %64
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* @TAG, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %87 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %82, i8* %86)
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = shl i64 1, %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @esp_sleep_enable_ext1_wakeup(i64 %90, i32 %91)
  %93 = call i32 @ESP_ERROR_CHECK(i32 %92)
  br label %94

94:                                               ; preds = %80, %41
  %95 = load i32, i32* @GPIO_NUM_12, align 4
  %96 = call i32 @rtc_gpio_isolate(i32 %95)
  %97 = call i32 (...) @esp_deep_sleep_start()
  br label %98

98:                                               ; preds = %94, %75, %55, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, ...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_sleep_enable_timer_wakeup(i64) #1

declare dso_local i32 @rtc_gpio_is_valid_gpio(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_sleep_enable_ext1_wakeup(i64, i32) #1

declare dso_local i32 @rtc_gpio_isolate(i32) #1

declare dso_local i32 @esp_deep_sleep_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
