; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_register_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_register_ctxt = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@BLE_UUID_STR_LEN = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"registered service %s with handle=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"registering characteristic %s with def_handle=%d val_handle=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"registering descriptor %s with handle=%d\0A\00", align 1

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
  switch i32 %13, label %60 [
    i32 128, label %14
    i32 130, label %28
    i32 129, label %46
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG, align 4
  %16 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ble_uuid_to_str(i32 %21, i8* %10)
  %23 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i32, i32, ...) @MODLOG_DFLT(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  br label %62

28:                                               ; preds = %2
  %29 = load i32, i32* @DEBUG, align 4
  %30 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %31 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ble_uuid_to_str(i32 %35, i8* %10)
  %37 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %38 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, i32, i32, ...) @MODLOG_DFLT(i32 %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %44)
  br label %62

46:                                               ; preds = %2
  %47 = load i32, i32* @DEBUG, align 4
  %48 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %49 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ble_uuid_to_str(i32 %53, i8* %10)
  %55 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %56 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, i32, i32, ...) @MODLOG_DFLT(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %58)
  br label %62

60:                                               ; preds = %2
  %61 = call i32 @assert(i32 0)
  br label %62

62:                                               ; preds = %60, %46, %28, %14
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ble_uuid_to_str(i32, i8*) #2

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
