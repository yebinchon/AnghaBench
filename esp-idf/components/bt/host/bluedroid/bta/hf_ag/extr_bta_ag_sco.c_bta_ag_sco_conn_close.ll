; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sco.c_bta_ag_sco_conn_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sco.c_bta_ag_sco_conn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32 }

@bta_ag_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_INVALID_SCO_INDEX = common dso_local global i32 0, align 4
@BTA_AG_SCO_REOPEN_E = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCO_STATE_OFF_TRANSFER = common dso_local global i32 0, align 4
@SCO_STATE_OFF = common dso_local global i32 0, align 4
@BTA_AG_SCO_CONN_CLOSE_E = common dso_local global i32 0, align 4
@BTA_ID_AG = common dso_local global i32 0, align 4
@BTA_AG_CALL_INACTIVE = common dso_local global i64 0, align 8
@BTA_AG_CALLSETUP_NONE = common dso_local global i64 0, align 8
@BTA_AG_POST_SCO_CALL_END = common dso_local global i64 0, align 8
@BTA_AG_AUDIO_CLOSE_EVT = common dso_local global i32 0, align 4
@BTA_AG_SCO_MSBC_SETTINGS_T2 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_sco_conn_close(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_11__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @UNUSED(i32* %9)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %11 = load i32, i32* @BTM_INVALID_SCO_INDEX, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call i64 @bta_ag_attempt_msbc_safe_settings(%struct.TYPE_11__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* @BTA_AG_SCO_REOPEN_E, align 4
  %30 = call i32 @bta_ag_sco_event(%struct.TYPE_11__* %28, i32 %29)
  br label %108

31:                                               ; preds = %23
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @bta_ag_create_sco(%struct.TYPE_11__* %42, i32 %43)
  br label %107

45:                                               ; preds = %36, %31
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @SCO_STATE_OFF_TRANSFER, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @SCO_STATE_OFF, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i32, ...) @bta_ag_sco_audio_state(i32 %54, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load i32, i32* @BTA_AG_SCO_CONN_CLOSE_E, align 4
  %65 = call i32 @bta_ag_sco_event(%struct.TYPE_11__* %63, i32 %64)
  %66 = load i32, i32* @BTA_ID_AG, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bta_sys_sco_close(i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BTA_AG_CALL_INACTIVE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %52
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BTA_AG_CALLSETUP_NONE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79, %52
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BTA_AG_POST_SCO_CALL_END, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85, %79
  %92 = load i32, i32* @BTA_ID_AG, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bta_sys_sco_unuse(i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %91, %85
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = load i32, i32* @BTA_AG_AUDIO_CLOSE_EVT, align 4
  %103 = call i32 @bta_ag_cback_sco(%struct.TYPE_11__* %101, i32 %102)
  %104 = load i32, i32* @BTA_AG_SCO_MSBC_SETTINGS_T2, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %41
  br label %108

108:                                              ; preds = %107, %27
  %109 = load i64, i64* @FALSE, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  ret void
}

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_11__*) #1

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i64 @bta_ag_attempt_msbc_safe_settings(%struct.TYPE_11__*) #1

declare dso_local i32 @bta_ag_sco_event(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bta_ag_create_sco(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bta_ag_sco_audio_state(i32, i32, i32, ...) #1

declare dso_local i32 @bta_sys_sco_close(i32, i32, i32) #1

declare dso_local i32 @bta_sys_sco_unuse(i32, i32, i32) #1

declare dso_local i32 @bta_ag_cback_sco(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
