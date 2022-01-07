; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/simple_ble/extr_simple_ble.c_simple_ble_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/simple_ble/extr_simple_ble.c_simple_ble_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Free mem at start of simple_ble_stop %d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"esp_bluedroid_disable called successfully\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"esp_bluedroid_deinit called successfully\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"esp_bt_controller_disable called successfully\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"esp_bt_controller_deinit called successfully\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Free mem at end of simple_ble_stop %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simple_ble_stop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @TAG, align 4
  %4 = call i32 (...) @esp_get_free_heap_size()
  %5 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i64 (...) @esp_bluedroid_disable()
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @ESP_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @ESP_FAIL, align 8
  store i64 %11, i64* %1, align 8
  br label %46

12:                                               ; preds = %0
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i64 (...) @esp_bluedroid_deinit()
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* %1, align 8
  br label %46

21:                                               ; preds = %12
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i64 (...) @esp_bt_controller_disable()
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @ESP_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @ESP_FAIL, align 8
  store i64 %29, i64* %1, align 8
  br label %46

30:                                               ; preds = %21
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i64 (...) @esp_bt_controller_deinit()
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @ESP_FAIL, align 8
  store i64 %38, i64* %1, align 8
  br label %46

39:                                               ; preds = %30
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 (...) @esp_get_free_heap_size()
  %44 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @ESP_OK, align 8
  store i64 %45, i64* %1, align 8
  br label %46

46:                                               ; preds = %39, %37, %28, %19, %10
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local i64 @esp_bluedroid_disable(...) #1

declare dso_local i64 @esp_bluedroid_deinit(...) #1

declare dso_local i64 @esp_bt_controller_disable(...) #1

declare dso_local i64 @esp_bt_controller_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
