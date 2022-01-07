; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_send_S_frame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_send_S_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__, i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i32 }

@CST_OPEN = common dso_local global i64 0, align 8
@L2CAP_FCR_P_BIT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_SHIFT = common dso_local global i64 0, align 8
@L2CAP_FCR_S_FRAME_BIT = common dso_local global i64 0, align 8
@L2CAP_FCR_REQ_SEQ_BITS_SHIFT = common dso_local global i64 0, align 8
@L2CAP_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_FCR_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_FCS_LEN = common dso_local global i64 0, align 8
@L2CAP_BYPASS_FCS = common dso_local global i64 0, align 8
@L2CAP_NON_FLUSHABLE_PKT = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"L2CAP eRTM Tx S-frame  CID: 0x%04x  ctrlword: 0x%04x  Type: %s  ReqSeq: %u  P: %u  F: %u\00", align 1
@SUP_types = common dso_local global i32* null, align 8
@L2CAP_FCR_REQ_SEQ_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_P_BIT_SHIFT = common dso_local global i64 0, align 8
@L2CAP_FCR_F_BIT = common dso_local global i64 0, align 8
@L2CAP_FCR_F_BIT_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"                  Buf Len: %u\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"l2c_fcr_send_S_frame(No Resources) cid 0x%04x, Type: 0x%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_fcr_send_S_frame(%struct.TYPE_14__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CST_OPEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %3
  br label %239

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @L2CAP_FCR_P_BIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = call i32 @l2c_fcr_stop_timer(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = call i32 @l2c_fcr_start_timer(%struct.TYPE_14__* %45)
  br label %47

47:                                               ; preds = %38, %26
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %50 = shl i64 %48, %49
  %51 = load i64, i64* @L2CAP_FCR_S_FRAME_BIT, align 8
  %52 = or i64 %50, %51
  store i64 %52, i64* %9, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = load i64, i64* %9, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %9, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* @L2CAP_CMD_BUF_SIZE, align 4
  %65 = call i64 @osi_malloc(i32 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %7, align 8
  %67 = icmp ne %struct.TYPE_15__* %66, null
  br i1 %67, label %68, label %233

68:                                               ; preds = %47
  %69 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %73 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 1
  %79 = bitcast %struct.TYPE_15__* %78 to i32*
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %87 = load i64, i64* @L2CAP_FCS_LEN, align 8
  %88 = add i64 %86, %87
  %89 = call i32 @UINT16_TO_STREAM(i32* %85, i64 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @UINT16_TO_STREAM(i32* %90, i64 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @UINT16_TO_STREAM(i32* %95, i64 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @L2CAP_BYPASS_FCS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %68
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = call i64 @l2c_fcr_tx_get_fcs(%struct.TYPE_15__* %104)
  store i64 %105, i64* %10, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @UINT16_TO_STREAM(i32* %106, i64 %107)
  %109 = load i64, i64* @L2CAP_FCS_LEN, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %120

114:                                              ; preds = %68
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 -6
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %119 = call i32 @UINT16_TO_STREAM(i32* %117, i64 %118)
  br label %120

120:                                              ; preds = %114, %103
  %121 = load i32, i32* @L2CAP_NON_FLUSHABLE_PKT, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = call i32 @l2cu_set_acl_hci_header(%struct.TYPE_15__* %124, %struct.TYPE_14__* %125)
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* @L2CAP_FCR_SUP_BITS, align 8
  %129 = and i64 %127, %128
  %130 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %131 = lshr i64 %129, %130
  %132 = icmp eq i64 %131, 1
  br i1 %132, label %140, label %133

133:                                              ; preds = %120
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @L2CAP_FCR_SUP_BITS, align 8
  %136 = and i64 %134, %135
  %137 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %138 = lshr i64 %136, %137
  %139 = icmp eq i64 %138, 3
  br i1 %139, label %140, label %174

140:                                              ; preds = %133, %120
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %9, align 8
  %146 = load i32*, i32** @SUP_types, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* @L2CAP_FCR_SUP_BITS, align 8
  %149 = and i64 %147, %148
  %150 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %151 = lshr i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %156 = and i64 %154, %155
  %157 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %158 = lshr i64 %156, %157
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* @L2CAP_FCR_P_BIT, align 8
  %161 = and i64 %159, %160
  %162 = load i64, i64* @L2CAP_FCR_P_BIT_SHIFT, align 8
  %163 = lshr i64 %161, %162
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %166 = and i64 %164, %165
  %167 = load i64, i64* @L2CAP_FCR_F_BIT_SHIFT, align 8
  %168 = lshr i64 %166, %167
  %169 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %144, i64 %145, i32 %153, i64 %158, i64 %163, i64 %168)
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %172)
  br label %208

174:                                              ; preds = %133
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %9, align 8
  %180 = load i32*, i32** @SUP_types, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @L2CAP_FCR_SUP_BITS, align 8
  %183 = and i64 %181, %182
  %184 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %185 = lshr i64 %183, %184
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %190 = and i64 %188, %189
  %191 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %192 = lshr i64 %190, %191
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* @L2CAP_FCR_P_BIT, align 8
  %195 = and i64 %193, %194
  %196 = load i64, i64* @L2CAP_FCR_P_BIT_SHIFT, align 8
  %197 = lshr i64 %195, %196
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %200 = and i64 %198, %199
  %201 = load i64, i64* @L2CAP_FCR_F_BIT_SHIFT, align 8
  %202 = lshr i64 %200, %201
  %203 = call i32 (i8*, i64, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %178, i64 %179, i32 %187, i64 %192, i64 %197, i64 %202)
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, i64, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %174, %140
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %213 = call i32 @l2c_link_check_send_pkts(i32 %211, i32* null, %struct.TYPE_15__* %212)
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  store i64 %217, i64* %220, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %208
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = call i32 @btu_stop_quick_timer(%struct.TYPE_12__* %230)
  br label %232

232:                                              ; preds = %227, %208
  br label %239

233:                                              ; preds = %47
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i64, i64* %5, align 8
  %238 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %236, i64 %237)
  br label %239

239:                                              ; preds = %25, %233, %232
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @l2c_fcr_stop_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @l2c_fcr_start_timer(%struct.TYPE_14__*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #1

declare dso_local i64 @l2c_fcr_tx_get_fcs(%struct.TYPE_15__*) #1

declare dso_local i32 @l2cu_set_acl_hci_header(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64, ...) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, ...) #1

declare dso_local i32 @l2c_link_check_send_pkts(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @btu_stop_quick_timer(%struct.TYPE_12__*) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
