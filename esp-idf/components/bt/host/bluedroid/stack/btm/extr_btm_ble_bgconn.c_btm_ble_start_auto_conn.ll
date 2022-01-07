; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_ble_start_auto_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_ble_start_auto_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 (...)* }

@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@BLE_ADDR_PUBLIC = common dso_local global i32 0, align 4
@BLE_CONN_IDLE = common dso_local global i64 0, align 8
@BTM_BLE_STATE_INIT = common dso_local global i32 0, align 4
@BTM_BLE_WL_INIT = common dso_local global i32 0, align 4
@BTM_BLE_RL_INIT = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_PARAM_UNDEF = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_SLOW_INT_1 = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_SLOW_WIN_1 = common dso_local global i64 0, align 8
@BTM_BLE_RL_IDLE = common dso_local global i64 0, align 8
@BLE_ADDR_TYPE_ID_BIT = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MIN_DEF = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MAX_DEF = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SLAVE_LATENCY_DEF = common dso_local global i32 0, align 4
@BTM_BLE_CONN_TIMEOUT_DEF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BLE_BG_CONN = common dso_local global i64 0, align 8
@BLE_CONN_CANCEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"conn_st = %d, not in auto conn state, cannot stop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_start_auto_conn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0), %struct.TYPE_8__** %3, align 8
  %10 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BLE_CONN_IDLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %108

25:                                               ; preds = %19
  %26 = call i64 (...) @background_connections_pending()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %25
  %29 = load i32, i32* @BTM_BLE_STATE_INIT, align 4
  %30 = call i64 @btm_ble_topology_check(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %108

32:                                               ; preds = %28
  %33 = load i32, i32* @BTM_BLE_WL_INIT, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = call i32 (...) @btm_execute_wl_dev_operation()
  %39 = load i32, i32* @BTM_BLE_RL_INIT, align 4
  %40 = call i32 @btm_ble_enable_resolving_list_for_platform(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BTM_BLE_SCAN_PARAM_UNDEF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i64, i64* @BTM_BLE_SCAN_SLOW_INT_1, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i64 [ %47, %46 ], [ %51, %48 ]
  store i64 %53, i64* %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BTM_BLE_SCAN_PARAM_UNDEF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @BTM_BLE_SCAN_SLOW_WIN_1, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 3), align 8
  %68 = load i64, i64* @BTM_BLE_RL_IDLE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = call %struct.TYPE_10__* (...) @controller_get_interface()
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64 (...)*, i64 (...)** %72, align 8
  %74 = call i64 (...) %73()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @BLE_ADDR_TYPE_ID_BIT, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @BLE_ADDR_TYPE_ID_BIT, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76, %70, %65
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BTM_BLE_CONN_INT_MIN_DEF, align 4
  %89 = load i32, i32* @BTM_BLE_CONN_INT_MAX_DEF, align 4
  %90 = load i32, i32* @BTM_BLE_CONN_SLAVE_LATENCY_DEF, align 4
  %91 = load i32, i32* @BTM_BLE_CONN_TIMEOUT_DEF, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @btsnd_hcic_ble_create_ll_conn(i64 %84, i64 %85, i32 1, i32 %86, i32 %93, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 0, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %83
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %5, align 8
  %98 = load i32, i32* @BTM_BLE_WL_INIT, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %107

104:                                              ; preds = %83
  %105 = load i64, i64* @BLE_BG_CONN, align 8
  %106 = call i32 @btm_ble_set_conn_st(i64 %105)
  br label %107

107:                                              ; preds = %104, %96
  br label %110

108:                                              ; preds = %28, %25, %19
  %109 = load i64, i64* @FALSE, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %108, %107
  br label %134

111:                                              ; preds = %1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BLE_BG_CONN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = call i32 (...) @btsnd_hcic_ble_create_conn_cancel()
  %119 = load i64, i64* @BLE_CONN_CANCEL, align 8
  %120 = call i32 @btm_ble_set_conn_st(i64 %119)
  %121 = load i32, i32* @BTM_BLE_WL_INIT, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %133

127:                                              ; preds = %111
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %127, %117
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @background_connections_pending(...) #2

declare dso_local i64 @btm_ble_topology_check(i32) #2

declare dso_local i32 @btm_execute_wl_dev_operation(...) #2

declare dso_local i32 @btm_ble_enable_resolving_list_for_platform(i32) #2

declare dso_local %struct.TYPE_10__* @controller_get_interface(...) #2

declare dso_local i32 @btsnd_hcic_ble_create_ll_conn(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @btm_ble_set_conn_st(i64) #2

declare dso_local i32 @btsnd_hcic_ble_create_conn_cancel(...) #2

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
