; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_init_direct_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_init_direct_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i64 }

@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BLE_ADDR_PUBLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unknown device, can not initate connection\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_PARAM_UNDEF = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_FAST_INT = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_FAST_WIN = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"initate direct connection fail, topology limitation\00", align 1
@BTM_BLE_CONN_PARAM_UNDEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_INT_MIN_DEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_INT_MAX_DEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_SLAVE_LATENCY_DEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_TIMEOUT_DEF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"initate direct connection fail, no resources\00", align 1
@LST_CONNECTING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_BLE_LINK_CONNECT_TOUT = common dso_local global i32 0, align 4
@BLE_DIR_CONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cble_init_direct_conn(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_18__* @btm_find_or_alloc_dev(i32 %13)
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), %struct.TYPE_19__** %5, align 8
  %15 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BTM_BLE_SCAN_PARAM_UNDEF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @BTM_BLE_SCAN_FAST_INT, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  store i64 %35, i64* %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BTM_BLE_SCAN_PARAM_UNDEF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @BTM_BLE_SCAN_FAST_WIN, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i64 [ %42, %41 ], [ %46, %43 ]
  store i64 %48, i64* %7, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BD_ADDR_LEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* @BTM_BLE_STATE_INIT, align 4
  %59 = call i32 @btm_ble_topology_check(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %47
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = call i32 @l2cu_release_lcb(%struct.TYPE_17__* %62)
  %64 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %159

66:                                               ; preds = %47
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @FALSE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  br label %86

84:                                               ; preds = %66
  %85 = load i64, i64* @BTM_BLE_CONN_INT_MIN_DEF, align 8
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i64 [ %83, %79 ], [ %85, %84 ]
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  br label %101

99:                                               ; preds = %86
  %100 = load i64, i64* @BTM_BLE_CONN_INT_MAX_DEF, align 8
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi i64 [ %98, %94 ], [ %100, %99 ]
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  br label %116

114:                                              ; preds = %101
  %115 = load i64, i64* @BTM_BLE_CONN_SLAVE_LATENCY_DEF, align 8
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i64 [ %113, %109 ], [ %115, %114 ]
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  br label %131

129:                                              ; preds = %116
  %130 = load i64, i64* @BTM_BLE_CONN_TIMEOUT_DEF, align 8
  br label %131

131:                                              ; preds = %129, %124
  %132 = phi i64 [ %128, %124 ], [ %130, %129 ]
  %133 = call i32 @btsnd_hcic_ble_create_ll_conn(i64 %67, i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i64 %87, i64 %102, i64 %117, i64 %132, i32 0, i32 0)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = call i32 @l2cu_release_lcb(%struct.TYPE_17__* %136)
  %138 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %2, align 4
  br label %159

140:                                              ; preds = %131
  %141 = load i32, i32* @LST_CONNECTING, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @l2cb, i32 0, i32 1), align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @l2cb, i32 0, i32 0), align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BD_ADDR_LEN, align 4
  %150 = call i32 @memcpy(i32 %145, i32 %148, i32 %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %154 = load i32, i32* @L2CAP_BLE_LINK_CONNECT_TOUT, align 4
  %155 = call i32 @btu_start_timer(i32* %152, i32 %153, i32 %154)
  %156 = load i32, i32* @BLE_DIR_CONN, align 4
  %157 = call i32 @btm_ble_set_conn_st(i32 %156)
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %140, %135, %61, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_18__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btm_ble_topology_check(i32) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_17__*) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @btsnd_hcic_ble_create_ll_conn(i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @btm_ble_set_conn_st(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
