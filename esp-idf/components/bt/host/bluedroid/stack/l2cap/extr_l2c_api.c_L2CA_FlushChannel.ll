; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_FlushChannel.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_FlushChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (i32, i64)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"L2CA_FlushChannel()  abnormally returning 0  CID: 0x%04x\00", align 1
@L2CAP_FLUSH_CHANS_GET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"L2CA_FlushChannel (FLUSH)  CID: 0x%04x  NumToFlush: %d  QC: %u  pFirst: %p\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"L2CA_FlushChannel (QUERY)  CID: 0x%04x\00", align 1
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"L2CA_FlushChannel()  flushed: %u + %u,  num_left: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @L2CA_FlushChannel(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.TYPE_19__* @l2cu_find_ccb_by_cid(i32* null, i64 %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = icmp eq %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i64 0, i64* %3, align 8
  br label %224

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @L2CAP_FLUSH_CHANS_GET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @fixed_queue_length(i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fixed_queue_try_peek_first(i32 %41)
  %43 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34, i64 %38, i32 %42)
  br label %47

44:                                               ; preds = %28
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %125

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @L2CAP_FLUSH_CHANS_GET, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = call i32 (...) @BTM_ReadLocalFeatures()
  %61 = call i64 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = call i64 (...) @BTM_GetNumScoLinks()
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @l2cb, i32 0, i32 0), align 8
  %68 = load i64, i64* @FALSE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i64, i64* @TRUE, align 8
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @l2cb, i32 0, i32 0), align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @btsnd_hcic_enhanced_flush(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %63, %59
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @list_begin(i32 %81)
  store i32* %82, i32** %11, align 8
  br label %83

83:                                               ; preds = %123, %78
  %84 = load i64, i64* %5, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @list_end(i32 %90)
  %92 = icmp ne i32* %87, %91
  br label %93

93:                                               ; preds = %86, %83
  %94 = phi i1 [ false, %83 ], [ %92, %86 ]
  br i1 %94, label %95, label %124

95:                                               ; preds = %93
  %96 = load i32*, i32** %11, align 8
  %97 = call i64 @list_node(i32* %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %12, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @list_next(i32* %99)
  store i32* %100, i32** %11, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %95
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %9, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %120 = call i32 @list_remove(i32 %118, %struct.TYPE_20__* %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %122 = call i32 @osi_free(%struct.TYPE_20__* %121)
  br label %123

123:                                              ; preds = %111, %105, %95
  br label %83

124:                                              ; preds = %93
  br label %125

125:                                              ; preds = %124, %47
  br label %126

126:                                              ; preds = %149, %125
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @fixed_queue_is_empty(i32 %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br label %136

136:                                              ; preds = %129, %126
  %137 = phi i1 [ false, %126 ], [ %135, %129 ]
  br i1 %137, label %138, label %154

138:                                              ; preds = %136
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @fixed_queue_dequeue(i32 %141, i32 0)
  %143 = inttoptr i64 %142 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %13, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %145 = icmp ne %struct.TYPE_20__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %148 = call i32 @osi_free(%struct.TYPE_20__* %147)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i64, i64* %5, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %10, align 8
  br label %126

154:                                              ; preds = %136
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = icmp ne %struct.TYPE_17__* %157, null
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32 (i32, i64)*, i32 (i32, i64)** %164, align 8
  %166 = icmp ne i32 (i32, i64)* %165, null
  br i1 %166, label %167, label %182

167:                                              ; preds = %159
  %168 = load i64, i64* %10, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32 (i32, i64)*, i32 (i32, i64)** %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %10, align 8
  %181 = call i32 %176(i32 %179, i64 %180)
  br label %182

182:                                              ; preds = %170, %167, %159, %154
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32* @list_begin(i32 %185)
  store i32* %186, i32** %14, align 8
  br label %187

187:                                              ; preds = %207, %182
  %188 = load i32*, i32** %14, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32* @list_end(i32 %191)
  %193 = icmp ne i32* %188, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load i32*, i32** %14, align 8
  %196 = call i64 @list_node(i32* %195)
  %197 = inttoptr i64 %196 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %197, %struct.TYPE_20__** %15, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %4, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  %204 = load i64, i64* %8, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %8, align 8
  br label %206

206:                                              ; preds = %203, %194
  br label %207

207:                                              ; preds = %206
  %208 = load i32*, i32** %14, align 8
  %209 = call i32* @list_next(i32* %208)
  store i32* %209, i32** %14, align 8
  br label %187

210:                                              ; preds = %187
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @fixed_queue_length(i32 %213)
  %215 = load i64, i64* %8, align 8
  %216 = add nsw i64 %215, %214
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %217, i64 %218, i64 %219)
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %222 = call i32 @l2cu_check_channel_congestion(%struct.TYPE_19__* %221)
  %223 = load i64, i64* %8, align 8
  store i64 %223, i64* %3, align 8
  br label %224

224:                                              ; preds = %210, %25
  %225 = load i64, i64* %3, align 8
  ret i64 %225
}

declare dso_local %struct.TYPE_19__* @l2cu_find_ccb_by_cid(i32*, i64) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64, ...) #1

declare dso_local i64 @fixed_queue_length(i32) #1

declare dso_local i32 @fixed_queue_try_peek_first(i32) #1

declare dso_local i64 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32) #1

declare dso_local i32 @BTM_ReadLocalFeatures(...) #1

declare dso_local i64 @BTM_GetNumScoLinks(...) #1

declare dso_local i32 @btsnd_hcic_enhanced_flush(i32, i32) #1

declare dso_local i32* @list_begin(i32) #1

declare dso_local i32* @list_end(i32) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i32 @list_remove(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @osi_free(%struct.TYPE_20__*) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, i64, i64) #1

declare dso_local i32 @l2cu_check_channel_congestion(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
