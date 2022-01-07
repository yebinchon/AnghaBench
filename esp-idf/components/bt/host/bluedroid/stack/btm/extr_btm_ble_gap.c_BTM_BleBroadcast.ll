; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleBroadcast.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleBroadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32*, i32, i32, i32, %struct.TYPE_8__, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 (...)* }

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_BLE_DISCOVER_EVT = common dso_local global i32 0, align 4
@BTM_BLE_NON_CONNECT_EVT = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_ADV_DISABLE = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADV_INT = common dso_local global i64 0, align 8
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8
@BTM_BLE_RL_ADV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_BLE_CONNECT_EVT = common dso_local global i32 0, align 4
@BTM_BLE_PC_ADV_TEST_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleBroadcast(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %10, i32* %6, align 4
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_10__** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @BTM_BLE_DISCOVER_EVT, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @BTM_BLE_NON_CONNECT_EVT, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = call %struct.TYPE_11__* (...) @controller_get_interface()
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %92

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTM_BLE_ADV_DISABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @BTM_BLE_GAP_ADV_INT, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  br label %61

59:                                               ; preds = %48
  %60 = load i64, i64* @BTM_BLE_GAP_ADV_INT, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i64 [ %58, %55 ], [ %60, %59 ]
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @btsnd_hcic_ble_write_adv_params(i32 %50, i32 %63, i32 %64, i32 %67, i32 %71, i32 %75, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %61
  %85 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %85, i32* %6, align 4
  br label %90

86:                                               ; preds = %61
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = call i32 (...) @btm_ble_start_adv()
  store i32 %91, i32* %6, align 4
  br label %112

92:                                               ; preds = %31, %28
  %93 = load i64, i64* %4, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = call i32 (...) @btm_ble_stop_adv()
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @BTM_BLE_RL_ADV, align 4
  %107 = load i32, i32* @TRUE, align 4
  %108 = call i32 @btm_ble_disable_resolving_list(i32 %106, i32 %107)
  br label %111

109:                                              ; preds = %95, %92
  %110 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %101
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %26
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_11__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_ble_write_adv_params(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btm_ble_start_adv(...) #1

declare dso_local i32 @btm_ble_stop_adv(...) #1

declare dso_local i32 @btm_ble_disable_resolving_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
