; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_rej.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"l2cu_send_peer_config_rej: data_len=%d, rej_len=%d\00", align 1
@BT_HDR_SIZE = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CONFIG_RSP_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"L2CAP - cfg_rej pkt size exceeds buffer design max limit.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"L2CAP - no buffer for cfg_rej\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@L2CAP_PKT_START_NON_FLUSHABLE = common dso_local global i32 0, align 4
@L2CAP_PKT_TYPE_SHIFT = common dso_local global i32 0, align 4
@L2CAP_PKT_START = common dso_local global i32 0, align 4
@L2CAP_SIGNALLING_CID = common dso_local global i32 0, align 4
@L2CAP_CMD_CONFIG_RSP = common dso_local global i32 0, align 4
@L2CAP_CFG_UNKNOWN_OPTIONS = common dso_local global i32 0, align 4
@L2CAP_CFG_OPTION_OVERHEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"L2CAP - cfg_rej exceeds allocated buffer\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"L2CAP - cfg_rej pkt hci_len=%d, l2cap_len=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_config_rej(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @BT_HDR_SIZE, align 4
  %22 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @L2CAP_CONFIG_RSP_LEN, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 65535, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %222

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i64 @osi_malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %9, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %222

47:                                               ; preds = %37
  %48 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 1
  %53 = bitcast %struct.TYPE_7__* %52 to i32*
  %54 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %14, align 8
  %57 = call i32 (...) @BTM_ReadLocalFeatures()
  %58 = call i64 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  %61 = load i32*, i32** %14, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @L2CAP_PKT_START_NON_FLUSHABLE, align 4
  %68 = load i32, i32* @L2CAP_PKT_TYPE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  %71 = call i32 @UINT16_TO_STREAM(i32* %61, i32 %70)
  br label %84

72:                                               ; preds = %47
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @L2CAP_PKT_START, align 4
  %80 = load i32, i32* @L2CAP_PKT_TYPE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = call i32 @UINT16_TO_STREAM(i32* %73, i32 %82)
  br label %84

84:                                               ; preds = %72, %60
  %85 = load i32*, i32** %14, align 8
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %14, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %90 = load i32, i32* @L2CAP_CONFIG_RSP_LEN, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @UINT16_TO_STREAM(i32* %88, i32 %93)
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* @L2CAP_SIGNALLING_CID, align 4
  %97 = call i32 @UINT16_TO_STREAM(i32* %95, i32 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* @L2CAP_CMD_CONFIG_RSP, align 4
  %100 = call i32 @UINT8_TO_STREAM(i32* %98, i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @UINT8_TO_STREAM(i32* %101, i32 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* @L2CAP_CONFIG_RSP_LEN, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @UINT16_TO_STREAM(i32* %106, i32 %109)
  %111 = load i32*, i32** %14, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @UINT16_TO_STREAM(i32* %111, i32 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @UINT16_TO_STREAM(i32* %116, i32 0)
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* @L2CAP_CFG_UNKNOWN_OPTIONS, align 4
  %120 = call i32 @UINT16_TO_STREAM(i32* %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %12, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32* %125, i32** %16, align 8
  br label %126

126:                                              ; preds = %193, %84
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = icmp ult i32* %127, %128
  br i1 %129, label %130, label %194

130:                                              ; preds = %126
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %17, align 4
  %137 = and i32 %136, 127
  switch i32 %137, label %145 [
    i32 129, label %138
    i32 130, label %138
    i32 128, label %138
  ]

138:                                              ; preds = %130, %130, %130
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32*, i32** %6, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %6, align 8
  br label %193

145:                                              ; preds = %130
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %145
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, 128
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %151
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %159 = add nsw i32 %157, %158
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %155
  %162 = load i32*, i32** %14, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @memcpy(i32* %162, i32* %163, i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32*, i32** %14, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %14, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %12, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %12, align 4
  br label %182

179:                                              ; preds = %155
  %180 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32*, i32** %16, align 8
  store i32* %181, i32** %6, align 8
  br label %193

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %151
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @L2CAP_CFG_OPTION_OVERHEAD, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32*, i32** %6, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %6, align 8
  br label %192

190:                                              ; preds = %145
  %191 = load i32*, i32** %16, align 8
  store i32* %191, i32** %6, align 8
  br label %192

192:                                              ; preds = %190, %183
  br label %193

193:                                              ; preds = %192, %179, %138
  br label %126

194:                                              ; preds = %126
  %195 = load i32*, i32** %14, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = sub nsw i64 %200, 2
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %10, align 4
  %203 = load i32*, i32** %15, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @UINT16_TO_STREAM(i32* %203, i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %212 = load i32, i32* @L2CAP_CONFIG_RSP_LEN, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %210, i32 %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %221 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_8__* %219, i32* null, %struct.TYPE_7__* %220)
  br label %222

222:                                              ; preds = %194, %45, %35
  ret void
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i64 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32) #1

declare dso_local i32 @BTM_ReadLocalFeatures(...) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_8__*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
