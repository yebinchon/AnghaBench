; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_process_service_attr_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_process_service_attr_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32*, i64, i64, i64, i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"process_service_attr_rsp raw inc:%d\0A\00", align 1
@SDP_RAW_DATA_INCLUDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ID & len: 0x%02x-%02x-%02x-%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"list_byte_count:%d\0A\00", align 1
@SDP_MAX_LIST_BYTE_COUNT = common dso_local global i64 0, align 8
@SDP_INVALID_PDU_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"list_len: %d, list_byte_count: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"SDP - no gki buf to save rsp\0A\00", align 1
@SDP_NO_RESOURCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"list_len: %d(attr_rsp)\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"*p_reply:%d(%d)\0A\00", align 1
@SDP_MAX_CONTINUATION_LEN = common dso_local global i32 0, align 4
@SDP_INVALID_CONT_STATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"process_service_attr_rsp\0A\00", align 1
@SDP_DB_FULL = common dso_local global i32 0, align 4
@SDP_DATA_BUF_SIZE = common dso_local global i64 0, align 8
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@SDP_PDU_SERVICE_ATTR_REQ = common dso_local global i32 0, align 4
@sdp_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTU_TTYPE_SDP = common dso_local global i32 0, align 4
@SDP_INACT_TIMEOUT = common dso_local global i32 0, align 4
@SDP_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @process_service_attr_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_service_attr_rsp(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @SDP_RAW_DATA_INCLUDED, align 4
  %14 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %148

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32* %32, i32** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @BE_STREAM_TO_UINT16(i64 %33, i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* @SDP_MAX_LIST_BYTE_COUNT, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %17
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load i32, i32* @SDP_INVALID_PDU_SIZE, align 4
  %48 = call i32 @sdp_disconnect(%struct.TYPE_11__* %46, i32 %47)
  br label %278

49:                                               ; preds = %17
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = load i64, i64* @SDP_MAX_LIST_BYTE_COUNT, align 8
  %61 = call i64 @osi_malloc(i64 %60)
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32, i32* @SDP_NO_RESOURCES, align 4
  %73 = call i32 @sdp_disconnect(%struct.TYPE_11__* %71, i32 %72)
  br label %278

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i32* %82, i32* %83, i32 %85)
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %4, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SDP_MAX_CONTINUATION_LEN, align 4
  %102 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %75
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SDP_MAX_CONTINUATION_LEN, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i32, i32* @SDP_INVALID_CONT_STATE, align 4
  %114 = call i32 @sdp_disconnect(%struct.TYPE_11__* %112, i32 %113)
  br label %278

115:                                              ; preds = %106
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %9, align 8
  br label %147

117:                                              ; preds = %75
  %118 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = load i64, i64* @FALSE, align 8
  %121 = call i32 @sdp_copy_raw_data(%struct.TYPE_11__* %119, i64 %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = call i32 @save_attr_seq(%struct.TYPE_11__* %122, i32* %126, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %117
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = load i32, i32* @SDP_DB_FULL, align 4
  %139 = call i32 @sdp_disconnect(%struct.TYPE_11__* %137, i32 %138)
  br label %278

140:                                              ; preds = %117
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %140, %115
  br label %148

148:                                              ; preds = %147, %2
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %156, label %274

156:                                              ; preds = %148
  %157 = load i64, i64* @SDP_DATA_BUF_SIZE, align 8
  %158 = call i64 @osi_malloc(i64 %157)
  %159 = inttoptr i64 %158 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %10, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %161 = icmp ne %struct.TYPE_12__* %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = load i32, i32* @SDP_NO_RESOURCES, align 4
  %165 = call i32 @sdp_disconnect(%struct.TYPE_11__* %163, i32 %164)
  br label %278

166:                                              ; preds = %156
  %167 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 1
  %172 = bitcast %struct.TYPE_12__* %171 to i32*
  %173 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32* %175, i32** %5, align 8
  store i32* %175, i32** %11, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* @SDP_PDU_SERVICE_ATTR_REQ, align 4
  %178 = call i32 @UINT8_TO_BE_STREAM(i32* %176, i32 %177)
  %179 = load i32*, i32** %11, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @UINT16_TO_BE_STREAM(i32* %179, i64 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load i32*, i32** %11, align 8
  store i32* %188, i32** %6, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32* %190, i32** %11, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 8
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @UINT32_TO_BE_STREAM(i32* %191, i32 %199)
  %201 = load i32*, i32** %11, align 8
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sdp_cb, i32 0, i32 0), align 8
  %203 = call i32 @UINT16_TO_BE_STREAM(i32* %201, i64 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %166
  %211 = load i32*, i32** %11, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32* @sdpu_build_attrib_seq(i32* %211, i32* %216, i32 %221)
  store i32* %222, i32** %11, align 8
  br label %226

223:                                              ; preds = %166
  %224 = load i32*, i32** %11, align 8
  %225 = call i32* @sdpu_build_attrib_seq(i32* %224, i32* null, i32 0)
  store i32* %225, i32** %11, align 8
  br label %226

226:                                              ; preds = %223, %210
  %227 = load i64, i64* %9, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load i32*, i32** %11, align 8
  %231 = load i32*, i32** %4, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  %235 = call i32 @memcpy(i32* %230, i32* %231, i32 %234)
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32*, i32** %11, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %11, align 8
  br label %245

242:                                              ; preds = %226
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @UINT8_TO_BE_STREAM(i32* %243, i32 0)
  br label %245

245:                                              ; preds = %242, %229
  %246 = load i32*, i32** %11, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = ptrtoint i32* %246 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = sub nsw i64 %251, 2
  store i64 %252, i64* %7, align 8
  %253 = load i32*, i32** %6, align 8
  %254 = load i64, i64* %7, align 8
  %255 = call i32 @UINT16_TO_BE_STREAM(i32* %253, i64 %254)
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %5, align 8
  %258 = ptrtoint i32* %256 to i64
  %259 = ptrtoint i32* %257 to i64
  %260 = sub i64 %258, %259
  %261 = sdiv exact i64 %260, 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %268 = call i32 @L2CA_DataWrite(i32 %266, %struct.TYPE_12__* %267)
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 5
  %271 = load i32, i32* @BTU_TTYPE_SDP, align 4
  %272 = load i32, i32* @SDP_INACT_TIMEOUT, align 4
  %273 = call i32 @btu_start_timer(i32* %270, i32 %271, i32 %272)
  br label %278

274:                                              ; preds = %148
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %276 = load i32, i32* @SDP_SUCCESS, align 4
  %277 = call i32 @sdp_disconnect(%struct.TYPE_11__* %275, i32 %276)
  br label %278

278:                                              ; preds = %45, %69, %111, %136, %162, %274, %245
  ret void
}

declare dso_local i32 @SDP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @sdp_disconnect(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @osi_malloc(i64) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sdp_copy_raw_data(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @save_attr_seq(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i64) #1

declare dso_local i32 @UINT32_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32* @sdpu_build_attrib_seq(i32*, i32*, i32) #1

declare dso_local i32 @L2CA_DataWrite(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
