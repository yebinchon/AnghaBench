; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_pthread_exit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_pthread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8*, i64, i64 }

@s_threads_mux = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@eNoAction = common dso_local global i32 0, align 4
@PTHREAD_TASK_STATE_EXIT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Task stk_wm = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_exit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @pthread_internal_local_storage_destructor_callback()
  %6 = load i32, i32* @s_threads_mux, align 4
  %7 = load i32, i32* @portMAX_DELAY, align 4
  %8 = call i64 @xSemaphoreTake(i32 %6, i32 %7)
  %9 = load i64, i64* @pdTRUE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @assert(i32 0)
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %15 = call %struct.TYPE_4__* @pthread_find(i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @assert(i32 0)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @free(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = call i32 @pthread_delete(%struct.TYPE_4__* %36)
  store i32 1, i32* %3, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load i8*, i8** %2, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @eNoAction, align 4
  %51 = call i32 @xTaskNotify(i64 %49, i32 0, i32 %50)
  br label %56

52:                                               ; preds = %38
  %53 = load i32, i32* @PTHREAD_TASK_STATE_EXIT, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* @s_threads_mux, align 4
  %59 = call i32 @xSemaphoreGive(i32 %58)
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 @uxTaskGetStackHighWaterMark(i32* null)
  %62 = call i32 @ESP_LOGD(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @vTaskDelete(i32* null)
  br label %69

67:                                               ; preds = %57
  %68 = call i32 @vTaskSuspend(i32* null)
  br label %69

69:                                               ; preds = %67, %65
  %70 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @pthread_internal_local_storage_destructor_callback(...) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @pthread_find(i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @pthread_delete(%struct.TYPE_4__*) #1

declare dso_local i32 @xTaskNotify(i64, i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @uxTaskGetStackHighWaterMark(i32*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i32 @vTaskSuspend(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
