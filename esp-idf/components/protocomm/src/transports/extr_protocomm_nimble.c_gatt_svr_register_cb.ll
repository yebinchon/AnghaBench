; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_register_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_register_ctxt = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_14__* }

@BLE_UUID_STR_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"registering service %s with handle=%d TYPE =%d\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"registering characteristic %s with def_handle=%d val_handle=%d , TYPE = %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"registering descriptor %s with handle=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_svr_register_cb(%struct.ble_gatt_register_ctxt* %0, i8* %1) #0 {
  %3 = alloca %struct.ble_gatt_register_ctxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ble_gatt_register_ctxt* %0, %struct.ble_gatt_register_ctxt** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @BLE_UUID_STR_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %76 [
    i32 128, label %14
    i32 130, label %36
    i32 129, label %62
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @TAG, align 4
  %16 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = call i32 @ble_uuid_to_str(%struct.TYPE_14__* %21, i8* %10)
  %23 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %28 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %34)
  br label %78

36:                                               ; preds = %2
  %37 = load i32, i32* @TAG, align 4
  %38 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %39 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = call i32 @ble_uuid_to_str(%struct.TYPE_14__* %43, i8* %10)
  %45 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %46 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %50 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %54 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %37, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48, i32 %52, i32 %60)
  br label %78

62:                                               ; preds = %2
  %63 = load i32, i32* @TAG, align 4
  %64 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %65 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = call i32 @ble_uuid_to_str(%struct.TYPE_14__* %69, i8* %10)
  %71 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %72 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74)
  br label %78

76:                                               ; preds = %2
  %77 = call i32 @assert(i32 0)
  br label %78

78:                                               ; preds = %76, %62, %36, %14
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ble_uuid_to_str(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
