; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_disc_int_res.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_disc_int_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@BTA_AG_DISC_FAIL_EVT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"bta_ag_disc_int_res: Status: %d\00", align 1
@SDP_SUCCESS = common dso_local global i64 0, align 8
@SDP_DB_FULL = common dso_local global i64 0, align 8
@BTA_AG_DISC_OK_EVT = common dso_local global i64 0, align 8
@SDP_NO_RECS_MATCH = common dso_local global i64 0, align 8
@BTA_HFP_SERVICE_MASK = common dso_local global i32 0, align 4
@BTA_HSP_SERVICE_MASK = common dso_local global i32 0, align 4
@HSP_VERSION_1_2 = common dso_local global i64 0, align 8
@HSP_VERSION_1_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_disc_int_res(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load i64, i64* @BTA_AG_DISC_FAIL_EVT, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SDP_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SDP_DB_FULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %18, %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @bta_ag_sdp_find_attr(%struct.TYPE_13__* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bta_ag_service_to_idx(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @BTA_AG_DISC_OK_EVT, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %32, %25
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = call i32 @bta_ag_free_db(%struct.TYPE_13__* %42, %struct.TYPE_14__* %43)
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @BTA_AG_DISC_FAIL_EVT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SDP_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SDP_DB_FULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SDP_NO_RECS_MATCH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %62, %55, %48
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BTA_HSP_SERVICE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bta_ag_do_disc(%struct.TYPE_13__* %90, i32 %93)
  br label %123

95:                                               ; preds = %76, %69
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BTA_HSP_SERVICE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @HSP_VERSION_1_2, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i64, i64* @HSP_VERSION_1_0, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @bta_ag_do_disc(%struct.TYPE_13__* %112, i32 %115)
  br label %122

117:                                              ; preds = %102, %95
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = call i32 @bta_ag_sm_execute(%struct.TYPE_13__* %118, i64 %119, %struct.TYPE_14__* %120)
  br label %122

122:                                              ; preds = %117, %108
  br label %123

123:                                              ; preds = %122, %83
  br label %129

124:                                              ; preds = %62, %41
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = call i32 @bta_ag_sm_execute(%struct.TYPE_13__* %125, i64 %126, %struct.TYPE_14__* %127)
  br label %129

129:                                              ; preds = %124, %123
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64) #1

declare dso_local i64 @bta_ag_sdp_find_attr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bta_ag_service_to_idx(i32) #1

declare dso_local i32 @bta_ag_free_db(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @bta_ag_do_disc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bta_ag_sm_execute(%struct.TYPE_13__*, i64, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
