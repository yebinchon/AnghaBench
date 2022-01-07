; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_get_next_xmit_sdu_seg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_get_next_xmit_sdu_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@L2CAP_MAX_HEADER_FCS = common dso_local global i64 0, align 8
@L2CAP_MIN_OFFSET = common dso_local global i64 0, align 8
@L2CAP_SDU_LEN_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"L2CAP - cannot get buffer for segmentation, max_pdu: %u\00", align 1
@L2CAP_PKT_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_FCR_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_SDU_LEN_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_FCR_START_SDU = common dso_local global i32 0, align 4
@L2CAP_FCR_CONT_SDU = common dso_local global i32 0, align 4
@L2CAP_FCR_END_SDU = common dso_local global i32 0, align 4
@L2CAP_FCR_UNSEG_SDU = common dso_local global i32 0, align 4
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"L2CAP - no buffer for xmit cloning, CID: 0x%04x  Length: %u\00", align 1
@L2CAP_BYPASS_FCS = common dso_local global i64 0, align 8
@L2CAP_FCS_LEN = common dso_local global i32 0, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @l2c_fcr_get_next_xmit_sdu_seg(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @fixed_queue_dequeue(i32 %28, i32 0)
  %30 = inttoptr i64 %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = load i64, i64* @TRUE, align 8
  %37 = call i32 @prepare_I_frame(%struct.TYPE_16__* %34, %struct.TYPE_17__* %35, i64 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %3, align 8
  br label %368

67:                                               ; preds = %2
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @L2CAP_MAX_HEADER_FCS, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @L2CAP_MAX_HEADER_FCS, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* %5, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @L2CAP_MAX_HEADER_FCS, align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %77, %71, %67
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @fixed_queue_try_peek_first(i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %10, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %13, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %147

93:                                               ; preds = %81
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %6, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %9, align 8
  br label %106

104:                                              ; preds = %93
  %105 = load i64, i64* @TRUE, align 8
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %104, %98
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = load i64, i64* @L2CAP_MIN_OFFSET, align 8
  %109 = load i64, i64* @L2CAP_SDU_LEN_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %13, align 8
  %112 = call %struct.TYPE_17__* @l2c_fcr_clone_buf(%struct.TYPE_17__* %107, i64 %110, i64 %111)
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %11, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %114 = icmp ne %struct.TYPE_17__* %113, null
  br i1 %114, label %115, label %143

115:                                              ; preds = %106
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %146

143:                                              ; preds = %106
  %144 = load i64, i64* %13, align 8
  %145 = call i32 (i8*, i64, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %144)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %368

146:                                              ; preds = %115
  br label %165

147:                                              ; preds = %81
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @fixed_queue_dequeue(i32 %150, i32 0)
  %152 = inttoptr i64 %151 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %11, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i64, i64* @TRUE, align 8
  store i64 %158, i64* %8, align 8
  br label %159

159:                                              ; preds = %157, %147
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %159, %146
  %166 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %167 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %168 = add nsw i64 %166, %167
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  %173 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %174 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %175 = add nsw i64 %173, %174
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 8
  %182 = load i64, i64* %6, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %165
  %185 = load i64, i64* @L2CAP_SDU_LEN_OVERHEAD, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %188, %185
  store i64 %189, i64* %187, align 8
  %190 = load i64, i64* @L2CAP_SDU_LEN_OVERHEAD, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  br label %197

197:                                              ; preds = %184, %165
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i64 1
  %200 = bitcast %struct.TYPE_17__* %199 to i32*
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  store i32* %204, i32** %12, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %211 = sub nsw i64 %209, %210
  %212 = call i32 @UINT16_TO_STREAM(i32* %205, i64 %211)
  %213 = load i32*, i32** %12, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @UINT16_TO_STREAM(i32* %213, i64 %216)
  %218 = load i64, i64* %6, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %197
  %221 = load i32*, i32** %12, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32* %222, i32** %12, align 8
  %223 = load i32*, i32** %12, align 8
  %224 = load i64, i64* %9, align 8
  %225 = call i32 @UINT16_TO_STREAM(i32* %223, i64 %224)
  %226 = load i32, i32* @L2CAP_FCR_START_SDU, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load i64, i64* @FALSE, align 8
  store i64 %231, i64* %6, align 8
  br label %258

232:                                              ; preds = %197
  %233 = load i64, i64* %7, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32, i32* @L2CAP_FCR_CONT_SDU, align 4
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %257

241:                                              ; preds = %232
  %242 = load i64, i64* %8, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* @L2CAP_FCR_END_SDU, align 4
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %256

250:                                              ; preds = %241
  %251 = load i32, i32* @L2CAP_FCR_UNSEG_SDU, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %244
  br label %257

257:                                              ; preds = %256, %235
  br label %258

258:                                              ; preds = %257, %220
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %261 = load i64, i64* @FALSE, align 8
  %262 = call i32 @prepare_I_frame(%struct.TYPE_16__* %259, %struct.TYPE_17__* %260, i64 %261)
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %366

270:                                              ; preds = %258
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %272 = load i64, i64* @HCI_DATA_PREAMBLE_SIZE, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = call %struct.TYPE_17__* @l2c_fcr_clone_buf(%struct.TYPE_17__* %271, i64 %272, i64 %276)
  store %struct.TYPE_17__* %277, %struct.TYPE_17__** %14, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %279 = icmp ne %struct.TYPE_17__* %278, null
  br i1 %279, label %307, label %280

280:                                              ; preds = %270
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i8*, i64, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %283, i32 %286)
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @L2CAP_BYPASS_FCS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %280
  %294 = load i32, i32* @L2CAP_FCS_LEN, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sub nsw i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %293, %280
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %305 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %306 = call i32 @fixed_queue_enqueue(i32 %303, %struct.TYPE_17__* %304, i32 %305)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %368

307:                                              ; preds = %270
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i64 1
  %310 = bitcast %struct.TYPE_17__* %309 to i32*
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  store i32* %319, i32** %12, align 8
  %320 = load i32*, i32** %12, align 8
  %321 = call i32 (...) @osi_time_get_os_boottime_ms()
  %322 = call i32 @UINT32_TO_STREAM(i32* %320, i32 %321)
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @L2CAP_BYPASS_FCS, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %307
  %329 = load i32, i32* @L2CAP_FCS_LEN, align 4
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = sub nsw i32 %332, %329
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %328, %307
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 3
  store i32 %337, i32* %339, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %345 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %346 = call i32 @fixed_queue_enqueue(i32 %343, %struct.TYPE_17__* %344, i32 %345)
  br label %347

347:                                              ; preds = %334
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %352, align 4
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, %358
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %347, %258
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %367, %struct.TYPE_17__** %3, align 8
  br label %368

368:                                              ; preds = %366, %299, %143, %33
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %369
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @prepare_I_frame(%struct.TYPE_16__*, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @fixed_queue_try_peek_first(i32) #1

declare dso_local %struct.TYPE_17__* @l2c_fcr_clone_buf(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64, ...) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @osi_time_get_os_boottime_ms(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
