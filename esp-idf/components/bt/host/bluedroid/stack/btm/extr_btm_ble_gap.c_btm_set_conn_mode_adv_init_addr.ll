; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_set_conn_mode_adv_init_addr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_set_conn_mode_adv_init_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }

@BTM_SEC_MAX_DEVICE_RECORDS = common dso_local global i64 0, align 8
@BTM_BLE_NON_CONNECTABLE = common dso_local global i64 0, align 8
@BTM_BLE_DISCOVER_EVT = common dso_local global i64 0, align 8
@BTM_BLE_NON_CONNECT_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_LO_DUTY_DIR_EVT = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BTM_PRIVACY_1_2 = common dso_local global i64 0, align 8
@BTM_PRIVACY_MIXED = common dso_local global i64 0, align 8
@BTM_RESOLVING_LIST_BIT = common dso_local global i32 0, align 4
@BTM_BLE_RL_ADV = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BLE_ADDR_RANDOM_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AP_SCAN_CONN_ALL = common dso_local global i64 0, align 8
@BTM_SEC_IN_USE = common dso_local global i32 0, align 4
@BLE_ADDR_RANDOM = common dso_local global i32 0, align 4
@BTM_PRIVACY_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, i32*, i32*)* @btm_set_conn_mode_adv_init_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_18__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @BTM_SEC_MAX_DEVICE_RECORDS, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTM_BLE_NON_CONNECTABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @BTM_BLE_DISCOVER_EVT, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @BTM_BLE_NON_CONNECT_EVT, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  br label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @BTM_BLE_CONNECT_EVT, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @BTM_BLE_CONNECT_EVT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %113

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BTM_BLE_CONNECT_DIR_EVT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BTM_BLE_CONNECT_LO_DUTY_DIR_EVT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %112

52:                                               ; preds = %46, %37
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %54 = load i64, i64* @BTM_PRIVACY_1_2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %58 = load i64, i64* @BTM_PRIVACY_MIXED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %56, %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_17__* @btm_find_or_alloc_dev(i32 %64)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %12, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BTM_RESOLVING_LIST_BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %67
  %76 = load i32, i32* @BTM_BLE_RL_ADV, align 4
  %77 = call i32 @btm_ble_enable_resolving_list(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BD_ADDR_LEN, align 4
  %84 = call i32 @memcpy(i32 %78, i32 %82, i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @BLE_ADDR_RANDOM_ID, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %5, align 8
  br label %193

93:                                               ; preds = %67, %60
  %94 = load i32, i32* @BTM_BLE_RL_ADV, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @btm_ble_disable_resolving_list(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %56
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BD_ADDR_LEN, align 4
  %110 = call i32 @memcpy(i32 %104, i32 %108, i32 %109)
  %111 = load i64, i64* %10, align 8
  store i64 %111, i64* %5, align 8
  br label %193

112:                                              ; preds = %46
  br label %113

113:                                              ; preds = %112, %32
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %115 = load i64, i64* @BTM_PRIVACY_1_2, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AP_SCAN_CONN_ALL, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %117, %113
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %125 = load i64, i64* @BTM_PRIVACY_MIXED, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %183

127:                                              ; preds = %123, %117
  store i64 0, i64* %11, align 8
  br label %128

128:                                              ; preds = %169, %127
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @BTM_SEC_MAX_DEVICE_RECORDS, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %172

132:                                              ; preds = %128
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1), align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BTM_SEC_IN_USE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %132
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1), align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BTM_RESOLVING_LIST_BIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %141
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1), align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BD_ADDR_LEN, align 4
  %160 = call i32 @memcpy(i32 %152, i32 %158, i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1), align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %8, align 8
  store i32 %166, i32* %167, align 4
  br label %172

168:                                              ; preds = %141, %132
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %11, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %11, align 8
  br label %128

172:                                              ; preds = %151, %128
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* @BTM_SEC_MAX_DEVICE_RECORDS, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* @BLE_ADDR_RANDOM_ID, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  br label %182

179:                                              ; preds = %172
  %180 = load i32, i32* @BLE_ADDR_RANDOM, align 4
  %181 = load i32*, i32** %9, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %176
  br label %191

183:                                              ; preds = %123
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %185 = load i64, i64* @BTM_PRIVACY_NONE, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* @BLE_ADDR_RANDOM, align 4
  %189 = load i32*, i32** %9, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %183
  br label %191

191:                                              ; preds = %190, %182
  %192 = load i64, i64* %10, align 8
  store i64 %192, i64* %5, align 8
  br label %193

193:                                              ; preds = %191, %98, %75
  %194 = load i64, i64* %5, align 8
  ret i64 %194
}

declare dso_local %struct.TYPE_17__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @btm_ble_enable_resolving_list(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btm_ble_disable_resolving_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
