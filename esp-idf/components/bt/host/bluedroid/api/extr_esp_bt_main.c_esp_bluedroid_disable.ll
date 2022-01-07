; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_main.c_esp_bluedroid_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@bd_already_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Bluedroid already disabled\0A\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_MAIN_DISABLE_FUTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bluedroid disable failed\0A\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_MAIN_INIT = common dso_local global i32 0, align 4
@BTC_MAIN_ACT_DISABLE = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@FUTURE_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bluedroid_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32**, align 8
  %4 = load i32, i32* @bd_already_enable, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %8, i32* %1, align 4
  br label %44

9:                                                ; preds = %0
  %10 = load i32, i32* @BTC_MAIN_DISABLE_FUTURE, align 4
  %11 = call i32** @btc_main_get_future_p(i32 %10)
  store i32** %11, i32*** %3, align 8
  %12 = call i32* (...) @future_new()
  %13 = load i32**, i32*** %3, align 8
  store i32* %12, i32** %13, align 8
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %19, i32* %1, align 4
  br label %44

20:                                               ; preds = %9
  %21 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @BTC_PID_MAIN_INIT, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @BTC_MAIN_ACT_DISABLE, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = call i64 @btc_transfer_context(%struct.TYPE_3__* %2, i32* null, i32 0, i32* null)
  %28 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ESP_FAIL, align 4
  store i32 %32, i32* %1, align 4
  br label %44

33:                                               ; preds = %20
  %34 = load i32**, i32*** %3, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @future_await(i32* %35)
  %37 = load i64, i64* @FUTURE_FAIL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ESP_FAIL, align 4
  store i32 %41, i32* %1, align 4
  br label %44

42:                                               ; preds = %33
  store i32 0, i32* @bd_already_enable, align 4
  %43 = load i32, i32* @ESP_OK, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %39, %30, %17, %6
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @LOG_ERROR(i8*) #1

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
