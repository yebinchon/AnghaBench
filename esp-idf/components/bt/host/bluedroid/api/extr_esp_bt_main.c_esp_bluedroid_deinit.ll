; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@bd_already_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bluedroid already de-initialised\0A\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@bd_already_enable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Bludroid already enabled, do disable first\0A\00", align 1
@BTC_MAIN_DEINIT_FUTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Bluedroid de-initialise failed\0A\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_MAIN_INIT = common dso_local global i32 0, align 4
@BTC_MAIN_ACT_DEINIT = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@FUTURE_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bluedroid_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32**, align 8
  %4 = load i32, i32* @bd_already_init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %8, i32* %1, align 4
  br label %51

9:                                                ; preds = %0
  %10 = load i64, i64* @bd_already_enable, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %14, i32* %1, align 4
  br label %51

15:                                               ; preds = %9
  %16 = load i32, i32* @BTC_MAIN_DEINIT_FUTURE, align 4
  %17 = call i32** @btc_main_get_future_p(i32 %16)
  store i32** %17, i32*** %3, align 8
  %18 = call i32* (...) @future_new()
  %19 = load i32**, i32*** %3, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32**, i32*** %3, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %25, i32* %1, align 4
  br label %51

26:                                               ; preds = %15
  %27 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BTC_PID_MAIN_INIT, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BTC_MAIN_ACT_DEINIT, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i64 @btc_transfer_context(%struct.TYPE_3__* %2, i32* null, i32 0, i32* null)
  %34 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ESP_FAIL, align 4
  store i32 %38, i32* %1, align 4
  br label %51

39:                                               ; preds = %26
  %40 = load i32**, i32*** %3, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @future_await(i32* %41)
  %43 = load i64, i64* @FUTURE_FAIL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ESP_FAIL, align 4
  store i32 %47, i32* %1, align 4
  br label %51

48:                                               ; preds = %39
  %49 = call i32 (...) @btc_deinit()
  store i32 0, i32* @bd_already_init, align 4
  %50 = load i32, i32* @ESP_OK, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %48, %45, %36, %23, %12, %6
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32** @btc_main_get_future_p(i32) #1

declare dso_local i32* @future_new(...) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i64 @future_await(i32*) #1

declare dso_local i32 @btc_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
