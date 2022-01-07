; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@esp_sysview_vprintf = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to create queue!\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init heap trace!\00", align 1
@alloc_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @esp_log_set_vprintf(i32* @esp_sysview_vprintf)
  %3 = call i64 @xQueueCreate(i32 10, i32 8)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGE(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %20

9:                                                ; preds = %0
  %10 = call i64 (...) @heap_trace_init_tohost()
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @alloc_task, align 4
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @xTaskCreatePinnedToCore(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 2048, i64 %18, i32 5, i32* null, i32 0)
  br label %20

20:                                               ; preds = %16, %13, %6
  ret void
}

declare dso_local i32 @esp_log_set_vprintf(i32*) #1

declare dso_local i64 @xQueueCreate(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @heap_trace_init_tohost(...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
