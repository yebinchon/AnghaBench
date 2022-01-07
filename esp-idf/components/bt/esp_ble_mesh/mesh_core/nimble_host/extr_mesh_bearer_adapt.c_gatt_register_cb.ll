; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_gatt_register_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_gatt_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_register_ctxt = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLE_GATT_REGISTER_OP_SVC = common dso_local global i64 0, align 8
@BT_UUID_MESH_PROXY_VAL = common dso_local global i32 0, align 4
@proxy_svc_start_handle = common dso_local global i32 0, align 4
@BT_UUID_MESH_PROV_VAL = common dso_local global i32 0, align 4
@prov_svc_start_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_register_cb(%struct.ble_gatt_register_ctxt* %0, i8* %1) #0 {
  %3 = alloca %struct.ble_gatt_register_ctxt*, align 8
  %4 = alloca i8*, align 8
  store %struct.ble_gatt_register_ctxt* %0, %struct.ble_gatt_register_ctxt** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BLE_GATT_REGISTER_OP_SVC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BT_UUID_MESH_PROXY_VAL, align 4
  %18 = call i32 @BLE_UUID16_DECLARE(i32 %17)
  %19 = call i64 @ble_uuid_cmp(i32 %16, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %23 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* @proxy_svc_start_handle, align 4
  br label %43

26:                                               ; preds = %10
  %27 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %28 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BT_UUID_MESH_PROV_VAL, align 4
  %34 = call i32 @BLE_UUID16_DECLARE(i32 %33)
  %35 = call i64 @ble_uuid_cmp(i32 %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.ble_gatt_register_ctxt*, %struct.ble_gatt_register_ctxt** %3, align 8
  %39 = getelementptr inbounds %struct.ble_gatt_register_ctxt, %struct.ble_gatt_register_ctxt* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @prov_svc_start_handle, align 4
  br label %42

42:                                               ; preds = %37, %26
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i64 @ble_uuid_cmp(i32, i32) #1

declare dso_local i32 @BLE_UUID16_DECLARE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
