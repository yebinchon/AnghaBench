; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_rfc_do_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_rfc_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bta_ag_sec_id = common dso_local global i32* null, align 8
@BT_PSM_RFCOMM = common dso_local global i32 0, align 4
@BTM_SEC_PROTO_RFCOMM = common dso_local global i32 0, align 4
@bta_ag_uuid = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@BTA_AG_MTU = common dso_local global i32 0, align 4
@bta_ag_mgmt_cback_tbl = common dso_local global i32* null, align 8
@PORT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"bta_ag_rfc_do_open : conn_handle = %d\00", align 1
@BTA_AG_RFC_CLOSE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_rfc_do_open(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @TRUE, align 4
  %6 = load i32*, i32** @bta_ag_sec_id, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BT_PSM_RFCOMM, align 4
  %16 = load i32, i32* @BTM_SEC_PROTO_RFCOMM, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BTM_SetSecurityLevel(i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %15, i32 %16, i32 %19)
  %21 = load i32*, i32** @bta_ag_uuid, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @BTA_AG_MTU, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** @bta_ag_mgmt_cback_tbl, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_6__* %38)
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @RFCOMM_CreateConnection(i32 %26, i32 %29, i32 %30, i32 %31, i32 %34, i32* %36, i32 %43)
  %45 = load i64, i64* @PORT_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bta_ag_setup_port(%struct.TYPE_6__* %48, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %62

57:                                               ; preds = %2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = load i32, i32* @BTA_AG_RFC_CLOSE_EVT, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @bta_ag_sm_execute(%struct.TYPE_6__* %58, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @BTM_SetSecurityLevel(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @RFCOMM_CreateConnection(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_6__*) #1

declare dso_local i32 @bta_ag_setup_port(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_sm_execute(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
