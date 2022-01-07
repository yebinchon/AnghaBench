; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_ble_start_advertising.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_ble_start_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ESP_BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_ADV_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_INT_MAX = common dso_local global i32 0, align 4
@ESP_BT_STATUS_PARM_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid advertisting interval parameters.\0A\00", align 1
@ADV_TYPE_IND = common dso_local global i64 0, align 8
@ADV_TYPE_DIRECT_IND_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid advertisting type parameters.\0A\00", align 1
@ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY = common dso_local global i64 0, align 8
@ADV_FILTER_ALLOW_SCAN_WLST_CON_WLST = common dso_local global i64 0, align 8
@ADV_CHNL_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid advertisting channel map parameters.\0A\00", align 1
@BLE_ADDR_TYPE_PUBLIC = common dso_local global i32 0, align 4
@BLE_ADDR_TYPE_RANDOM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Invalid advertisting peer address type parameters.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"API_Ble_AppStartAdvertising\0A\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32 (i64)*)* @btc_ble_start_advertising to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_ble_start_advertising(%struct.TYPE_6__* %0, i32 (i64)* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32 (i64)*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 (i64)* %1, i32 (i64)** %4, align 8
  %7 = load i64, i64* @ESP_BT_STATUS_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %12 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %13 = call i32 @BLE_ISVALID_PARAM(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %20 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %21 = call i32 @BLE_ISVALID_PARAM(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15, %2
  %24 = load i64, i64* @ESP_BT_STATUS_PARM_INVALID, align 8
  store i64 %24, i64* %6, align 8
  %25 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADV_TYPE_IND, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADV_TYPE_DIRECT_IND_LOW, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26
  %39 = load i64, i64* @ESP_BT_STATUS_PARM_INVALID, align 8
  store i64 %39, i64* %6, align 8
  %40 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ADV_FILTER_ALLOW_SCAN_WLST_CON_WLST, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i64, i64* @ESP_BT_STATUS_PARM_INVALID, align 8
  store i64 %54, i64* %6, align 8
  %55 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ADV_CHNL_ALL, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ADV_CHNL_ALL, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %56
  %70 = load i64, i64* @ESP_BT_STATUS_PARM_INVALID, align 8
  store i64 %70, i64* %6, align 8
  %71 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BLE_ADDR_TYPE_PUBLIC, align 4
  %77 = load i32, i32* @BLE_ADDR_TYPE_RANDOM, align 4
  %78 = call i32 @BLE_ISVALID_PARAM(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i64, i64* @ESP_BT_STATUS_PARM_INVALID, align 8
  store i64 %81, i64* %6, align 8
  %82 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @ESP_BT_STATUS_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32 (i64)*, i32 (i64)** %4, align 8
  %89 = icmp ne i32 (i64)* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32 (i64)*, i32 (i64)** %4, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 %91(i64 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %128

95:                                               ; preds = %83
  %96 = call i32 @BTC_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %103 = call i32 @memcpy(i32 %98, i32 %101, i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32 (i64)*, i32 (i64)** %4, align 8
  %127 = call i32 @BTA_DmSetBleAdvParamsAll(i32 %110, i32 %113, i64 %116, i32 %119, i32 %122, i64 %125, %struct.TYPE_5__* %5, i32 (i64)* %126)
  br label %128

128:                                              ; preds = %95, %94
  ret void
}

declare dso_local i32 @BLE_ISVALID_PARAM(i32, i32, i32) #1

declare dso_local i32 @BTC_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTC_TRACE_DEBUG(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BTA_DmSetBleAdvParamsAll(i32, i32, i64, i32, i32, i64, %struct.TYPE_5__*, i32 (i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
