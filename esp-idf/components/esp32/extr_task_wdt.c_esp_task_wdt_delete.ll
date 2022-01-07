; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@idle_hook_cb = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_delete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32* (...) @xTaskGetCurrentTaskHandle()
  store i32* %10, i32** %2, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %17 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_5__* @find_task_in_twdt_list(i32* %18, i32* %4)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %24 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %11
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32 @free(%struct.TYPE_5__* %36)
  br label %61

38:                                               ; preds = %11
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %5, align 8
  br label %42

42:                                               ; preds = %49, %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = icmp ne %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %5, align 8
  br label %42

53:                                               ; preds = %42
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = call i32 @free(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %53, %30
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @portNUM_PROCESSORS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 %68)
  %70 = icmp eq i32* %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @idle_hook_cb, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @esp_deregister_freertos_idle_hook_for_cpu(i32 %72, i32 %73)
  br label %79

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %62

79:                                               ; preds = %71, %62
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @reset_hw_timer()
  br label %84

84:                                               ; preds = %82, %79
  %85 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %86 = load i32, i32* @ESP_OK, align 4
  ret i32 %86
}

declare dso_local i32* @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local %struct.TYPE_5__* @find_task_in_twdt_list(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32* @xTaskGetIdleTaskHandleForCPU(i32) #1

declare dso_local i32 @esp_deregister_freertos_idle_hook_for_cpu(i32, i32) #1

declare dso_local i32 @reset_hw_timer(...) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
