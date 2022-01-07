; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_advertiser_conn_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_advertiser_conn_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* (...)* }
%struct.TYPE_16__ = type { i32 }

@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HCI_ERR_NO_CONNECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"l2cble_advertiser_conn_comp - failed to allocate LCB\00", align 1
@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"l2cble_scanner_conn_comp - LCB but no CCB\00", align 1
@HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@L2C_BLE_NOT_DEFAULT_PARAM = common dso_local global i32 0, align 4
@BTM_BLE_RL_ADV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_ATT_BIT = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_BLE_SIG_BIT = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_SMP_BIT = common dso_local global i32 0, align 4
@LST_CONNECTED = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cble_advertiser_conn_comp(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @UNUSED(i8* %15)
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @UNUSED(i8* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @UNUSED(i8* %19)
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @UNUSED(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %25 = call %struct.TYPE_14__* @l2cu_find_lcb_by_bd_addr(i32 %23, i32 %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %13, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %32 = call %struct.TYPE_14__* @l2cu_allocate_lcb(i32 %29, i32 %30, i32 %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %13, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @HCI_ERR_NO_CONNECTION, align 4
  %38 = call i32 @btm_sec_disconnect(i8* %36, i32 %37)
  %39 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %140

40:                                               ; preds = %28
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = load i64, i64* @L2CAP_ATT_CID, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @l2cb, i32 0, i32 2), align 8
  %44 = load i64, i64* @L2CAP_ATT_CID, align 8
  %45 = load i64, i64* @L2CAP_FIRST_FIXED_CHNL, align 8
  %46 = sub i64 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = call i32 @l2cu_initialize_fixed_ccb(%struct.TYPE_14__* %41, i64 %42, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @HCI_ERR_NO_CONNECTION, align 4
  %54 = call i32 @btm_sec_disconnect(i8* %52, i32 %53)
  %55 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %140

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 13
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @HCI_ROLE_SLAVE, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 10
  store i8* %68, i8** %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 11
  store i8* %68, i8** %74, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 8
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 6
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* @L2C_BLE_NOT_DEFAULT_PARAM, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.TYPE_15__* @btm_find_or_alloc_dev(i32 %90)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %14, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %101 = call i32 @btm_acl_created(i32 %92, i32* null, i32 %95, i8* %96, i32 %99, i32 %100)
  %102 = load i32, i32* @BTM_BLE_RL_ADV, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @btm_ble_disable_resolving_list(i32 %102, i32 %103)
  %105 = load i32, i32* @L2CAP_FIXED_CHNL_ATT_BIT, align 4
  %106 = load i32, i32* @L2CAP_FIXED_CHNL_BLE_SIG_BIT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @L2CAP_FIXED_CHNL_SMP_BIT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = call %struct.TYPE_12__* (...) @controller_get_interface()
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__* (...)*, %struct.TYPE_16__* (...)** %115, align 8
  %117 = call %struct.TYPE_16__* (...) %116()
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @HCI_LE_SLAVE_INIT_FEAT_EXC_SUPPORTED(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %58
  %123 = load i32, i32* @LST_CONNECTED, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = call i32 @l2cu_process_fixed_chnl_resp(%struct.TYPE_14__* %126)
  br label %128

128:                                              ; preds = %122, %58
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @l2cb, i32 0, i32 1), align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @l2cb, i32 0, i32 0), align 8
  %134 = load i32, i32* @BD_ADDR_LEN, align 4
  %135 = call i64 @memcmp(i32 %132, i32 %133, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @L2CA_CancelBleConnectReq(i32 %138)
  br label %140

140:                                              ; preds = %35, %51, %137, %131, %128
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local %struct.TYPE_14__* @l2cu_find_lcb_by_bd_addr(i32, i32) #1

declare dso_local %struct.TYPE_14__* @l2cu_allocate_lcb(i32, i32, i32) #1

declare dso_local i32 @btm_sec_disconnect(i8*, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @l2cu_initialize_fixed_ccb(%struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local %struct.TYPE_15__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @btm_acl_created(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @btm_ble_disable_resolving_list(i32, i32) #1

declare dso_local i32 @HCI_LE_SLAVE_INIT_FEAT_EXC_SUPPORTED(i32) #1

declare dso_local %struct.TYPE_12__* @controller_get_interface(...) #1

declare dso_local i32 @l2cu_process_fixed_chnl_resp(%struct.TYPE_14__*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @L2CA_CancelBleConnectReq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
