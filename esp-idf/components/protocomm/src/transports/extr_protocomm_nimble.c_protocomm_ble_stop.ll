; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_protocomm_ble_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_protocomm_ble_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"protocomm_ble_stop called here...\00", align 1
@protoble_internal = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Error in stopping advertisement with err code = %d\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"esp_nimble_hci_and_controller_deinit() failed with error: %d\00", align 1
@ble_cfg_p = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocomm_ble_stop(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protoble_internal, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protoble_internal, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load i64, i64* @ESP_OK, align 8
  store i64 %20, i64* %4, align 8
  %21 = call i64 (...) @ble_gap_adv_stop()
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @TAG, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = call i64 (...) @nimble_port_stop()
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = call i32 (...) @nimble_port_deinit()
  %34 = call i64 (...) @esp_nimble_hci_and_controller_deinit()
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @TAG, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* @ble_cfg_p, align 4
  %45 = call i32 @free_gatt_ble_misc_memory(i32 %44)
  %46 = call i32 (...) @protocomm_ble_cleanup()
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %50

48:                                               ; preds = %13, %10, %1
  %49 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @ble_gap_adv_stop(...) #1

declare dso_local i64 @nimble_port_stop(...) #1

declare dso_local i32 @nimble_port_deinit(...) #1

declare dso_local i64 @esp_nimble_hci_and_controller_deinit(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i32 @free_gatt_ble_misc_memory(i32) #1

declare dso_local i32 @protocomm_ble_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
