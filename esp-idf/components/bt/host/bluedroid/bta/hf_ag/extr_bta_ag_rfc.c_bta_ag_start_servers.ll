; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_start_servers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_start_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@BTA_HSP_SERVICE_ID = common dso_local global i32 0, align 4
@BTA_AG_NUM_IDX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bta_ag_sec_id = common dso_local global i32* null, align 8
@BT_PSM_RFCOMM = common dso_local global i32 0, align 4
@BTM_SEC_PROTO_RFCOMM = common dso_local global i32 0, align 4
@bta_ag_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@bta_ag_uuid = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@BTA_AG_MTU = common dso_local global i32 0, align 4
@bd_addr_any = common dso_local global i64 0, align 8
@bta_ag_mgmt_cback_tbl = common dso_local global i32* null, align 8
@PORT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"bta_ag_start_servers: RFCOMM_CreateConnection returned error:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_start_servers(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @BTA_HSP_SERVICE_ID, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, %7
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %89, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %94

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32*, i32** @bta_ag_sec_id, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BT_PSM_RFCOMM, align 4
  %34 = load i32, i32* @BTM_SEC_PROTO_RFCOMM, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_ag_cb, i32 0, i32 0), align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BTM_SetSecurityLevel(i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %34, i32 %40)
  %42 = load i32*, i32** @bta_ag_uuid, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_ag_cb, i32 0, i32 0), align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32, i32* @BTA_AG_MTU, align 4
  %55 = load i64, i64* @bd_addr_any, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** @bta_ag_mgmt_cback_tbl, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_8__* %64)
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @RFCOMM_CreateConnection(i32 %46, i32 %52, i32 %53, i32 %54, i32* %56, i32* %62, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PORT_SUCCESS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %23
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bta_ag_setup_port(%struct.TYPE_8__* %75, i32 %82)
  br label %87

84:                                               ; preds = %23
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %74
  br label %88

88:                                               ; preds = %87, %19
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %10

94:                                               ; preds = %17
  ret void
}

declare dso_local i32 @BTM_SetSecurityLevel(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RFCOMM_CreateConnection(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_8__*) #1

declare dso_local i32 @bta_ag_setup_port(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
