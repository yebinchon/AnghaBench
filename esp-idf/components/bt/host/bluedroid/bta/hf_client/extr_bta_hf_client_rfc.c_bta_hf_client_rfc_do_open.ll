; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_rfc.c_bta_hf_client_rfc_do_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_rfc.c_bta_hf_client_rfc_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BTM_SEC_SERVICE_HF_HANDSFREE = common dso_local global i32 0, align 4
@bta_hf_client_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BT_PSM_RFCOMM = common dso_local global i32 0, align 4
@BTM_SEC_PROTO_RFCOMM = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HF_HANDSFREE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_MTU = common dso_local global i32 0, align 4
@bta_hf_client_mgmt_cback = common dso_local global i32 0, align 4
@PORT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"bta_hf_client_rfc_do_open : conn_handle = %d\00", align 1
@BTA_HF_CLIENT_RFC_CLOSE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_rfc_do_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @TRUE, align 4
  %4 = load i32, i32* @BTM_SEC_SERVICE_HF_HANDSFREE, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 3), align 4
  %6 = load i32, i32* @BT_PSM_RFCOMM, align 4
  %7 = load i32, i32* @BTM_SEC_PROTO_RFCOMM, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 2), align 4
  %9 = call i32 @BTM_SetSecurityLevel(i32 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @UUID_SERVCLASS_HF_HANDSFREE, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 2), align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* @BTA_HF_CLIENT_MTU, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 4
  %15 = load i32, i32* @bta_hf_client_mgmt_cback, align 4
  %16 = call i64 @RFCOMM_CreateConnection(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 0), i32 %15)
  %17 = load i64, i64* @PORT_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 4
  %21 = call i32 @bta_hf_client_setup_port(i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 4
  %23 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @BTA_HF_CLIENT_RFC_CLOSE_EVT, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @bta_hf_client_sm_execute(i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @BTM_SetSecurityLevel(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @RFCOMM_CreateConnection(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bta_hf_client_setup_port(i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_hf_client_sm_execute(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
