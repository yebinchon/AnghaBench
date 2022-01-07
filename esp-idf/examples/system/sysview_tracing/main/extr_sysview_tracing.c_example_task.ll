; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing/main/extr_sysview_tracing.c_example_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing/main/extr_sysview_tracing.c_example_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p: run task\00", align 1
@example_timer_isr = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%p: failed to register timer ISR\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%p: failed to start timer\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Task[%p]: received event %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @example_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %11 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @example_timer_isr, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = call i64 @timer_isr_register(i32 %14, i32 %17, i32 %18, %struct.TYPE_3__* %19, i32 0, i32* %4)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %27 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @timer_start(i32 %31, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %42 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %28
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %45
  %46 = call i32 (...) @SYSVIEW_EXAMPLE_WAIT_EVENT_START()
  %47 = load i32, i32* @portMAX_DELAY, align 4
  %48 = call i32 @xTaskNotifyWait(i32 0, i32 0, i32* %6, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SYSVIEW_EXAMPLE_WAIT_EVENT_END(i32 %49)
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  br label %45
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, ...) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i64 @timer_isr_register(i32, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i64 @timer_start(i32, i32) #1

declare dso_local i32 @SYSVIEW_EXAMPLE_WAIT_EVENT_START(...) #1

declare dso_local i32 @xTaskNotifyWait(i32, i32, i32*, i32) #1

declare dso_local i32 @SYSVIEW_EXAMPLE_WAIT_EVENT_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
