; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_clear_scan_pf_filter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_clear_scan_pf_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_COND_CLEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"unable to perform action:%d for generic adv filter type\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Error: Can not clear filter, No PF filter has been configured!\00", align 1
@BTM_BLE_PF_MANU_DATA = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_META_PF_MANU_DATA = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_LOCAL_NAME = common dso_local global i32 0, align 4
@BTM_BLE_PF_SRVC_UUID = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_UUID = common dso_local global i32 0, align 4
@BTM_BLE_PF_SRVC_SOL_UUID = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_SOL_UUID = common dso_local global i32 0, align 4
@BTM_BLE_PF_SRVC_DATA_PATTERN = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_SRVC_DATA = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_FEAT_SEL = common dso_local global i64 0, align 8
@BTM_BLE_PF_SELECT_NONE = common dso_local global i32 0, align 4
@BTM_BLE_PF_LOGIC_OR = common dso_local global i64 0, align 8
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_META_HDR_LENGTH = common dso_local global i64 0, align 8
@BTM_BLE_PF_FEAT_SEL_LEN = common dso_local global i64 0, align 8
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_clear_scan_pf_filter(i64 %0, i64 %1, %struct.TYPE_4__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [20 x i32], align 16
  %18 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %25

22:                                               ; preds = %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32* [ null, %21 ], [ %24, %22 ]
  store i32* %26, i32** %14, align 8
  %27 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %34, i64* %7, align 8
  br label %173

35:                                               ; preds = %25
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 0
  store i32* %36, i32** %18, align 8
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 0
  %38 = call i32 @memset(i32* %37, i32 0, i32 20)
  %39 = load i32*, i32** %14, align 8
  %40 = call i32* @btm_ble_find_addr_filter_counter(i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = icmp eq i32* null, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i32*, i32** %14, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %35
  %50 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %16, align 8
  store i64 %51, i64* %7, align 8
  br label %173

52:                                               ; preds = %46, %43
  %53 = load i32*, i32** %14, align 8
  %54 = icmp eq i32* null, %53
  br i1 %54, label %55, label %136

55:                                               ; preds = %52
  %56 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @BTM_BLE_PF_MANU_DATA, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @btm_ble_update_pf_manu_data(i64 %56, i64 %57, i32* null, i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* @BTM_CMD_STARTED, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* @BTM_BLE_META_PF_MANU_DATA, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @btm_ble_advfilt_enq_op_q(i64 %66, i32 %67, i32 %68, i32 %69, i32* null, i32* null)
  br label %71

71:                                               ; preds = %65, %55
  %72 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @btm_ble_update_pf_local_name(i64 %72, i64 %73, i32* null)
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* @BTM_CMD_STARTED, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @BTM_BLE_META_PF_LOCAL_NAME, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @btm_ble_advfilt_enq_op_q(i64 %79, i32 %80, i32 %81, i32 %82, i32* null, i32* null)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @btm_ble_update_srvc_data_change(i64 %85, i64 %86, i32* null)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @BTM_BLE_PF_SRVC_UUID, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @btm_ble_update_uuid_filter(i64 %88, i64 %89, i32 %90, i32* null, i32 %91, i32 %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* @BTM_CMD_STARTED, align 8
  %95 = load i64, i64* %16, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* @BTM_BLE_META_PF_UUID, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @btm_ble_advfilt_enq_op_q(i64 %98, i32 %99, i32 %100, i32 %101, i32* null, i32* null)
  br label %103

103:                                              ; preds = %97, %84
  %104 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* @BTM_BLE_PF_SRVC_SOL_UUID, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i64 @btm_ble_update_uuid_filter(i64 %104, i64 %105, i32 %106, i32* null, i32 %107, i32 %108)
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* @BTM_CMD_STARTED, align 8
  %111 = load i64, i64* %16, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* @BTM_BLE_META_PF_SOL_UUID, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @btm_ble_advfilt_enq_op_q(i64 %114, i32 %115, i32 %116, i32 %117, i32* null, i32* null)
  br label %119

119:                                              ; preds = %113, %103
  %120 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* @BTM_BLE_PF_SRVC_DATA_PATTERN, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @btm_ble_update_pf_manu_data(i64 %120, i64 %121, i32* null, i32 %122, i32 %123, i32 %124)
  store i64 %125, i64* %16, align 8
  %126 = load i64, i64* @BTM_CMD_STARTED, align 8
  %127 = load i64, i64* %16, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i64, i64* %8, align 8
  %131 = load i32, i32* @BTM_BLE_META_PF_SRVC_DATA, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @btm_ble_advfilt_enq_op_q(i64 %130, i32 %131, i32 %132, i32 %133, i32* null, i32* null)
  br label %135

135:                                              ; preds = %129, %119
  br label %136

136:                                              ; preds = %135, %52
  %137 = load i32*, i32** %18, align 8
  %138 = load i64, i64* @BTM_BLE_META_PF_FEAT_SEL, align 8
  %139 = call i32 @UINT8_TO_STREAM(i32* %137, i64 %138)
  %140 = load i32*, i32** %18, align 8
  %141 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %142 = call i32 @UINT8_TO_STREAM(i32* %140, i64 %141)
  %143 = load i32*, i32** %18, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @UINT8_TO_STREAM(i32* %143, i64 %144)
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* @BTM_BLE_PF_SELECT_NONE, align 4
  %148 = call i32 @UINT32_TO_STREAM(i32* %146, i32 %147)
  %149 = load i32*, i32** %18, align 8
  %150 = load i64, i64* @BTM_BLE_PF_LOGIC_OR, align 8
  %151 = call i32 @UINT8_TO_STREAM(i32* %149, i64 %150)
  %152 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %153 = load i64, i64* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 8
  %154 = load i64, i64* @BTM_BLE_PF_FEAT_SEL_LEN, align 8
  %155 = add nsw i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 0
  %158 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %159 = call i64 @BTM_VendorSpecificCommand(i32 %152, i32 %156, i32* %157, i32 %158)
  store i64 %159, i64* %16, align 8
  %160 = load i64, i64* @BTM_NO_RESOURCES, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %136
  %163 = load i32*, i32** %14, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32*, i32** %14, align 8
  %167 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_ble_adv_filt_cb, i32 0, i32 0), i32* %166, i32 4)
  br label %170

168:                                              ; preds = %162
  %169 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_ble_adv_filt_cb, i32 0, i32 0), i32 0, i32 4)
  br label %170

170:                                              ; preds = %168, %165
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i64, i64* %16, align 8
  store i64 %172, i64* %7, align 8
  br label %173

173:                                              ; preds = %171, %49, %31
  %174 = load i64, i64* %7, align 8
  ret i64 %174
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @btm_ble_find_addr_filter_counter(i32*) #1

declare dso_local i64 @btm_ble_update_pf_manu_data(i64, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @btm_ble_advfilt_enq_op_q(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @btm_ble_update_pf_local_name(i64, i64, i32*) #1

declare dso_local i64 @btm_ble_update_srvc_data_change(i64, i64, i32*) #1

declare dso_local i64 @btm_ble_update_uuid_filter(i64, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i64 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
