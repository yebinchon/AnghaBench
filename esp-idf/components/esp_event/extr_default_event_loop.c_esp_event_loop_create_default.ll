; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_default_event_loop.c_esp_event_loop_create_default.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_default_event_loop.c_esp_event_loop_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@s_default_loop = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"sys_evt\00", align 1
@ESP_TASKD_EVENT_PRIO = common dso_local global i32 0, align 4
@ESP_TASKD_EVENT_STACK = common dso_local global i32 0, align 4
@CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_event_loop_create_default() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @s_default_loop, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %7, i64* %1, align 8
  br label %25

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %12 = load i32, i32* @ESP_TASKD_EVENT_PRIO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %14 = load i32, i32* @ESP_TASKD_EVENT_STACK, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %16 = load i32, i32* @CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE, align 4
  store i32 %16, i32* %15, align 4
  %17 = call i64 @esp_event_loop_create(%struct.TYPE_3__* %2, i64* @s_default_loop)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %1, align 8
  br label %25

23:                                               ; preds = %8
  %24 = load i64, i64* @ESP_OK, align 8
  store i64 %24, i64* %1, align 8
  br label %25

25:                                               ; preds = %23, %21, %6
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

declare dso_local i64 @esp_event_loop_create(%struct.TYPE_3__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
