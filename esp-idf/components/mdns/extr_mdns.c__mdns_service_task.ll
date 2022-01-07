; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_service_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@_mdns_server = common dso_local global %struct.TYPE_6__* null, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@ACTION_TASK_STOP = common dso_local global i64 0, align 8
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@_mdns_service_task_handle = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_mdns_service_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_service_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %4

4:                                                ; preds = %37, %1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_mdns_server, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_mdns_server, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_mdns_server, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @portMAX_DELAY, align 4
  %17 = call i64 @xQueueReceive(i64 %15, %struct.TYPE_5__** %3, i32 %16)
  %18 = load i64, i64* @pdTRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACTION_TASK_STOP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %38

27:                                               ; preds = %20
  %28 = call i32 (...) @MDNS_SERVICE_LOCK()
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = call i32 @_mdns_execute_action(%struct.TYPE_5__* %29)
  %31 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  br label %32

32:                                               ; preds = %27, %12
  br label %37

33:                                               ; preds = %7, %4
  %34 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %35 = mul nsw i32 500, %34
  %36 = call i32 @vTaskDelay(i32 %35)
  br label %37

37:                                               ; preds = %33, %32
  br label %4

38:                                               ; preds = %26
  store i32* null, i32** @_mdns_service_task_handle, align 8
  %39 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @xQueueReceive(i64, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @MDNS_SERVICE_LOCK(...) #1

declare dso_local i32 @_mdns_execute_action(%struct.TYPE_5__*) #1

declare dso_local i32 @MDNS_SERVICE_UNLOCK(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
