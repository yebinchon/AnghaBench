; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_SetLocalDiRecord.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_SetLocalDiRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i64, i64, i64, i64 }

@SDP_SUCCESS = common dso_local global i64 0, align 8
@UUID_SERVCLASS_PNP_INFORMATION = common dso_local global i64 0, align 8
@BLUETOOTH_DI_SPECIFICATION = common dso_local global i64 0, align 8
@SDP_ILLEGAL_PARAMETER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@sdp_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SDP_NO_RESOURCES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SDP_DI_REG_FAILED = common dso_local global i64 0, align 8
@ATTR_ID_SPECIFICATION_ID = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@SDP_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@ATTR_ID_CLIENT_EXE_URL = common dso_local global i32 0, align 4
@URL_DESC_TYPE = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_DESCRIPTION = common dso_local global i32 0, align 4
@TEXT_STR_DESC_TYPE = common dso_local global i32 0, align 4
@ATTR_ID_DOCUMENTATION_URL = common dso_local global i32 0, align 4
@ATTR_ID_VENDOR_ID = common dso_local global i32 0, align 4
@ATTR_ID_PRODUCT_ID = common dso_local global i32 0, align 4
@ATTR_ID_PRODUCT_VERSION = common dso_local global i32 0, align 4
@ATTR_ID_PRIMARY_RECORD = common dso_local global i32 0, align 4
@BOOLEAN_DESC_TYPE = common dso_local global i32 0, align 4
@ATTR_ID_VENDOR_ID_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SDP_SetLocalDiRecord(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64, i64* @SDP_SUCCESS, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @UUID_SERVCLASS_PNP_INFORMATION, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* @BLUETOOTH_DI_SPECIFICATION, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @SDP_ILLEGAL_PARAMETER, align 8
  store i64 %20, i64* %3, align 8
  br label %299

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  store i64 %31, i64* %7, align 8
  br label %38

32:                                               ; preds = %27, %21
  %33 = call i64 (...) @SDP_CreateRecord()
  store i64 %33, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* @SDP_NO_RESOURCES, align 8
  store i64 %36, i64* %3, align 8
  br label %299

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @SDP_AddServiceClassIdList(i64 %41, i32 1, i64* %8)
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @SDP_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %52, i64** %11, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @UINT16_TO_BE_STREAM(i64* %53, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @ATTR_ID_SPECIFICATION_ID, align 4
  %58 = load i32, i32* @UINT_DESC_TYPE, align 4
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %60 = call i64 @SDP_AddAttribute(i64 %56, i32 %57, i32 %58, i32 8, i64* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  %63 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %51
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @SDP_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %69
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = add nsw i64 %81, 1
  %83 = load i64, i64* @SDP_MAX_ATTR_LEN, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* @ATTR_ID_CLIENT_EXE_URL, align 4
  %88 = load i32, i32* @URL_DESC_TYPE, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = add nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to i64*
  %99 = call i64 @SDP_AddAttribute(i64 %86, i32 %87, i32 %88, i32 %94, i64* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %85, %77
  %102 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %101, %85
  br label %104

104:                                              ; preds = %103, %69
  br label %105

105:                                              ; preds = %104, %65
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @SDP_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %105
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %109
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 1
  %123 = load i64, i64* @SDP_MAX_ATTR_LEN, align 8
  %124 = icmp sle i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %117
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* @ATTR_ID_SERVICE_DESCRIPTION, align 4
  %128 = load i32, i32* @TEXT_STR_DESC_TYPE, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strlen(i8* %131)
  %133 = add nsw i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i64*
  %139 = call i64 @SDP_AddAttribute(i64 %126, i32 %127, i32 %128, i32 %134, i64* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %125, %117
  %142 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %142, i64* %6, align 8
  br label %143

143:                                              ; preds = %141, %125
  br label %144

144:                                              ; preds = %143, %109
  br label %145

145:                                              ; preds = %144, %105
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @SDP_SUCCESS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %185

149:                                              ; preds = %145
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %184

157:                                              ; preds = %149
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strlen(i8* %160)
  %162 = add nsw i64 %161, 1
  %163 = load i64, i64* @SDP_MAX_ATTR_LEN, align 8
  %164 = icmp sle i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %157
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* @ATTR_ID_DOCUMENTATION_URL, align 4
  %168 = load i32, i32* @URL_DESC_TYPE, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strlen(i8* %171)
  %173 = add nsw i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = bitcast i8* %177 to i64*
  %179 = call i64 @SDP_AddAttribute(i64 %166, i32 %167, i32 %168, i32 %174, i64* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %165, %157
  %182 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %181, %165
  br label %184

184:                                              ; preds = %183, %149
  br label %185

185:                                              ; preds = %184, %145
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* @SDP_SUCCESS, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %190, i64** %11, align 8
  %191 = load i64*, i64** %11, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @UINT16_TO_BE_STREAM(i64* %191, i64 %194)
  %196 = load i64, i64* %7, align 8
  %197 = load i32, i32* @ATTR_ID_VENDOR_ID, align 4
  %198 = load i32, i32* @UINT_DESC_TYPE, align 4
  %199 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %200 = call i64 @SDP_AddAttribute(i64 %196, i32 %197, i32 %198, i32 8, i64* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %189
  %203 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %203, i64* %6, align 8
  br label %204

204:                                              ; preds = %202, %189
  br label %205

205:                                              ; preds = %204, %185
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* @SDP_SUCCESS, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %205
  %210 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %210, i64** %11, align 8
  %211 = load i64*, i64** %11, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @UINT16_TO_BE_STREAM(i64* %211, i64 %214)
  %216 = load i64, i64* %7, align 8
  %217 = load i32, i32* @ATTR_ID_PRODUCT_ID, align 4
  %218 = load i32, i32* @UINT_DESC_TYPE, align 4
  %219 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %220 = call i64 @SDP_AddAttribute(i64 %216, i32 %217, i32 %218, i32 8, i64* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %209
  %223 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %223, i64* %6, align 8
  br label %224

224:                                              ; preds = %222, %209
  br label %225

225:                                              ; preds = %224, %205
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* @SDP_SUCCESS, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %225
  %230 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %230, i64** %11, align 8
  %231 = load i64*, i64** %11, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @UINT16_TO_BE_STREAM(i64* %231, i64 %234)
  %236 = load i64, i64* %7, align 8
  %237 = load i32, i32* @ATTR_ID_PRODUCT_VERSION, align 4
  %238 = load i32, i32* @UINT_DESC_TYPE, align 4
  %239 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %240 = call i64 @SDP_AddAttribute(i64 %236, i32 %237, i32 %238, i32 8, i64* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %229
  %243 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %243, i64* %6, align 8
  br label %244

244:                                              ; preds = %242, %229
  br label %245

245:                                              ; preds = %244, %225
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* @SDP_SUCCESS, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %12, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load i32, i32* @ATTR_ID_PRIMARY_RECORD, align 4
  %255 = load i32, i32* @BOOLEAN_DESC_TYPE, align 4
  %256 = call i64 @SDP_AddAttribute(i64 %253, i32 %254, i32 %255, i32 1, i64* %12)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %249
  %259 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %259, i64* %6, align 8
  br label %260

260:                                              ; preds = %258, %249
  br label %261

261:                                              ; preds = %260, %245
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* @SDP_SUCCESS, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %281

265:                                              ; preds = %261
  %266 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %266, i64** %11, align 8
  %267 = load i64*, i64** %11, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @UINT16_TO_BE_STREAM(i64* %267, i64 %270)
  %272 = load i64, i64* %7, align 8
  %273 = load i32, i32* @ATTR_ID_VENDOR_ID_SOURCE, align 4
  %274 = load i32, i32* @UINT_DESC_TYPE, align 4
  %275 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %276 = call i64 @SDP_AddAttribute(i64 %272, i32 %273, i32 %274, i32 8, i64* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %265
  %279 = load i64, i64* @SDP_DI_REG_FAILED, align 8
  store i64 %279, i64* %6, align 8
  br label %280

280:                                              ; preds = %278, %265
  br label %281

281:                                              ; preds = %280, %261
  %282 = load i64, i64* %6, align 8
  %283 = load i64, i64* @SDP_SUCCESS, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i64, i64* %7, align 8
  %287 = call i32 @SDP_DeleteRecord(i64 %286)
  br label %297

288:                                              ; preds = %281
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @TRUE, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = load i64, i64* %7, align 8
  store i64 %295, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  br label %296

296:                                              ; preds = %294, %288
  br label %297

297:                                              ; preds = %296, %285
  %298 = load i64, i64* %6, align 8
  store i64 %298, i64* %3, align 8
  br label %299

299:                                              ; preds = %297, %35, %19
  %300 = load i64, i64* %3, align 8
  ret i64 %300
}

declare dso_local i64 @SDP_CreateRecord(...) #1

declare dso_local i64 @SDP_AddServiceClassIdList(i64, i32, i64*) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i64*, i64) #1

declare dso_local i64 @SDP_AddAttribute(i64, i32, i32, i32, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SDP_DeleteRecord(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
