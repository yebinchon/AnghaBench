; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_read_attr_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_read_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_21__*, %struct.TYPE_19__, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [77 x i8] c"read_attr_value uuid=0x%04x perm=0x%0x sec_flag=0x%x offset=%d read_long=%d\0A\00", align 1
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_ATTR_UUID_TYPE_16 = common dso_local global i64 0, align 8
@GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_UUID_PRI_SERVICE = common dso_local global i64 0, align 8
@GATT_UUID_SEC_SERVICE = common dso_local global i64 0, align 8
@GATT_UUID_CHAR_DECLARE = common dso_local global i64 0, align 8
@GATT_ATTR_UUID_TYPE_32 = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i64 0, align 8
@GATT_UUID_INCLUDE_SERVICE = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i64 0, align 8
@GATT_RSP_BY_STACK = common dso_local global i64 0, align 8
@GATT_UNKNOWN_ERROR = common dso_local global i64 0, align 8
@GATT_INVALID_OFFSET = common dso_local global i64 0, align 8
@GATT_STACK_RSP = common dso_local global i64 0, align 8
@GATT_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32**, i32, i64, i64*, i32, i32)* @read_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_attr_value(i8* %0, i64 %1, i32** %2, i32 %3, i64 %4, i64* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %25 = load i32**, i32*** %12, align 8
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %20, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %22, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34, i32 %35, i64 %36, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_23__*
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @gatts_check_attr_readability(%struct.TYPE_23__* %40, i64 %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %21, align 8
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* @GATT_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %8
  %50 = load i64, i64* %21, align 8
  store i64 %50, i64* %9, align 8
  br label %320

51:                                               ; preds = %8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %19, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %62, i64* %21, align 8
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* @GATT_UUID_PRI_SERVICE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* @GATT_UUID_SEC_SERVICE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %77, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %70
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @gatt_build_uuid_to_stream(i32** %20, i64 %91)
  %93 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %93, i64* %21, align 8
  br label %94

94:                                               ; preds = %85, %70
  br label %314

95:                                               ; preds = %66
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* @GATT_UUID_CHAR_DECLARE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %183

99:                                               ; preds = %95
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_23__*
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 5, i32 19
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %18, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %182

114:                                              ; preds = %99
  %115 = load i32*, i32** %20, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @UINT8_TO_STREAM(i32* %115, i32 %121)
  %123 = load i32*, i32** %20, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @UINT16_TO_STREAM(i32* %123, i64 %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.TYPE_23__*
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %114
  %140 = load i32*, i32** %20, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.TYPE_23__*
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @UINT16_TO_STREAM(i32* %140, i64 %146)
  br label %180

148:                                              ; preds = %114
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.TYPE_22__*
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @GATT_ATTR_UUID_TYPE_32, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = load i32*, i32** %20, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.TYPE_22__*
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @gatt_convert_uuid32_to_uuid128(i32* %158, i32 %164)
  %166 = load i64, i64* @LEN_UUID_128, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 %166
  store i32* %168, i32** %20, align 8
  br label %179

169:                                              ; preds = %148
  %170 = load i32*, i32** %20, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.TYPE_13__*
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @LEN_UUID_128, align 8
  %178 = call i32 @ARRAY_TO_STREAM(i32* %170, i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %169, %157
  br label %180

180:                                              ; preds = %179, %139
  %181 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %181, i64* %21, align 8
  br label %182

182:                                              ; preds = %180, %99
  br label %313

183:                                              ; preds = %95
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* @GATT_UUID_INCLUDE_SERVICE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %243

187:                                              ; preds = %183
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LEN_UUID_16, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  store i64 6, i64* %18, align 8
  br label %199

198:                                              ; preds = %187
  store i64 4, i64* %18, align 8
  br label %199

199:                                              ; preds = %198, %197
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %18, align 8
  %202 = icmp sge i64 %200, %201
  br i1 %202, label %203, label %242

203:                                              ; preds = %199
  %204 = load i32*, i32** %20, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @UINT16_TO_STREAM(i32* %204, i64 %210)
  %212 = load i32*, i32** %20, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @UINT16_TO_STREAM(i32* %212, i64 %218)
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @LEN_UUID_16, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %203
  %230 = load i32*, i32** %20, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @UINT16_TO_STREAM(i32* %230, i64 %238)
  br label %240

240:                                              ; preds = %229, %203
  %241 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %241, i64* %21, align 8
  br label %242

242:                                              ; preds = %240, %199
  br label %312

243:                                              ; preds = %183
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @GATT_RSP_BY_STACK, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %309

250:                                              ; preds = %243
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = icmp eq %struct.TYPE_21__* %253, null
  br i1 %254, label %263, label %255

255:                                              ; preds = %250
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %255, %250
  %264 = load i64, i64* @GATT_UNKNOWN_ERROR, align 8
  store i64 %264, i64* %21, align 8
  br label %308

265:                                              ; preds = %255
  %266 = load i64, i64* %11, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %266, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %265
  %275 = load i64, i64* @GATT_INVALID_OFFSET, align 8
  store i64 %275, i64* %21, align 8
  br label %307

276:                                              ; preds = %265
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* %11, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32* %284, i32** %23, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %11, align 8
  %292 = sub nsw i64 %290, %291
  store i64 %292, i64* %24, align 8
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* %24, align 8
  %295 = icmp sge i64 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %276
  %297 = load i64, i64* %24, align 8
  br label %300

298:                                              ; preds = %276
  %299 = load i64, i64* %14, align 8
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i64 [ %297, %296 ], [ %299, %298 ]
  store i64 %301, i64* %18, align 8
  %302 = load i32*, i32** %20, align 8
  %303 = load i32*, i32** %23, align 8
  %304 = load i64, i64* %18, align 8
  %305 = call i32 @ARRAY_TO_STREAM(i32* %302, i32* %303, i64 %304)
  %306 = load i64, i64* @GATT_STACK_RSP, align 8
  store i64 %306, i64* %21, align 8
  br label %307

307:                                              ; preds = %300, %274
  br label %308

308:                                              ; preds = %307, %263
  br label %311

309:                                              ; preds = %243
  %310 = load i64, i64* @GATT_PENDING, align 8
  store i64 %310, i64* %21, align 8
  br label %311

311:                                              ; preds = %309, %308
  br label %312

312:                                              ; preds = %311, %242
  br label %313

313:                                              ; preds = %312, %182
  br label %314

314:                                              ; preds = %313, %94
  %315 = load i64, i64* %18, align 8
  %316 = load i64*, i64** %15, align 8
  store i64 %315, i64* %316, align 8
  %317 = load i32*, i32** %20, align 8
  %318 = load i32**, i32*** %12, align 8
  store i32* %317, i32** %318, align 8
  %319 = load i64, i64* %21, align 8
  store i64 %319, i64* %9, align 8
  br label %320

320:                                              ; preds = %314, %49
  %321 = load i64, i64* %9, align 8
  ret i64 %321
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64, i32, i32, i64, i32) #1

declare dso_local i64 @gatts_check_attr_readability(%struct.TYPE_23__*, i64, i32, i32, i32) #1

declare dso_local i32 @gatt_build_uuid_to_stream(i32**, i64) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #1

declare dso_local i32 @gatt_convert_uuid32_to_uuid128(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
