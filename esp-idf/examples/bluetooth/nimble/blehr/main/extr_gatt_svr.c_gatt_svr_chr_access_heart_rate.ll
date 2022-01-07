; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_gatt_svr.c_gatt_svr_chr_access_heart_rate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_gatt_svr.c_gatt_svr_chr_access_heart_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_access_ctxt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@gatt_svr_chr_access_heart_rate.body_sens_loc = internal global i32 1, align 4
@GATT_HRS_BODY_SENSOR_LOC_UUID = common dso_local global i64 0, align 8
@BLE_ATT_ERR_INSUFFICIENT_RES = common dso_local global i32 0, align 4
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.ble_gatt_access_ctxt*, i8*)* @gatt_svr_chr_access_heart_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_chr_access_heart_rate(i64 %0, i64 %1, %struct.ble_gatt_access_ctxt* %2, i8* %3) #0 {
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
  %19 = load i64, i64* @GATT_HRS_BODY_SENSOR_LOC_UUID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %23 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @os_mbuf_append(i32 %24, i32* @gatt_svr_chr_access_heart_rate.body_sens_loc, i32 4)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = call i32 @assert(i32 0)
  %35 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @ble_uuid_u16(i32) #1

declare dso_local i32 @os_mbuf_append(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
