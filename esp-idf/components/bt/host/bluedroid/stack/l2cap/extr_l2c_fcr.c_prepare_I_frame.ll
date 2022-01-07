; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_prepare_I_frame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_prepare_I_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_FCR_REQ_SEQ_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_F_BIT = common dso_local global i64 0, align 8
@L2CAP_FCR_SEG_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_TX_SEQ_BITS_SHIFT = common dso_local global i64 0, align 8
@L2CAP_FCR_SEQ_MODULO = common dso_local global i32 0, align 4
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_FCR_REQ_SEQ_BITS_SHIFT = common dso_local global i64 0, align 8
@L2CAP_BYPASS_FCS = common dso_local global i64 0, align 8
@L2CAP_FCS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"L2CAP eRTM ReTx I-frame  CID: 0x%04x  Len: %u  SAR: %s  TxSeq: %u  ReqSeq: %u  F: %u\00", align 1
@SAR_types = common dso_local global i32* null, align 8
@L2CAP_FCR_SAR_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_SAR_BITS_SHIFT = common dso_local global i64 0, align 8
@L2CAP_FCR_TX_SEQ_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_F_BIT_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"L2CAP eRTM Tx I-frame CID: 0x%04x  Len: %u  SAR: %-12s  TxSeq: %u  ReqSeq: %u  F: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i64)* @prepare_I_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_I_frame(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 1
  %33 = bitcast %struct.TYPE_16__* %32 to i32*
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @STREAM_TO_UINT16(i64 %42, i32* %43)
  %45 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %46 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %47 = add i64 %45, %46
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %10, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %73

51:                                               ; preds = %3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @L2CAP_FCR_SEG_BITS, align 8
  %56 = and i64 %54, %55
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @L2CAP_FCR_TX_SEQ_BITS_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = load i64, i64* %10, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %67, %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %51, %30
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %73
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %86 = load i64, i64* %10, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %93 = shl i64 %91, %92
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %10, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %88
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = call i32 @btu_stop_quick_timer(%struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %108, %88
  br label %114

114:                                              ; preds = %113, %73
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 1
  %117 = bitcast %struct.TYPE_16__* %116 to i32*
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32* %125, i32** %8, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @UINT16_TO_STREAM(i32* %126, i64 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @L2CAP_BYPASS_FCS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %114
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 1
  %137 = bitcast %struct.TYPE_16__* %136 to i32*
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32* %142, i32** %8, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @L2CAP_FCS_LEN, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = call i32 @UINT16_TO_STREAM(i32* %143, i64 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = call i64 @l2c_fcr_tx_get_fcs(%struct.TYPE_16__* %153)
  store i64 %154, i64* %9, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 1
  %157 = bitcast %struct.TYPE_16__* %156 to i32*
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  store i32* %167, i32** %8, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @UINT16_TO_STREAM(i32* %168, i64 %169)
  %171 = load i32, i32* @L2CAP_FCS_LEN, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %134, %114
  %177 = load i64, i64* %6, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %210

179:                                              ; preds = %176
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** @SAR_types, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* @L2CAP_FCR_SAR_BITS, align 8
  %189 = and i64 %187, %188
  %190 = load i64, i64* @L2CAP_FCR_SAR_BITS_SHIFT, align 8
  %191 = lshr i64 %189, %190
  %192 = getelementptr inbounds i32, i32* %186, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* @L2CAP_FCR_TX_SEQ_BITS, align 8
  %196 = and i64 %194, %195
  %197 = load i64, i64* @L2CAP_FCR_TX_SEQ_BITS_SHIFT, align 8
  %198 = lshr i64 %196, %197
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %201 = and i64 %199, %200
  %202 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %203 = lshr i64 %201, %202
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %206 = and i64 %204, %205
  %207 = load i64, i64* @L2CAP_FCR_F_BIT_SHIFT, align 8
  %208 = lshr i64 %206, %207
  %209 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %185, i32 %193, i64 %198, i64 %203, i64 %208)
  br label %241

210:                                              ; preds = %176
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32*, i32** @SAR_types, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* @L2CAP_FCR_SAR_BITS, align 8
  %220 = and i64 %218, %219
  %221 = load i64, i64* @L2CAP_FCR_SAR_BITS_SHIFT, align 8
  %222 = lshr i64 %220, %221
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* @L2CAP_FCR_TX_SEQ_BITS, align 8
  %227 = and i64 %225, %226
  %228 = load i64, i64* @L2CAP_FCR_TX_SEQ_BITS_SHIFT, align 8
  %229 = lshr i64 %227, %228
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %232 = and i64 %230, %231
  %233 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %234 = lshr i64 %232, %233
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %237 = and i64 %235, %236
  %238 = load i64, i64* @L2CAP_FCR_F_BIT_SHIFT, align 8
  %239 = lshr i64 %237, %238
  %240 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %213, i32 %216, i32 %224, i64 %229, i64 %234, i64 %239)
  br label %241

241:                                              ; preds = %210, %179
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = call i32 @l2c_fcr_start_timer(%struct.TYPE_15__* %250)
  br label %252

252:                                              ; preds = %249, %241
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @btu_stop_quick_timer(%struct.TYPE_11__*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #1

declare dso_local i64 @l2c_fcr_tx_get_fcs(%struct.TYPE_16__*) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @l2c_fcr_start_timer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
