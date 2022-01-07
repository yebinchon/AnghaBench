; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_process_read_multi_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_process_read_multi_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }

@GATT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"gatt_process_read_multi_req\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"Conformance tst: forced err rspvofr ReadMultiple: error status=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GATT_MAX_READ_MULTI_HANDLES = common dso_local global i64 0, align 8
@GATT_MAX_SR_PROFILES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"read permission denied : 0x%02x\00", align 1
@GATT_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"max attribute handle reached in ReadMultiple Request.\00", align 1
@GATT_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@GATT_STACK_RSP = common dso_local global i64 0, align 8
@GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_PENDING = common dso_local global i64 0, align 8
@GATT_BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_read_multi_req(%struct.TYPE_23__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64*, i64** %8, align 8
  store i64* %19, i64** %12, align 8
  %20 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %20, i64* %14, align 8
  %21 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gatt_sr_get_sec_info(i32 %28, i32 %31, i64* %15, i64* %16)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 3), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 0), align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 1), align 8
  %41 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i64*, i64** %12, align 8
  %44 = call i32 @STREAM_TO_UINT16(i32 %42, i64* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 1), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 0), align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @gatt_send_error_rsp(%struct.TYPE_23__* %45, i64 %46, i64 %47, i32 %48, i32 %49)
  br label %249

51:                                               ; preds = %35, %4
  br label %52

52:                                               ; preds = %105, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp sge i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GATT_MAX_READ_MULTI_HANDLES, align 8
  %62 = icmp slt i64 %60, %61
  br label %63

63:                                               ; preds = %55, %52
  %64 = phi i1 [ false, %52 ], [ %62, %55 ]
  br i1 %64, label %65, label %108

65:                                               ; preds = %63
  %66 = load i32, i32* %10, align 4
  %67 = load i64*, i64** %12, align 8
  %68 = call i32 @STREAM_TO_UINT16(i32 %66, i64* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @gatt_sr_find_i_rcb_by_handle(i32 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* @GATT_MAX_SR_PROFILES, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 %74, i32* %86, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 2), align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FALSE, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i64 @gatts_read_attr_perm_check(i32 %91, i32 %92, i32 %93, i64 %94, i64 %95)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* @GATT_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %73
  %100 = load i64, i64* %14, align 8
  %101 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  br label %108

102:                                              ; preds = %73
  br label %105

103:                                              ; preds = %65
  %104 = load i64, i64* @GATT_INVALID_HANDLE, align 8
  store i64 %104, i64* %14, align 8
  br label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 2
  store i32 %107, i32* %11, align 4
  br label %52

108:                                              ; preds = %103, %99, %63
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i64, i64* @GATT_INVALID_HANDLE, align 8
  store i64 %121, i64* %14, align 8
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* @GATT_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %122
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @gatt_sr_enqueue_cmd(%struct.TYPE_23__* %127, i64 %128, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %223

138:                                              ; preds = %126
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = call i32 @gatt_sr_reset_cback_cnt(%struct.TYPE_23__* %139)
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %219, %138
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %143, %148
  br i1 %149, label %150, label %222

150:                                              ; preds = %141
  %151 = call i64 @osi_malloc(i32 12)
  %152 = inttoptr i64 %151 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %152, %struct.TYPE_24__** %17, align 8
  %153 = icmp ne %struct.TYPE_24__* %152, null
  br i1 %153, label %154, label %214

154:                                              ; preds = %150
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %156 = call i32 @memset(%struct.TYPE_24__* %155, i32 0, i32 12)
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i64 @gatt_sr_find_i_rcb_by_handle(i32 %166)
  store i64 %167, i64* %13, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 2), align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = load i32, i32* @GATT_MAX_ATTR_LEN, align 4
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %16, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i64 @gatts_read_attr_value_by_handle(%struct.TYPE_23__* %172, i32 %177, i64 %178, i32 %179, i32 0, i32 %183, i32* %186, i32 %187, i64 %188, i64 %189, i32 %190)
  store i64 %191, i64* %14, align 8
  %192 = load i64, i64* %14, align 8
  %193 = load i64, i64* @GATT_SUCCESS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %154
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @GATT_STACK_RSP, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %195, %154
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gatt_cb, i32 0, i32 2), align 8
  %202 = load i64, i64* %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i64, i64* %6, align 8
  %208 = load i64, i64* @GATT_SUCCESS, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %210 = call i32 @gatt_sr_process_app_rsp(%struct.TYPE_23__* %200, i32 %205, i32 %206, i64 %207, i64 %208, %struct.TYPE_24__* %209)
  br label %211

211:                                              ; preds = %199, %195
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %213 = call i32 @osi_free(%struct.TYPE_24__* %212)
  br label %218

214:                                              ; preds = %150
  %215 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %215, i64* %14, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = call i32 @gatt_dequeue_sr_cmd(%struct.TYPE_23__* %216)
  br label %222

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %141

222:                                              ; preds = %214, %141
  br label %225

223:                                              ; preds = %126
  %224 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %224, i64* %14, align 8
  br label %225

225:                                              ; preds = %223, %222
  br label %226

226:                                              ; preds = %225, %122
  %227 = load i64, i64* %14, align 8
  %228 = load i64, i64* @GATT_SUCCESS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %249

230:                                              ; preds = %226
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* @GATT_STACK_RSP, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load i64, i64* %14, align 8
  %236 = load i64, i64* @GATT_PENDING, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %234
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* @GATT_BUSY, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %244 = load i64, i64* %14, align 8
  %245 = load i64, i64* %6, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @FALSE, align 4
  %248 = call i32 @gatt_send_error_rsp(%struct.TYPE_23__* %243, i64 %244, i64 %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %39, %242, %238, %234, %230, %226
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @gatt_sr_get_sec_info(i32, i32, i64*, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_23__*, i64, i64, i32, i32) #1

declare dso_local i64 @gatt_sr_find_i_rcb_by_handle(i32) #1

declare dso_local i64 @gatts_read_attr_perm_check(i32, i32, i32, i64, i64) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @gatt_sr_enqueue_cmd(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @gatt_sr_reset_cback_cnt(%struct.TYPE_23__*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @gatts_read_attr_value_by_handle(%struct.TYPE_23__*, i32, i64, i32, i32, i32, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @gatt_sr_process_app_rsp(%struct.TYPE_23__*, i32, i32, i64, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @osi_free(%struct.TYPE_24__*) #1

declare dso_local i32 @gatt_dequeue_sr_cmd(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
