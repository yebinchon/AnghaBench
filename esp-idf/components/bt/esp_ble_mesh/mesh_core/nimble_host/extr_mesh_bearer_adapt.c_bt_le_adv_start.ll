; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_bt_le_adv_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_bt_le_adv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bt_mesh_adv_param = type { i32, i32, i32 }
%struct.bt_mesh_adv_data = type { i32 }
%struct.ble_gap_adv_params = type { i8*, i8*, i32, i32 }

@BLE_HS_ADV_MAX_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set_ad failed: err %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Advertising set failed: err %d\00", align 1
@BLE_MESH_ADV_OPT_CONNECTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Scan rsp failed: err %d\00", align 1
@BLE_GAP_CONN_MODE_UND = common dso_local global i8* null, align 8
@BLE_GAP_DISC_MODE_GEN = common dso_local global i8* null, align 8
@BLE_GAP_CONN_MODE_NON = common dso_local global i8* null, align 8
@BLE_GAP_DISC_MODE_NON = common dso_local global i8* null, align 8
@BLE_OWN_ADDR_PUBLIC = common dso_local global i32 0, align 4
@BLE_HS_FOREVER = common dso_local global i32 0, align 4
@gap_event_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Advertising start failed: err %d\00", align 1
@BLE_MESH_ADV_OPT_ONE_TIME = common dso_local global i32 0, align 4
@BLE_MESH_DEV_ADVERTISING = common dso_local global i32 0, align 4
@BLE_MESH_DEV_KEEP_ADVERTISING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@bt_mesh_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_le_adv_start(%struct.bt_mesh_adv_param* %0, %struct.bt_mesh_adv_data* %1, i64 %2, %struct.bt_mesh_adv_data* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bt_mesh_adv_param*, align 8
  %8 = alloca %struct.bt_mesh_adv_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bt_mesh_adv_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ble_gap_adv_params, align 8
  %17 = alloca i32, align 4
  store %struct.bt_mesh_adv_param* %0, %struct.bt_mesh_adv_param** %7, align 8
  store %struct.bt_mesh_adv_data* %1, %struct.bt_mesh_adv_data** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bt_mesh_adv_data* %3, %struct.bt_mesh_adv_data** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* @BLE_HS_ADV_MAX_SZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @set_ad(%struct.bt_mesh_adv_data* %22, i64 %23, i64* %21, i64* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

31:                                               ; preds = %5
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @ble_gap_adv_set_data(i64* %21, i64 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

40:                                               ; preds = %31
  %41 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %10, align 8
  %42 = icmp ne %struct.bt_mesh_adv_data* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %7, align 8
  %45 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BLE_MESH_ADV_OPT_CONNECTABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  store i64 0, i64* %14, align 8
  %51 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @set_ad(%struct.bt_mesh_adv_data* %51, i64 %52, i64* %21, i64* %14)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

60:                                               ; preds = %50
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @ble_gap_adv_rsp_set_data(i64* %21, i64 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %43, %40
  %71 = call i32 @memset(%struct.ble_gap_adv_params* %16, i32 0, i32 24)
  %72 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %7, align 8
  %73 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %7, align 8
  %77 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %7, align 8
  %81 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BLE_MESH_ADV_OPT_CONNECTABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load i8*, i8** @BLE_GAP_CONN_MODE_UND, align 8
  %88 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** @BLE_GAP_DISC_MODE_GEN, align 8
  %90 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  br label %105

91:                                               ; preds = %70
  %92 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %10, align 8
  %93 = icmp ne %struct.bt_mesh_adv_data* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8*, i8** @BLE_GAP_CONN_MODE_NON, align 8
  %96 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** @BLE_GAP_DISC_MODE_GEN, align 8
  %98 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  br label %104

99:                                               ; preds = %91
  %100 = load i8*, i8** @BLE_GAP_CONN_MODE_NON, align 8
  %101 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** @BLE_GAP_DISC_MODE_NON, align 8
  %103 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %16, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %86
  %106 = load i32, i32* @BLE_OWN_ADDR_PUBLIC, align 4
  %107 = load i32, i32* @BLE_HS_FOREVER, align 4
  %108 = load i32, i32* @gap_event_cb, align 4
  %109 = call i32 @ble_gap_adv_start(i32 %106, i32* null, i32 %107, %struct.ble_gap_adv_params* %16, i32 %108, i32* null)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

116:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %117

117:                                              ; preds = %116, %112, %65, %56, %36, %27
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_ad(%struct.bt_mesh_adv_data*, i64, i64*, i64*) #2

declare dso_local i32 @BT_ERR(i8*, i32) #2

declare dso_local i32 @ble_gap_adv_set_data(i64*, i64) #2

declare dso_local i32 @ble_gap_adv_rsp_set_data(i64*, i64) #2

declare dso_local i32 @memset(%struct.ble_gap_adv_params*, i32, i32) #2

declare dso_local i32 @ble_gap_adv_start(i32, i32*, i32, %struct.ble_gap_adv_params*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
