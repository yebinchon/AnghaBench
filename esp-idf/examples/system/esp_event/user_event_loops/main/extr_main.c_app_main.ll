; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/esp_event/user_event_loops/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/esp_event/user_event_loops/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"setting up\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"loop_task\00", align 1
@tskNO_AFFINITY = common dso_local global i32 0, align 4
@__const.app_main.loop_without_task_args = private unnamed_addr constant %struct.TYPE_3__ { i32 5, i8* null, i32 0, i32 0, i32 0 }, align 8
@loop_with_task = common dso_local global i32 0, align 4
@loop_without_task = common dso_local global i32 0, align 4
@TASK_EVENTS = common dso_local global i32 0, align 4
@TASK_ITERATION_EVENT = common dso_local global i32 0, align 4
@task_iteration_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"starting event source\00", align 1
@task_event_source = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"task_event_source\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"starting application task\00", align 1
@application_task = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"application_task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = load i32, i32* @TAG, align 4
  %4 = call i32 @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 5, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 2048, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %9 = load i32, i32* @tskNO_AFFINITY, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %11 = call i32 @uxTaskPriorityGet(i32* null)
  store i32 %11, i32* %10, align 8
  %12 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_3__* @__const.app_main.loop_without_task_args to i8*), i64 32, i1 false)
  %13 = call i32 @esp_event_loop_create(%struct.TYPE_3__* %1, i32* @loop_with_task)
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = call i32 @esp_event_loop_create(%struct.TYPE_3__* %2, i32* @loop_without_task)
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  %17 = load i32, i32* @loop_with_task, align 4
  %18 = load i32, i32* @TASK_EVENTS, align 4
  %19 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %20 = load i32, i32* @task_iteration_handler, align 4
  %21 = load i32, i32* @loop_with_task, align 4
  %22 = call i32 @esp_event_handler_register_with(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32 @ESP_ERROR_CHECK(i32 %22)
  %24 = load i32, i32* @loop_without_task, align 4
  %25 = load i32, i32* @TASK_EVENTS, align 4
  %26 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %27 = load i32, i32* @task_iteration_handler, align 4
  %28 = load i32, i32* @loop_without_task, align 4
  %29 = call i32 @esp_event_handler_register_with(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = call i32 @ESP_ERROR_CHECK(i32 %29)
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @task_event_source, align 4
  %34 = call i32 @uxTaskPriorityGet(i32* null)
  %35 = call i32 @xTaskCreate(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 2048, i32* null, i32 %34, i32* null)
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @application_task, align 4
  %39 = call i32 @uxTaskPriorityGet(i32* null)
  %40 = call i32 @xTaskCreate(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 2048, i32* null, i32 %39, i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @uxTaskPriorityGet(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @esp_event_handler_register_with(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
