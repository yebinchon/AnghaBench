; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_mdns_service_semaphore = common dso_local global i32* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@_mdns_service_task_handle = common dso_local global i32 0, align 4
@_mdns_service_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mdns\00", align 1
@MDNS_SERVICE_STACK_DEPTH = common dso_local global i32 0, align 4
@MDNS_TASK_PRIORITY = common dso_local global i32 0, align 4
@MDNS_TASK_AFFINITY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_mdns_service_task_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_service_task_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @_mdns_service_semaphore, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = call i32* (...) @xSemaphoreCreateMutex()
  store i32* %5, i32** @_mdns_service_semaphore, align 8
  %6 = load i32*, i32** @_mdns_service_semaphore, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @ESP_FAIL, align 4
  store i32 %9, i32* %1, align 4
  br label %39

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %0
  %12 = call i32 (...) @MDNS_SERVICE_LOCK()
  %13 = call i64 (...) @_mdns_start_timer()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %1, align 4
  br label %39

18:                                               ; preds = %11
  %19 = load i32, i32* @_mdns_service_task_handle, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @_mdns_service_task, align 4
  %23 = load i32, i32* @MDNS_SERVICE_STACK_DEPTH, align 4
  %24 = load i32, i32* @MDNS_TASK_PRIORITY, align 4
  %25 = load i32, i32* @MDNS_TASK_AFFINITY, align 4
  %26 = call i32 @xTaskCreatePinnedToCore(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32* null, i32 %24, i32* @_mdns_service_task_handle, i32 %25)
  %27 = load i32, i32* @_mdns_service_task_handle, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = call i32 (...) @_mdns_stop_timer()
  %31 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  %32 = load i32*, i32** @_mdns_service_semaphore, align 8
  %33 = call i32 @vSemaphoreDelete(i32* %32)
  store i32* null, i32** @_mdns_service_semaphore, align 8
  %34 = load i32, i32* @ESP_FAIL, align 4
  store i32 %34, i32* %1, align 4
  br label %39

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %18
  %37 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  %38 = load i32, i32* @ESP_OK, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %36, %29, %15, %8
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @MDNS_SERVICE_LOCK(...) #1

declare dso_local i64 @_mdns_start_timer(...) #1

declare dso_local i32 @MDNS_SERVICE_UNLOCK(...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @_mdns_stop_timer(...) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
