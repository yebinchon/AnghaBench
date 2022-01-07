; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_loop_legacy.c_esp_event_loop_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_loop_legacy.c_esp_event_loop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_initialized = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"system event loop already initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@SYSTEM_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@esp_event_post_to_user = common dso_local global i32 0, align 4
@s_event_handler_cb = common dso_local global i32 0, align 4
@s_event_ctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_event_loop_init(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @s_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %12, i64* %3, align 8
  br label %38

13:                                               ; preds = %2
  %14 = call i64 (...) @esp_event_loop_create_default()
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %38

24:                                               ; preds = %18, %13
  %25 = load i32, i32* @SYSTEM_EVENT, align 4
  %26 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %27 = load i32, i32* @esp_event_post_to_user, align 4
  %28 = call i64 @esp_event_handler_register(i32 %25, i32 %26, i32 %27, i32* null)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %38

34:                                               ; preds = %24
  store i32 1, i32* @s_initialized, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* @s_event_handler_cb, align 4
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** @s_event_ctx, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %34, %32, %22, %9
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_event_loop_create_default(...) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
