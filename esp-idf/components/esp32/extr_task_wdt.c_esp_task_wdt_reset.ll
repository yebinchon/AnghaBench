; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global i32* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %5 = load i32*, i32** @twdt_config, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %7, i32 %8)
  %10 = call i32 (...) @xTaskGetCurrentTaskHandle()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call %struct.TYPE_3__* @find_task_in_twdt_list(i32 %11, i32* %3)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %17 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %15, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (...) @reset_hw_timer()
  br label %24

24:                                               ; preds = %22, %0
  %25 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %26 = load i32, i32* @ESP_OK, align 4
  ret i32 %26
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local %struct.TYPE_3__* @find_task_in_twdt_list(i32, i32*) #1

declare dso_local i32 @reset_hw_timer(...) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
