; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sco.c_bta_ag_sco_disc_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sco.c_bta_ag_sco_disc_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [73 x i8] c"bta_ag_sco_disc_cback(): sco_idx: 0x%x  p_cur_scb: 0x%08x  sco.state: %d\00", align 1
@bta_ag_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"bta_ag_sco_disc_cback(): scb[0] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"bta_ag_sco_disc_cback(): scb[1] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u\00", align 1
@BTM_SCO_ROUTE_PCM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"bta_ag_sco_disc_cback sco close config status = %d\00", align 1
@BTA_AG_CODEC_MSBC = common dso_local global i64 0, align 8
@BTM_VOICE_SETTING_CVSD = common dso_local global i32 0, align 4
@BTA_AG_SCO_MSBC_SETTINGS_T2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Fallback to mSBC T1 settings\00", align 1
@BTA_AG_SCO_MSBC_SETTINGS_T1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Fallback to CVSD settings\00", align 1
@BTA_AG_CODEC_NONE = common dso_local global i64 0, align 8
@BTA_AG_SCO_CLOSE_EVT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"no scb for ag_sco_disc_cback\00", align 1
@BTM_INVALID_SCO_INDEX = common dso_local global i32 0, align 4
@BTA_AG_SCO_SHUTDOWN_ST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bta_ag_sco_disc_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_sco_disc_cback(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = trunc i64 %6 to i32
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %9 = ptrtoint %struct.TYPE_11__* %8 to i32
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 0), align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9, i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = ptrtoint %struct.TYPE_8__* %14 to i32
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %20, i32 %25, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 1
  %34 = ptrtoint %struct.TYPE_8__* %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 1), align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %39, i32 %44, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %2, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 65535
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %141

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %73 = call i64 @bta_ag_scb_to_idx(%struct.TYPE_11__* %72)
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %71, %53, %1
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %74
  %78 = load i32, i32* @BTM_SCO_ROUTE_PCM, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @BTM_ConfigScoPath(i32 %78, i32* null, i32* null, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = call i32 (...) @bta_ag_sco_co_close()
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BTA_AG_CODEC_MSBC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %77
  %90 = load i32, i32* @BTM_VOICE_SETTING_CVSD, align 4
  %91 = call i32 @BTM_WriteVoiceSettings(i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %93 = call i64 @bta_ag_sco_is_opening(%struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BTA_AG_SCO_MSBC_SETTINGS_T2, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i64, i64* @BTA_AG_SCO_MSBC_SETTINGS_T1, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  br label %111

106:                                              ; preds = %95
  %107 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @TRUE, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %89
  br label %113

113:                                              ; preds = %112, %77
  %114 = load i64, i64* @BTA_AG_CODEC_NONE, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = call i64 @osi_malloc(i32 16)
  %118 = inttoptr i64 %117 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %3, align 8
  %119 = icmp ne %struct.TYPE_10__* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* @BTA_AG_SCO_CLOSE_EVT, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = call i32 @bta_sys_sendmsg(%struct.TYPE_10__* %127)
  br label %129

129:                                              ; preds = %120, %113
  br label %141

130:                                              ; preds = %74
  %131 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %133 = icmp ne %struct.TYPE_11__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* @BTM_INVALID_SCO_INDEX, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 1), align 8
  %139 = load i64, i64* @BTA_AG_SCO_SHUTDOWN_ST, align 8
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0, i32 0), align 8
  br label %140

140:                                              ; preds = %134, %130
  br label %141

141:                                              ; preds = %69, %140, %129
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64 @bta_ag_scb_to_idx(%struct.TYPE_11__*) #1

declare dso_local i32 @BTM_ConfigScoPath(i32, i32*, i32*, i32) #1

declare dso_local i32 @bta_ag_sco_co_close(...) #1

declare dso_local i32 @BTM_WriteVoiceSettings(i32) #1

declare dso_local i64 @bta_ag_sco_is_opening(%struct.TYPE_11__*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
