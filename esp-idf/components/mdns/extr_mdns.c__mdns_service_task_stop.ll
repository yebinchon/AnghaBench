; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@_mdns_service_task_handle = common dso_local global i32* null, align 8
@ACTION_TASK_STOP = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global %struct.TYPE_5__* null, align 8
@pdPASS = common dso_local global i64 0, align 8
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@_mdns_service_semaphore = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_mdns_service_task_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_service_task_stop() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32 (...) @_mdns_stop_timer()
  %4 = load i32*, i32** @_mdns_service_task_handle, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %2, align 8
  %7 = load i32, i32* @ACTION_TASK_STOP, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @xQueueSend(i32 %11, %struct.TYPE_4__** %2, i32 0)
  %13 = load i64, i64* @pdPASS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load i32*, i32** @_mdns_service_task_handle, align 8
  %17 = call i32 @vTaskDelete(i32* %16)
  store i32* null, i32** @_mdns_service_task_handle, align 8
  br label %18

18:                                               ; preds = %15, %6
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i32*, i32** @_mdns_service_task_handle, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %24 = sdiv i32 10, %23
  %25 = call i32 @vTaskDelay(i32 %24)
  br label %19

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i32*, i32** @_mdns_service_semaphore, align 8
  %29 = call i32 @vSemaphoreDelete(i32* %28)
  store i32* null, i32** @_mdns_service_semaphore, align 8
  %30 = load i32, i32* @ESP_OK, align 4
  ret i32 %30
}

declare dso_local i32 @_mdns_stop_timer(...) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
