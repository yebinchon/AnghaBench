; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 (i32, i32*)* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i64*, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i8*, i8*, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@BTA_AG_CODEC_NONE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@BTA_AG_SCO_MSBC_SETTINGS_T2 = common dso_local global i32 0, align 4
@BTA_AG_POST_SCO_NONE = common dso_local global i32 0, align 4
@HSP_VERSION_1_2 = common dso_local global i32 0, align 4
@BTA_ID_AG = common dso_local global i32 0, align 4
@bta_ag_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BTA_AG_CLOSE_EVT = common dso_local global i32 0, align 4
@bd_addr_null = common dso_local global i32 0, align 4
@BTA_AG_NUM_IDX = common dso_local global i32 0, align 4
@BTA_HSP_SERVICE_ID = common dso_local global i32 0, align 4
@BTA_AG_NUM_SCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_rfc_close(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @UNUSED(i32* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 19
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 18
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** @BTA_AG_CODEC_NONE, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 17
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @BTA_AG_CODEC_NONE, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 16
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 15
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 14
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @BTA_AG_SCO_MSBC_SETTINGS_T2, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 12
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @BTA_AG_POST_SCO_NONE, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 10
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @HSP_VERSION_1_2, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 8
  %43 = call i32 @bta_ag_at_reinit(i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 7
  %46 = call i32 @bta_sys_stop_timer(i32* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 6
  %49 = call i32 @bta_sys_stop_timer(i32* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_14__* %50)
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @bdcpy(i32 %60, i32 %63)
  %65 = load i32, i32* @BTA_ID_AG, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bta_sys_conn_close(i32 %65, i32 %68, i32 %71)
  %73 = call i32 (...) @bta_ag_sco_co_close()
  %74 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_ag_cb, i32 0, i32 1), align 8
  %75 = load i32, i32* @BTA_AG_CLOSE_EVT, align 4
  %76 = bitcast %struct.TYPE_15__* %5 to i32*
  %77 = call i32 %74(i32 %75, i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FALSE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %170

83:                                               ; preds = %2
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @bd_addr_null, align 4
  %88 = call i32 @bdcpy(i32 %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %119, %83
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i1 [ false, %92 ], [ %98, %96 ]
  br i1 %100, label %101, label %122

101:                                              ; preds = %99
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 5
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load i32, i32* @BTA_HSP_SERVICE_ID, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %111, %112
  %114 = shl i32 1, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %101
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %92

122:                                              ; preds = %99
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @bta_ag_start_servers(%struct.TYPE_14__* %123, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = call i32 @bta_ag_sco_shutdown(%struct.TYPE_14__* %128, i32* null)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %154, %122
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_ag_cb, i32 0, i32 0), align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_ag_cb, i32 0, i32 0), align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %150, %142, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %130

157:                                              ; preds = %130
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @BTA_ID_AG, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @bta_sys_sco_unuse(i32 %161, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %160, %157
  br label %177

170:                                              ; preds = %2
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @RFCOMM_RemoveServer(i64 %173)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = call i32 @bta_ag_scb_dealloc(%struct.TYPE_14__* %175)
  br label %177

177:                                              ; preds = %170, %169
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @bta_ag_at_reinit(i32*) #1

declare dso_local i32 @bta_sys_stop_timer(i32*) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_14__*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_sys_conn_close(i32, i32, i32) #1

declare dso_local i32 @bta_ag_sco_co_close(...) #1

declare dso_local i32 @bta_ag_start_servers(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bta_ag_sco_shutdown(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @bta_sys_sco_unuse(i32, i32, i32) #1

declare dso_local i32 @RFCOMM_RemoveServer(i64) #1

declare dso_local i32 @bta_ag_scb_dealloc(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
