; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_hsp_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_hsp_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32*, i32, i32 }

@bta_ag_trans_result = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"bta_ag_hsp_result : res = %d\00", align 1
@BTA_ID_AG = common dso_local global i32 0, align 4
@BTA_AG_FEAT_NOSCO = common dso_local global i32 0, align 4
@HSP_VERSION_1_2 = common dso_local global i32 0, align 4
@BTA_AG_POST_SCO_NONE = common dso_local global i32 0, align 4
@BTA_AG_POST_SCO_RING = common dso_local global i32 0, align 4
@BTA_AG_HANDLE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"inband_enabled set to %d\00", align 1
@BTA_AG_OK_ERROR = common dso_local global i32 0, align 4
@BTA_AG_OK_DONE = common dso_local global i32 0, align 4
@BTA_AG_ERR_INV_CHAR_IN_TSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_hsp_result(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %6 = load i32*, i32** @bta_ag_trans_result, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  switch i64 %18, label %202 [
    i64 129, label %19
    i64 131, label %19
    i64 132, label %27
    i64 133, label %75
    i64 130, label %75
    i64 135, label %119
    i64 134, label %152
    i64 128, label %163
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bta_ag_send_result(%struct.TYPE_17__* %20, i32 %21, i32* null, i32 %25)
  br label %203

27:                                               ; preds = %2
  %28 = load i32, i32* @BTA_ID_AG, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bta_sys_sco_use(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @bta_ag_sco_is_open(%struct.TYPE_17__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = call i32 @bta_ag_inband_enabled(%struct.TYPE_17__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BTA_AG_FEAT_NOSCO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43, %39, %27
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = bitcast %struct.TYPE_18__* %52 to i32*
  %54 = call i32 @bta_ag_send_ring(%struct.TYPE_17__* %51, i32* %53)
  br label %74

55:                                               ; preds = %43
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HSP_VERSION_1_2, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @BTA_AG_POST_SCO_NONE, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @BTA_AG_POST_SCO_RING, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = bitcast %struct.TYPE_18__* %71 to i32*
  %73 = call i32 @bta_ag_sco_open(%struct.TYPE_17__* %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %50
  br label %203

75:                                               ; preds = %2, %2
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 133
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = call i32 @bta_sys_stop_timer(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BTA_AG_FEAT_NOSCO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_17__* %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = bitcast %struct.TYPE_18__* %101 to i32*
  %103 = call i32 @bta_ag_sco_open(%struct.TYPE_17__* %100, i32* %102)
  br label %117

104:                                              ; preds = %91
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BTA_AG_HANDLE_NONE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = bitcast %struct.TYPE_18__* %113 to i32*
  %115 = call i32 @bta_ag_sco_close(%struct.TYPE_17__* %112, i32* %114)
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %84
  br label %203

119:                                              ; preds = %2
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 4
  %122 = call i32 @bta_sys_stop_timer(i32* %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = call i32 @bta_ag_sco_is_open(%struct.TYPE_17__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = call i32 @bta_ag_sco_is_opening(%struct.TYPE_17__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126, %119
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BTA_AG_FEAT_NOSCO, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = bitcast %struct.TYPE_18__* %139 to i32*
  %141 = call i32 @bta_ag_sco_close(%struct.TYPE_17__* %138, i32* %140)
  br label %151

142:                                              ; preds = %130, %126
  %143 = load i32, i32* @BTA_ID_AG, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bta_sys_sco_unuse(i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %142, %137
  br label %203

152:                                              ; preds = %2
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  br label %203

163:                                              ; preds = %2
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BTA_AG_OK_ERROR, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %163
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @bta_ag_send_result(%struct.TYPE_17__* %179, i32 %180, i32* %184, i32 0)
  br label %186

186:                                              ; preds = %178, %170
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BTA_AG_OK_DONE, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %195 = call i32 @bta_ag_send_ok(%struct.TYPE_17__* %194)
  br label %196

196:                                              ; preds = %193, %186
  br label %201

197:                                              ; preds = %163
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %199 = load i32, i32* @BTA_AG_ERR_INV_CHAR_IN_TSTR, align 4
  %200 = call i32 @bta_ag_send_error(%struct.TYPE_17__* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %196
  br label %203

202:                                              ; preds = %2
  br label %203

203:                                              ; preds = %202, %201, %152, %151, %118, %74, %19
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @bta_ag_send_result(%struct.TYPE_17__*, i32, i32*, i32) #1

declare dso_local i32 @bta_sys_sco_use(i32, i32, i32) #1

declare dso_local i32 @bta_ag_sco_is_open(%struct.TYPE_17__*) #1

declare dso_local i32 @bta_ag_inband_enabled(%struct.TYPE_17__*) #1

declare dso_local i32 @bta_ag_send_ring(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @bta_ag_sco_open(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @bta_sys_stop_timer(i32*) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_17__*) #1

declare dso_local i32 @bta_ag_sco_close(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @bta_ag_sco_is_opening(%struct.TYPE_17__*) #1

declare dso_local i32 @bta_sys_sco_unuse(i32, i32, i32) #1

declare dso_local i32 @bta_ag_send_ok(%struct.TYPE_17__*) #1

declare dso_local i32 @bta_ag_send_error(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
