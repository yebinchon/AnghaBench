; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_alloc_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_alloc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@free_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"free\00", align 1
@portNUM_PROCESSORS = common dso_local global i64 0, align 8
@HEAP_TRACE_ALL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Task[%p]: allocated %d bytes @ %p\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to send to queue!\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @alloc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @free_task, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @portNUM_PROCESSORS, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @xTaskCreatePinnedToCore(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2048, i32 %10, i32 5, i32* null, i64 %12)
  %14 = load i32, i32* @HEAP_TRACE_ALL, align 4
  %15 = call i32 @heap_trace_start(i32 %14)
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 2, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 2
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @malloc(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29, i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = bitcast i8** %6 to i8*
  %34 = load i32, i32* @portMAX_DELAY, align 4
  %35 = call i64 @xQueueSend(i32 %32, i8* %33, i32 %34)
  %36 = load i64, i64* @pdPASS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %43 = sdiv i32 100, %42
  %44 = call i32 @vTaskDelay(i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %16

48:                                               ; preds = %16
  %49 = call i32 (...) @heap_trace_stop()
  br label %50

50:                                               ; preds = %48, %50
  br label %50
}

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @heap_trace_start(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i64 @xQueueSend(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @heap_trace_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
