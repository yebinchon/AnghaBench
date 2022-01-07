; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32* }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@idle_hook_cb = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_add(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %12 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32* (...) @xTaskGetCurrentTaskHandle()
  store i32* %16, i32** %2, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_5__* @find_task_in_twdt_list(i32* %18, i32* %4)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %24 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %22, i32 %23)
  %25 = call %struct.TYPE_5__* @calloc(i32 1, i32 24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %30 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %17
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  br label %64

46:                                               ; preds = %17
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %5, align 8
  br label %50

50:                                               ; preds = %56, %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %5, align 8
  br label %50

60:                                               ; preds = %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  br label %64

64:                                               ; preds = %60, %42
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @portNUM_PROCESSORS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 %71)
  %73 = icmp eq i32* %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @idle_hook_cb, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @esp_register_freertos_idle_hook_for_cpu(i32 %75, i32 %76)
  %78 = call i32 @ESP_ERROR_CHECK(i32 %77)
  br label %83

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %65

83:                                               ; preds = %74, %65
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @reset_hw_timer()
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %90 = load i32, i32* @ESP_OK, align 4
  ret i32 %90
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32* @xTaskGetCurrentTaskHandle(...) #1

declare dso_local %struct.TYPE_5__* @find_task_in_twdt_list(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32* @xTaskGetIdleTaskHandleForCPU(i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_register_freertos_idle_hook_for_cpu(i32, i32) #1

declare dso_local i32 @reset_hw_timer(...) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
