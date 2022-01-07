; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_set_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_set_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_adv_data = type { i32, i32, i32 }
%struct.bt_mesh_hci_cp_set_adv_data = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BLE_MESH_HCI_OP_SET_ADV_DATA = common dso_local global i64 0, align 8
@BLE_MESH_HCI_OP_SET_SCAN_RSP_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.bt_mesh_adv_data*, i64)* @set_adv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_adv_data(i64 %0, %struct.bt_mesh_adv_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.bt_mesh_adv_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bt_mesh_hci_cp_set_adv_data, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.bt_mesh_adv_data* %1, %struct.bt_mesh_adv_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = bitcast %struct.bt_mesh_hci_cp_set_adv_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %12 = icmp eq %struct.bt_mesh_adv_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %121

17:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %94, %17
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %26, i64 %28
  %30 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %25, %31
  %33 = add nsw i32 %32, 2
  %34 = icmp sgt i32 %33, 31
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %121

38:                                               ; preds = %23
  %39 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %45, i32* %52, align 4
  %53 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %53, i64 %55
  %57 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %72, i64 %74
  %76 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %78, i64 %80
  %82 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(i32* %71, i32 %77, i32 %83)
  %85 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %85, i64 %87
  %89 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %38
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %18

97:                                               ; preds = %18
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @BLE_MESH_HCI_OP_SET_ADV_DATA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @BTM_BleWriteAdvDataRaw(i32* %103, i32 %105)
  %107 = call i32 @BLE_MESH_BTM_CHECK_STATUS(i32 %106)
  br label %120

108:                                              ; preds = %97
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @BLE_MESH_HCI_OP_SET_SCAN_RSP_DATA, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds %struct.bt_mesh_hci_cp_set_adv_data, %struct.bt_mesh_hci_cp_set_adv_data* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BTM_BleWriteScanRspRaw(i32* %114, i32 %116)
  %118 = call i32 @BLE_MESH_BTM_CHECK_STATUS(i32 %117)
  br label %119

119:                                              ; preds = %112, %108
  br label %120

120:                                              ; preds = %119, %101
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %35, %16
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @BLE_MESH_BTM_CHECK_STATUS(i32) #2

declare dso_local i32 @BTM_BleWriteAdvDataRaw(i32*, i32) #2

declare dso_local i32 @BTM_BleWriteScanRspRaw(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
