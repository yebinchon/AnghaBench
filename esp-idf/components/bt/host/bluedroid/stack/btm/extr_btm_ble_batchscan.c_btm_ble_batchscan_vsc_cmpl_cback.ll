; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_vsc_cmpl_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_vsc_cmpl_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"wrong length for btm_ble_batch_scan_vsc_cmpl_cback\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"btm_ble_batchscan op_code = %02x state = %02x cb_evt = %02x,ref_value=%d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Got unexpected VSC cmpl, expected: %d got: %d\00", align 1
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_ENABLE_CALLED = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_ENABLED_STATE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"SCAN_ENB_DISAB_CUST_FEATURE - Invalid state after enb\00", align 1
@BTM_BLE_SCAN_INVALID_STATE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEAT status = %d, state: %d,evt=%d\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM status = %d, evt=%d\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"BTM_BLE_BATCH_SCAN_SET_PARAMS status = %d,evt=%d\00", align 1
@BTM_BLE_SCAN_DISABLE_CALLED = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_DISABLED_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"BTM_BLE_BATCH_SCAN_SET_PARAMS - Invalid state after disabled\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"BTM_BLE_BATCH_SCAN_READ_RESULTS status=%d,len=%d,rec=%d\00", align 1
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_vsc_cmpl_cback(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @btm_ble_batchscan_deq_op_q(i32* %8, i32* %13, i32* %11, i32* %5)
  br label %212

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @STREAM_TO_UINT8(i32 %28, i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @STREAM_TO_UINT8(i32 %31, i32* %32)
  %34 = call i32 @btm_ble_batchscan_deq_op_q(i32* %8, i32* %13, i32* %11, i32* %5)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  br label %212

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %210 [
    i32 131, label %49
    i32 128, label %85
    i32 129, label %101
    i32 130, label %132
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @BTM_SUCCESS, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @BTM_BLE_SCAN_ENABLE_CALLED, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @BTM_BLE_SCAN_ENABLED_STATE, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 0), align 8
  br label %68

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @BTM_BLE_SCAN_ENABLE_CALLED, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8*, i8** @BTM_BLE_SCAN_INVALID_STATE, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 0), align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %77 = icmp ne i32 (i32, i32, i32)* null, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 %79(i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %75, %68
  br label %211

85:                                               ; preds = %47
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %93 = icmp ne i32 (i32, i32, i32)* null, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 %95(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %91, %85
  br label %211

101:                                              ; preds = %47
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @BTM_BLE_SCAN_DISABLE_CALLED, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load i32, i32* @BTM_SUCCESS, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @BTM_BLE_SCAN_DISABLED_STATE, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 0), align 8
  br label %118

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i8*, i8** @BTM_BLE_SCAN_INVALID_STATE, align 8
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 0), align 8
  br label %118

118:                                              ; preds = %114, %112
  br label %119

119:                                              ; preds = %118, %101
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %124 = icmp ne i32 (i32, i32, i32)* null, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 %126(i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %122, %119
  br label %211

132:                                              ; preds = %47
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %209

135:                                              ; preds = %132
  %136 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %137 = icmp ne i32 (i32, i32, i32, i32, i32*, i32)* null, %136
  br i1 %137, label %138, label %209

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @STREAM_TO_UINT8(i32 %139, i32* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @STREAM_TO_UINT8(i32 %142, i32* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  store i32* %148, i32** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %150, 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %149, i32 %151, i32 %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 0, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %138
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @btm_ble_batchscan_deq_rep_data(i32 %157, i32* %5, i32* %10, i32** %15, i32* %12)
  %159 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %160 = icmp ne i32 (i32, i32, i32, i32, i32*, i32)* null, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 %162(i32 %163, i32 %164, i32 %165, i32 %166, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %161, %156
  br label %208

171:                                              ; preds = %138
  %172 = load i32, i32* %4, align 4
  %173 = sub nsw i32 %172, 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %207

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sub nsw i32 %179, 4
  %181 = call i32 @btm_ble_batchscan_enq_rep_data(i32 %176, i32 %177, i32* %178, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @btm_ble_read_batchscan_reports(i32 %182, i32 %183)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* @BTM_CMD_STARTED, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %175
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @btm_ble_batchscan_deq_rep_data(i32 %189, i32* %5, i32* %10, i32** %15, i32* %12)
  %191 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %192 = icmp ne i32 (i32, i32, i32, i32, i32*, i32)* null, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load i32*, i32** %15, align 8
  %195 = icmp ne i32* null, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 %197(i32 %198, i32 %199, i32 %200, i32 %201, i32* %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %193, %188
  br label %206

206:                                              ; preds = %205, %175
  br label %207

207:                                              ; preds = %206, %171
  br label %208

208:                                              ; preds = %207, %170
  br label %209

209:                                              ; preds = %208, %135, %132
  br label %211

210:                                              ; preds = %47
  br label %211

211:                                              ; preds = %210, %209, %131, %100, %84
  br label %212

212:                                              ; preds = %211, %43, %24
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @btm_ble_batchscan_deq_op_q(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32, ...) #1

declare dso_local i32 @btm_ble_batchscan_deq_rep_data(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @btm_ble_batchscan_enq_rep_data(i32, i32, i32*, i32) #1

declare dso_local i32 @btm_ble_read_batchscan_reports(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
