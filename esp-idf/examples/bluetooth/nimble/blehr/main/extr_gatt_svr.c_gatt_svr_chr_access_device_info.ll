; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_gatt_svr.c_gatt_svr_chr_access_device_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_gatt_svr.c_gatt_svr_chr_access_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_access_ctxt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GATT_MODEL_NUMBER_UUID = common dso_local global i64 0, align 8
@model_num = common dso_local global i32 0, align 4
@BLE_ATT_ERR_INSUFFICIENT_RES = common dso_local global i32 0, align 4
@GATT_MANUFACTURER_NAME_UUID = common dso_local global i64 0, align 8
@manuf_name = common dso_local global i32 0, align 4
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.ble_gatt_access_ctxt*, i8*)* @gatt_svr_chr_access_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_chr_access_device_info(i64 %0, i64 %1, %struct.ble_gatt_access_ctxt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ble_gatt_access_ctxt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ble_gatt_access_ctxt* %2, %struct.ble_gatt_access_ctxt** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %13 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ble_uuid_u16(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @GATT_MODEL_NUMBER_UUID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %23 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @model_num, align 4
  %26 = load i32, i32* @model_num, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = call i32 @os_mbuf_append(i32 %24, i32 %25, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @GATT_MANUFACTURER_NAME_UUID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %42 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @manuf_name, align 4
  %45 = load i32, i32* @manuf_name, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32 @os_mbuf_append(i32 %43, i32 %44, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %36
  %56 = call i32 @assert(i32 0)
  %57 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %34
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @ble_uuid_u16(i32) #1

declare dso_local i32 @os_mbuf_append(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
