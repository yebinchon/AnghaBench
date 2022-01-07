; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_10__, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32*, i32*, i32* }

@FALSE = common dso_local global i8* null, align 8
@BTA_AG_FEAT_INBAND = common dso_local global i32 0, align 4
@bta_ag_at_tbl = common dso_local global i64* null, align 8
@bta_ag_at_cback_tbl = common dso_local global i64* null, align 8
@bta_ag_at_err_cback = common dso_local global i64 0, align 8
@BTA_AG_CMD_MAX = common dso_local global i32 0, align 4
@BTA_HFP_SCO_OUT_PKT_SIZE = common dso_local global i32 0, align 4
@bta_ag_svc_id = common dso_local global i32* null, align 8
@BTA_ID_AG = common dso_local global i32 0, align 4
@BTA_AG_SUCCESS = common dso_local global i32 0, align 4
@BTA_AG_HFP = common dso_local global i64 0, align 8
@BTA_AG_SVC_TOUT_EVT = common dso_local global i32 0, align 4
@p_bta_ag_cfg = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_rfc_open(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i8*, i8** @FALSE, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @FALSE, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 10
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 9
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BTA_AG_FEAT_INBAND, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @BTA_AG_FEAT_INBAND, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64*, i64** @bta_ag_at_tbl, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store i32* %33, i32** %36, align 8
  %37 = load i64*, i64** @bta_ag_at_cback_tbl, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32* %43, i32** %46, align 8
  %47 = load i64, i64* @bta_ag_at_err_cback, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %55, align 8
  %56 = load i32, i32* @BTA_AG_CMD_MAX, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 7
  %62 = call i32 @bta_ag_at_init(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_8__* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BTA_HFP_SCO_OUT_PKT_SIZE, align 4
  %69 = load i32*, i32** @bta_ag_svc_id, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bta_ag_sco_co_open(i32 %64, i32 %67, i32 %68, i32 %74)
  %76 = load i32, i32* @BTA_ID_AG, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bta_sys_conn_open(i32 %76, i32 %79, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32, i32* @BTA_AG_SUCCESS, align 4
  %86 = call i32 @bta_ag_cback_open(%struct.TYPE_8__* %84, i32* null, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BTA_AG_HFP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* @BTA_AG_SVC_TOUT_EVT, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @p_bta_ag_cfg, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bta_sys_start_timer(i32* %94, i32 %95, i32 %98)
  br label %104

100:                                              ; preds = %2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @bta_ag_svc_conn_open(%struct.TYPE_8__* %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %92
  ret void
}

declare dso_local i32 @bta_ag_at_init(%struct.TYPE_10__*) #1

declare dso_local i32 @bta_ag_sco_co_open(i32, i32, i32, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_8__*) #1

declare dso_local i32 @bta_sys_conn_open(i32, i32, i32) #1

declare dso_local i32 @bta_ag_cback_open(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @bta_sys_start_timer(i32*, i32, i32) #1

declare dso_local i32 @bta_ag_svc_conn_open(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
