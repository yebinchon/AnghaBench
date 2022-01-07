; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_scanner_conn_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_scanner_conn_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [103 x i8] c"l2cble_scanner_conn_comp: HANDLE=%d addr_type=%d conn_interval=%d slave_latency=%d supervision_tout=%d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@HCI_ERR_NO_CONNECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"l2cble_scanner_conn_comp - failed to allocate LCB\00", align 1
@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"l2cble_scanner_conn_comp - LCB but no CCB\00", align 1
@LST_CONNECTING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"L2CAP got BLE scanner conn_comp in bad state: %d\00", align 1
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@L2C_BLE_NOT_DEFAULT_PARAM = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MIN = common dso_local global i64 0, align 8
@BTM_BLE_CONN_INT_MAX = common dso_local global i64 0, align 8
@BTM_BLE_CONN_LATENCY_MAX = common dso_local global i64 0, align 8
@BTM_BLE_CONN_SUP_TOUT_MIN = common dso_local global i64 0, align 8
@BTM_BLE_CONN_SUP_TOUT_MAX = common dso_local global i64 0, align 8
@BTM_BLE_CONN_PARAM_UNDEF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [99 x i8] c"upd_ll_conn_params: HANDLE=%d min_conn_int=%d max_conn_int=%d slave_latency=%d supervision_tout=%d\00", align 1
@L2CAP_FIXED_CHNL_ATT_BIT = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_BLE_SIG_BIT = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_SMP_BIT = common dso_local global i32 0, align 4
@BLE_CONN_IDLE = common dso_local global i32 0, align 4
@BTM_BLE_RL_INIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cble_scanner_conn_comp(i64 %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_13__* @btm_find_or_alloc_dev(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %14, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18, i64 %19, i64 %20, i64 %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 1), align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %26 = call %struct.TYPE_12__* @l2cu_find_lcb_by_bd_addr(i32 %24, i32 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %13, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %33 = call %struct.TYPE_12__* @l2cu_allocate_lcb(i32 %30, i32 %31, i32 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %13, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @HCI_ERR_NO_CONNECTION, align 4
  %39 = call i32 @btm_sec_disconnect(i64 %37, i32 %38)
  %40 = call i32 (i8*, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %275

41:                                               ; preds = %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = load i64, i64* @L2CAP_ATT_CID, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 0), align 8
  %45 = load i64, i64* @L2CAP_ATT_CID, align 8
  %46 = load i64, i64* @L2CAP_FIRST_FIXED_CHNL, align 8
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i32 @l2cu_initialize_fixed_ccb(%struct.TYPE_12__* %42, i64 %43, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @HCI_ERR_NO_CONNECTION, align 4
  %55 = call i32 @btm_sec_disconnect(i64 %53, i32 %54)
  %56 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %275

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  br label %71

59:                                               ; preds = %6
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LST_CONNECTING, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  br label %275

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 14
  %74 = call i32 @btu_stop_timer(i32* %73)
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 13
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  store i64 %84, i64* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i64 %84, i64* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  store i64 %96, i64* %100, align 8
  %101 = load i32, i32* @L2C_BLE_NOT_DEFAULT_PARAM, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 8
  store i32 0, i32* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTM_BLE_CONN_INT_MIN, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %250

112:                                              ; preds = %71
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BTM_BLE_CONN_INT_MAX, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %250

119:                                              ; preds = %112
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @BTM_BLE_CONN_INT_MIN, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %250

126:                                              ; preds = %119
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BTM_BLE_CONN_INT_MAX, align 8
  %132 = icmp sle i64 %130, %131
  br i1 %132, label %133, label %250

133:                                              ; preds = %126
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @BTM_BLE_CONN_LATENCY_MAX, align 8
  %139 = icmp sle i64 %137, %138
  br i1 %139, label %140, label %250

140:                                              ; preds = %133
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BTM_BLE_CONN_SUP_TOUT_MIN, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %250

147:                                              ; preds = %140
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BTM_BLE_CONN_SUP_TOUT_MAX, align 8
  %153 = icmp sle i64 %151, %152
  br i1 %153, label %154, label %250

154:                                              ; preds = %147
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %189, label %168

168:                                              ; preds = %161, %154
  %169 = load i64, i64* %10, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %169, %173
  br i1 %174, label %189, label %175

175:                                              ; preds = %168
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %176, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = load i64, i64* %12, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %183, %187
  br i1 %188, label %189, label %250

189:                                              ; preds = %182, %175, %168, %161
  %190 = load i64, i64* %7, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i64 %190, i64 %194, i64 %198, i64 %202, i64 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 4
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 6
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %7, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @btsnd_hcic_ble_upd_ll_conn_params(i64 %232, i64 %236, i64 %240, i64 %244, i64 %248, i32 0, i32 0)
  br label %250

250:                                              ; preds = %189, %182, %147, %140, %133, %126, %119, %112, %71
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i64, i64* %7, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %260 = call i32 @btm_acl_created(i32 %251, i32* null, i32 %254, i64 %255, i32 %258, i32 %259)
  %261 = load i32, i32* @L2CAP_FIXED_CHNL_ATT_BIT, align 4
  %262 = load i32, i32* @L2CAP_FIXED_CHNL_BLE_SIG_BIT, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @L2CAP_FIXED_CHNL_SMP_BIT, align 4
  %265 = or i32 %263, %264
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 9
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  store i32 %265, i32* %269, align 4
  %270 = load i32, i32* @BLE_CONN_IDLE, align 4
  %271 = call i32 @btm_ble_set_conn_st(i32 %270)
  %272 = load i32, i32* @BTM_BLE_RL_INIT, align 4
  %273 = load i32, i32* @TRUE, align 4
  %274 = call i32 @btm_ble_disable_resolving_list(i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %250, %65, %52, %36
  ret void
}

declare dso_local %struct.TYPE_13__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, i32, i64, i64, i64) #1

declare dso_local %struct.TYPE_12__* @l2cu_find_lcb_by_bd_addr(i32, i32) #1

declare dso_local %struct.TYPE_12__* @l2cu_allocate_lcb(i32, i32, i32) #1

declare dso_local i32 @btm_sec_disconnect(i64, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @l2cu_initialize_fixed_ccb(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @btsnd_hcic_ble_upd_ll_conn_params(i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @btm_acl_created(i32, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @btm_ble_set_conn_st(i32) #1

declare dso_local i32 @btm_ble_disable_resolving_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
