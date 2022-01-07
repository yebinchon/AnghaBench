; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@TIMG_WDT_WKEY_VALUE = common dso_local global i64 0, align 8
@TIMERG0 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_deinit() #0 {
  %1 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %3 = icmp ne %struct.TYPE_6__* %2, null
  %4 = zext i1 %3 to i32
  %5 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %6 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %4, i32 %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %13 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %11, i32 %12)
  %14 = load i64, i64* @TIMG_WDT_WKEY_VALUE, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TIMERG0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TIMERG0, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TIMERG0, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @esp_intr_free(i32 %17)
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %21 = call i32 @free(%struct.TYPE_6__* %20)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @twdt_config, align 8
  %22 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %23 = load i32, i32* @ESP_OK, align 4
  ret i32 %23
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
