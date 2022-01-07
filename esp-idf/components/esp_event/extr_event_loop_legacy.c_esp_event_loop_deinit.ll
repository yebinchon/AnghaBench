; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_loop_legacy.c_esp_event_loop_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_loop_legacy.c_esp_event_loop_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_initialized = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"system event loop not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@SYSTEM_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@esp_event_post_to_user = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@s_event_handler_cb = common dso_local global i32* null, align 8
@s_event_ctx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_event_loop_deinit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @s_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 @ESP_LOGE(i32 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %8, i64* %1, align 8
  br label %32

9:                                                ; preds = %0
  %10 = load i32, i32* @SYSTEM_EVENT, align 4
  %11 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %12 = load i32, i32* @esp_event_post_to_user, align 4
  %13 = call i64 @esp_event_handler_unregister(i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i64, i64* %2, align 8
  store i64 %18, i64* %1, align 8
  br label %32

19:                                               ; preds = %9
  %20 = call i64 (...) @esp_event_loop_delete_default()
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  store i64 %29, i64* %1, align 8
  br label %32

30:                                               ; preds = %24, %19
  store i32 0, i32* @s_initialized, align 4
  store i32* null, i32** @s_event_handler_cb, align 8
  store i32* null, i32** @s_event_ctx, align 8
  %31 = load i64, i64* @ESP_OK, align 8
  store i64 %31, i64* %1, align 8
  br label %32

32:                                               ; preds = %30, %28, %17, %5
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_event_handler_unregister(i32, i32, i32) #1

declare dso_local i64 @esp_event_loop_delete_default(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
