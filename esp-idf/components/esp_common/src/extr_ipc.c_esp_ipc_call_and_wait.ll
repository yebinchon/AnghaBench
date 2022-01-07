; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_ipc.c_esp_ipc_call_and_wait.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_ipc.c_esp_ipc_call_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portNUM_PROCESSORS = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@taskSCHEDULER_RUNNING = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@s_ipc_mutex = common dso_local global i32* null, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@s_func = common dso_local global i32* null, align 8
@s_func_arg = common dso_local global i8** null, align 8
@s_ipc_wait = common dso_local global i32* null, align 8
@s_ipc_sem = common dso_local global i32* null, align 8
@s_ipc_ack = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@s_ipc_task_handle = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i32)* @esp_ipc_call_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_ipc_call_and_wait(i64 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @portNUM_PROCESSORS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %5, align 4
  br label %55

15:                                               ; preds = %4
  %16 = call i64 (...) @xTaskGetSchedulerState()
  %17 = load i64, i64* @taskSCHEDULER_RUNNING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load i32*, i32** @s_ipc_mutex, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @portMAX_DELAY, align 4
  %26 = call i32 @xSemaphoreTake(i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** @s_func, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i8**, i8*** @s_func_arg, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** @s_ipc_wait, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32*, i32** @s_ipc_sem, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xSemaphoreGive(i32 %42)
  %44 = load i32*, i32** @s_ipc_ack, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @portMAX_DELAY, align 4
  %49 = call i32 @xSemaphoreTake(i32 %47, i32 %48)
  %50 = load i32*, i32** @s_ipc_mutex, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xSemaphoreGive(i32 %52)
  %54 = load i32, i32* @ESP_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %21, %19, %13
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @xTaskGetSchedulerState(...) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
