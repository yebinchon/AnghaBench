; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_set_params.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* (...)* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }

@BTM_BLE_MULTI_ADV_SET_PARAM_LEN = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_SET_PARAM = common dso_local global i64 0, align 8
@BLE_ADDR_PUBLIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c" btm_ble_multi_adv_set_params,Min %d, Max %d,adv_type %d\00", align 1
@BTM_BLE_DEFAULT_ADV_CHNL_MAP = common dso_local global i64 0, align 8
@AP_SCAN_CONN_POLICY_MAX = common dso_local global i64 0, align 8
@AP_SCAN_CONN_ALL = common dso_local global i64 0, align 8
@BTM_BLE_ADV_TX_POWER_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"set_params:Chnl Map %d,adv_fltr policy %d,ID:%d, TX Power%d\00", align 1
@HCI_BLE_MULTI_ADV_OCF = common dso_local global i32 0, align 4
@btm_ble_multi_adv_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@BTM_BLE_PRIVATE_ADDR_INT = common dso_local global i32 0, align 4
@BTM_PRIVACY_NONE = common dso_local global i64 0, align 8
@BTU_TTYPE_BLE_RANDOM_ADDR = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_multi_adv_set_params(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @BTM_BLE_MULTI_ADV_SET_PARAM_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 24, i1 false)
  store i32* %16, i32** %9, align 8
  %18 = load i32, i32* @BTM_BLE_MULTI_ADV_SET_PARAM_LEN, align 4
  %19 = call i32 @memset(i32* %16, i32 0, i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* @BTM_BLE_MULTI_ADV_SET_PARAM, align 8
  %22 = call i32 @UINT8_TO_STREAM(i32* %20, i64 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @UINT16_TO_STREAM(i32* %23, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @UINT16_TO_STREAM(i32* %28, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @UINT8_TO_STREAM(i32* %33, i64 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  %40 = call i32 @UINT8_TO_STREAM(i32* %38, i64 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_17__* (...) @controller_get_interface()
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__* (...)*, %struct.TYPE_16__* (...)** %43, align 8
  %45 = call %struct.TYPE_16__* (...) %44()
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_15__* %12 to i8*
  %48 = bitcast %struct.TYPE_15__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 4 %48, i64 24, i1 false)
  %49 = call i32 @BDADDR_TO_STREAM(i32* %41, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %12)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, i64, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %57, i64 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @UINT8_TO_STREAM(i32* %62, i64 0)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @BDADDR_TO_STREAM(i32* %64, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BTM_BLE_DEFAULT_ADV_CHNL_MAP, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %3
  %77 = load i64, i64* @BTM_BLE_DEFAULT_ADV_CHNL_MAP, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @UINT8_TO_STREAM(i32* %81, i64 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AP_SCAN_CONN_POLICY_MAX, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load i64, i64* @AP_SCAN_CONN_ALL, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %80
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @UINT8_TO_STREAM(i32* %96, i64 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @UINT8_TO_STREAM(i32* %101, i64 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BTM_BLE_ADV_TX_POWER_MAX, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load i64, i64* @BTM_BLE_ADV_TX_POWER_MAX, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %95
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @btm_ble_map_adv_tx_power(i64 %119)
  %121 = call i32 @UINT8_TO_STREAM(i32* %116, i64 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, i64, i64, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %124, i64 %127, i64 %130, i64 %133)
  %135 = load i32, i32* @HCI_BLE_MULTI_ADV_OCF, align 4
  %136 = load i32, i32* @BTM_BLE_MULTI_ADV_SET_PARAM_LEN, align 4
  %137 = load i32, i32* @btm_ble_multi_adv_vsc_cmpl_cback, align 4
  %138 = call i32 @BTM_VendorSpecificCommand(i32 %135, i32 %136, i32* %16, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* @BTM_CMD_STARTED, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %115
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* @BTM_BLE_MULTI_ADV_SET_PARAM, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @btm_ble_multi_adv_enq_op_q(i64 %147, i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %141, %115
  %154 = load i32, i32* %10, align 4
  %155 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %155)
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #3

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #3

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #3

declare dso_local i32 @BDADDR_TO_STREAM(i32*, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #3

declare dso_local %struct.TYPE_17__* @controller_get_interface(...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64, i64, i64, ...) #3

declare dso_local i64 @btm_ble_map_adv_tx_power(i64) #3

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #3

declare dso_local i32 @btm_ble_multi_adv_enq_op_q(i64, i64, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
