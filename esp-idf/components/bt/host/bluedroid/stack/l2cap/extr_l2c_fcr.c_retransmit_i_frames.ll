; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_retransmit_i_frames.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_retransmit_i_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_16__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [89 x i8] c"Max Tries Exceeded:  (last_acq: %d  CID: 0x%04x  num_tries: %u (max: %u) ack_q_count: %u\00", align 1
@FALSE = common dso_local global i32 0, align 4
@L2C_FCR_RETX_ALL_PKTS = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_SEQ_BITS = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_SEQ_BITS_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"retransmit_i_frames()   cur seq: %u  looking for: %u\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"retransmit_i_frames() UNKNOWN seq: %u  q_count: %u\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @retransmit_i_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retransmit_i_frames(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = icmp ne %struct.TYPE_20__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fixed_queue_is_empty(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %36, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %32
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @fixed_queue_length(i32 %63)
  %65 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %50, i64 %54, i64 %59, i64 %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_20__* %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %282

69:                                               ; preds = %32, %25, %2
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @fixed_queue_is_empty(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @fixed_queue_get_list(i32 %80)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32* @list_begin(i32* %82)
  store i32* %83, i32** %11, align 8
  br label %84

84:                                               ; preds = %76, %69
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @L2C_FCR_RETX_ALL_PKTS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %145

88:                                               ; preds = %84
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %132

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %128, %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32* @list_end(i32* %94)
  %96 = icmp ne i32* %93, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %92
  %98 = load i32*, i32** %11, align 8
  %99 = call i64 @list_node(i32* %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %6, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i64 1
  %103 = bitcast %struct.TYPE_21__* %102 to i32*
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @STREAM_TO_UINT16(i32 %112, i32* %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @L2CAP_FCR_TX_SEQ_BITS, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @L2CAP_FCR_TX_SEQ_BITS_SHIFT, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %97
  br label %131

127:                                              ; preds = %97
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** %11, align 8
  %130 = call i32* @list_next(i32* %129)
  store i32* %130, i32** %11, align 8
  br label %92

131:                                              ; preds = %126, %92
  br label %132

132:                                              ; preds = %131, %88
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = icmp ne %struct.TYPE_21__* %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @fixed_queue_length(i32 %140)
  %142 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %136, i64 %141)
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %282

144:                                              ; preds = %132
  br label %213

145:                                              ; preds = %84
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32* @list_begin(i32* %150)
  store i32* %151, i32** %12, align 8
  br label %152

152:                                              ; preds = %189, %145
  %153 = load i32*, i32** %12, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32* @list_end(i32* %158)
  %160 = icmp ne i32* %153, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %152
  %162 = load i32*, i32** %12, align 8
  %163 = call i64 @list_node(i32* %162)
  %164 = inttoptr i64 %163 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %164, %struct.TYPE_21__** %13, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = call i32* @list_next(i32* %165)
  store i32* %166, i32** %12, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %161
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %171
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %186 = call i32 @list_remove(i32* %184, %struct.TYPE_21__* %185)
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %188 = call i32 @osi_free(%struct.TYPE_21__* %187)
  br label %189

189:                                              ; preds = %179, %171, %161
  br label %152

190:                                              ; preds = %152
  br label %191

191:                                              ; preds = %199, %190
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @fixed_queue_is_empty(i32 %195)
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  br i1 %198, label %199, label %206

199:                                              ; preds = %191
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call %struct.TYPE_21__* @fixed_queue_dequeue(i32 %203, i32 0)
  %205 = call i32 @osi_free(%struct.TYPE_21__* %204)
  br label %191

206:                                              ; preds = %191
  %207 = load i32*, i32** %10, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32*, i32** %10, align 8
  %211 = call i32* @list_begin(i32* %210)
  store i32* %211, i32** %11, align 8
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %144
  %214 = load i32*, i32** %10, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %261

216:                                              ; preds = %213
  br label %217

217:                                              ; preds = %259, %216
  %218 = load i32*, i32** %11, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = call i32* @list_end(i32* %219)
  %221 = icmp ne i32* %218, %220
  br i1 %221, label %222, label %260

222:                                              ; preds = %217
  %223 = load i32*, i32** %11, align 8
  %224 = call i64 @list_node(i32* %223)
  %225 = inttoptr i64 %224 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %225, %struct.TYPE_21__** %6, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = call i32* @list_next(i32* %226)
  store i32* %227, i32** %11, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call %struct.TYPE_21__* @l2c_fcr_clone_buf(%struct.TYPE_21__* %228, i32 %231, i32 %234)
  store %struct.TYPE_21__* %235, %struct.TYPE_21__** %14, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %237 = icmp ne %struct.TYPE_21__* %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %222
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %249 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %250 = call i32 @fixed_queue_enqueue(i32 %247, %struct.TYPE_21__* %248, i32 %249)
  br label %251

251:                                              ; preds = %238, %222
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @L2C_FCR_RETX_ALL_PKTS, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %257 = icmp eq %struct.TYPE_21__* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %255, %251
  br label %260

259:                                              ; preds = %255
  br label %217

260:                                              ; preds = %258, %217
  br label %261

261:                                              ; preds = %260, %213
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_16__* %264, i32* null, i32* null)
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @fixed_queue_length(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %261
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %275, align 8
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = call i32 @l2c_fcr_start_timer(%struct.TYPE_20__* %278)
  br label %280

280:                                              ; preds = %272, %261
  %281 = load i32, i32* @TRUE, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %135, %43
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @fixed_queue_length(i32) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_20__*) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32, i64) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @osi_free(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @fixed_queue_dequeue(i32, i32) #1

declare dso_local %struct.TYPE_21__* @l2c_fcr_clone_buf(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @l2c_fcr_start_timer(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
