; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ESP_BT_CONTROLLER_STATUS_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Controller not initialised\0A\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@bd_already_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bluedroid already initialised\0A\00", align 1
@BTC_MAIN_INIT_FUTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Bluedroid initialise failed\0A\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_MAIN_INIT = common dso_local global i32 0, align 4
@BTC_MAIN_ACT_INIT = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@FUTURE_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bluedroid_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32**, align 8
  %4 = call i64 (...) @esp_bt_controller_get_status()
  %5 = load i64, i64* @ESP_BT_CONTROLLER_STATUS_ENABLED, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %9, i32* %1, align 4
  br label %52

10:                                               ; preds = %0
  %11 = load i32, i32* @bd_already_init, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %15, i32* %1, align 4
  br label %52

16:                                               ; preds = %10
  %17 = call i32 (...) @btc_init()
  %18 = load i32, i32* @BTC_MAIN_INIT_FUTURE, align 4
  %19 = call i32** @btc_main_get_future_p(i32 %18)
  store i32** %19, i32*** %3, align 8
  %20 = call i32* (...) @future_new()
  %21 = load i32**, i32*** %3, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i32**, i32*** %3, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %27, i32* %1, align 4
  br label %52

28:                                               ; preds = %16
  %29 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BTC_PID_MAIN_INIT, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @BTC_MAIN_ACT_INIT, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = call i64 @btc_transfer_context(%struct.TYPE_3__* %2, i32* null, i32 0, i32* null)
  %36 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ESP_FAIL, align 4
  store i32 %40, i32* %1, align 4
  br label %52

41:                                               ; preds = %28
  %42 = load i32**, i32*** %3, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @future_await(i32* %43)
  %45 = load i64, i64* @FUTURE_FAIL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ESP_FAIL, align 4
  store i32 %49, i32* %1, align 4
  br label %52

50:                                               ; preds = %41
  store i32 1, i32* @bd_already_init, align 4
  %51 = load i32, i32* @ESP_OK, align 4
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %47, %38, %25, %13, %7
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i64 @esp_bt_controller_get_status(...) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @btc_init(...) #1

declare dso_local i32** @btc_main_get_future_p(i32) #1

declare dso_local i32* @future_new(...) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i64 @future_await(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
