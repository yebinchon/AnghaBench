; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleAdvFilterParamSetup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleAdvFilterParamSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_META_HDR_LENGTH = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_FEAT_SELN_LEN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_TRACK_NUM = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c" BTM_BleAdvFilterParamSetup\00", align 1
@BTM_BLE_SCAN_COND_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BD Address not found!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"BTM_BleAdvFilterParamSetup : Feat mask:%d\00", align 1
@BTM_BLE_META_PF_FEAT_SEL = common dso_local global i32 0, align 4
@cmn_ble_adv_vsc_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTM_VSC_CHIP_CAPABILITY_L_VERSION = common dso_local global i64 0, align 8
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BLE_FILT_ADV_PARAM = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_DELETE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_CLEAR = common dso_local global i32 0, align 4
@BTM_BLE_PF_TYPE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleAdvFilterParamSetup(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %21, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %22 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %23 = load i32, i32* @BTM_BLE_ADV_FILT_FEAT_SELN_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @BTM_BLE_ADV_FILT_TRACK_NUM, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load i64, i64* @BTM_SUCCESS, align 8
  %32 = call i64 (...) @btm_ble_obtain_vsc_details()
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

36:                                               ; preds = %6
  store i32* %30, i32** %19, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @memset(i32* %30, i32 0, i32 %37)
  %39 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @BTM_BLE_SCAN_COND_ADD, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %155

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @btm_ble_find_addr_filter_counter(i32* %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp eq i32* null, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

51:                                               ; preds = %43
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %58 = call i32 @UINT8_TO_STREAM(i32* %56, i32 %57)
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* @BTM_BLE_SCAN_COND_ADD, align 4
  %61 = call i32 @UINT8_TO_STREAM(i32* %59, i32 %60)
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @UINT8_TO_STREAM(i32* %62, i32 %63)
  %65 = load i32*, i32** %19, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @UINT16_TO_STREAM(i32* %65, i32 %68)
  %70 = load i32*, i32** %19, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @UINT16_TO_STREAM(i32* %70, i32 %73)
  %75 = load i32*, i32** %19, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @UINT8_TO_STREAM(i32* %75, i32 %78)
  %80 = load i32*, i32** %19, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @UINT8_TO_STREAM(i32* %80, i32 %83)
  %85 = load i32*, i32** %19, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @UINT8_TO_STREAM(i32* %85, i32 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 1, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %51
  %95 = load i32*, i32** %19, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UINT16_TO_STREAM(i32* %95, i32 %98)
  %100 = load i32*, i32** %19, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @UINT8_TO_STREAM(i32* %100, i32 %103)
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UINT8_TO_STREAM(i32* %105, i32 %108)
  %110 = load i32*, i32** %19, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @UINT16_TO_STREAM(i32* %110, i32 %113)
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmn_ble_adv_vsc_cb, i32 0, i32 0), align 8
  %116 = load i64, i64* @BTM_VSC_CHIP_CAPABILITY_L_VERSION, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %94
  %119 = load i32*, i32** %19, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @UINT16_TO_STREAM(i32* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %94
  br label %125

125:                                              ; preds = %124, %51
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmn_ble_adv_vsc_cb, i32 0, i32 0), align 8
  %127 = load i64, i64* @BTM_VSC_CHIP_CAPABILITY_L_VERSION, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %131 = load i32, i32* @BTM_BLE_ADV_FILT_FEAT_SELN_LEN, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %16, align 4
  br label %139

133:                                              ; preds = %125
  %134 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %135 = load i32, i32* @BTM_BLE_ADV_FILT_FEAT_SELN_LEN, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* @BTM_BLE_ADV_FILT_TRACK_NUM, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %133, %129
  %140 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %143 = call i32 @BTM_VendorSpecificCommand(i32 %140, i32 %141, i32* %30, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

148:                                              ; preds = %139
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %151 = load i32, i32* @BTM_BLE_FILT_ADV_PARAM, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @btm_ble_advfilt_enq_op_q(i32 %149, i32 %150, i32 %151, i32 %152, i32* null, i32* %153)
  br label %215

155:                                              ; preds = %36
  %156 = load i32, i32* @BTM_BLE_SCAN_COND_DELETE, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %155
  %160 = load i32*, i32** %19, align 8
  %161 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %162 = call i32 @UINT8_TO_STREAM(i32* %160, i32 %161)
  %163 = load i32*, i32** %19, align 8
  %164 = load i32, i32* @BTM_BLE_SCAN_COND_DELETE, align 4
  %165 = call i32 @UINT8_TO_STREAM(i32* %163, i32 %164)
  %166 = load i32*, i32** %19, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @UINT8_TO_STREAM(i32* %166, i32 %167)
  %169 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %170 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %171 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %172 = call i32 @BTM_VendorSpecificCommand(i32 %169, i32 %170, i32* %30, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %159
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

177:                                              ; preds = %159
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %180 = load i32, i32* @BTM_BLE_FILT_ADV_PARAM, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @btm_ble_advfilt_enq_op_q(i32 %178, i32 %179, i32 %180, i32 %181, i32* null, i32* %182)
  br label %214

184:                                              ; preds = %155
  %185 = load i32, i32* @BTM_BLE_SCAN_COND_CLEAR, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %213

188:                                              ; preds = %184
  %189 = load i32, i32* @BTM_BLE_PF_TYPE_ALL, align 4
  %190 = call i32 @btm_ble_dealloc_addr_filter_counter(i32* null, i32 %189)
  %191 = load i32*, i32** %19, align 8
  %192 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %193 = call i32 @UINT8_TO_STREAM(i32* %191, i32 %192)
  %194 = load i32*, i32** %19, align 8
  %195 = load i32, i32* @BTM_BLE_SCAN_COND_CLEAR, align 4
  %196 = call i32 @UINT8_TO_STREAM(i32* %194, i32 %195)
  %197 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %198 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %201 = call i32 @BTM_VendorSpecificCommand(i32 %197, i32 %199, i32* %30, i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %188
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

206:                                              ; preds = %188
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %209 = load i32, i32* @BTM_BLE_FILT_ADV_PARAM, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 @btm_ble_advfilt_enq_op_q(i32 %207, i32 %208, i32 %209, i32 %210, i32* null, i32* %211)
  br label %213

213:                                              ; preds = %206, %184
  br label %214

214:                                              ; preds = %213, %177
  br label %215

215:                                              ; preds = %214, %148
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %217

217:                                              ; preds = %215, %204, %175, %146, %48, %34
  %218 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @btm_ble_obtain_vsc_details(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #2

declare dso_local i32* @btm_ble_find_addr_filter_counter(i32*) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #2

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @btm_ble_advfilt_enq_op_q(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @btm_ble_dealloc_addr_filter_counter(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
