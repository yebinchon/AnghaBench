; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeImportToCache.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeImportToCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, i8** }

@vnodeList = common dso_local global %struct.TYPE_12__* null, align 8
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"vid:%d sid:%d id:%s, import failed, cache is full, freePoints:%d\00", align 1
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"vid:%d sid:%d id:%s, %d rows data will be imported to cache, firstKey:%ld lastKey:%ld\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"vid:%d sid:%d id:%s, %d rows data are imported to cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeImportToCache(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_17__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_17__*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vnodeList, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %40
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %9, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %10, align 8
  store i32 -1, i32* %11, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %12, align 8
  %48 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %19, align 8
  %51 = alloca i8*, i64 %49, align 16
  store i64 %49, i64* %20, align 8
  %52 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8*, i64 %53, align 16
  store i64 %53, i64* %21, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %66, %69
  %71 = add nsw i32 %70, 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  store i32 %75, i32* %24, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = bitcast i8* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %25, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %26, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 1
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %95, %3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dError(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %107, i32 %110, i32 %113, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %595

124:                                              ; preds = %95
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %26, align 8
  %137 = call i32 (i8*, i64, i32, i32, i32, ...) @dTrace(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i64 %127, i32 %130, i32 %133, i32 %134, i64 %135, i64 %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = call i32 @pthread_mutex_lock(i32* %139)
  %141 = load i64, i64* %25, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %124
  %147 = load i64, i64* %25, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %124
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = call i32 @pthread_mutex_unlock(i32* %152)
  %154 = load i32, i32* %24, align 4
  %155 = call i8* @malloc(i32 %154)
  store i8* %155, i8** %28, align 8
  %156 = load i8*, i8** %28, align 8
  %157 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %156, i8** %157, align 16
  %158 = getelementptr inbounds i8*, i8** %51, i64 0
  %159 = load i8*, i8** %158, align 16
  %160 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %159, i8** %160, align 16
  store i32 1, i32* %16, align 4
  br label %161

161:                                              ; preds = %196, %150
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %51, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %23, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 7
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %173, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %172, i64 %184
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %51, i64 %187
  store i8* %185, i8** %188, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %51, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %54, i64 %194
  store i8* %192, i8** %195, align 8
  br label %196

196:                                              ; preds = %167
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %161

199:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %255, %199
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %258

204:                                              ; preds = %200
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %251, %204
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %254

211:                                              ; preds = %205
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %54, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @memcpy(i8* %215, i8* %216, i32 %224)
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 7
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i8*, i8** %6, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %6, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 7
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %16, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %54, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = sext i32 %244 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %247, align 8
  br label %251

251:                                              ; preds = %211
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %205

254:                                              ; preds = %205
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %200

258:                                              ; preds = %200
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %18, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %14, align 4
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %13, align 4
  br label %266

266:                                              ; preds = %347, %258
  br label %267

267:                                              ; preds = %266
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %270, i64 %272
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sub nsw i32 %276, %277
  store i32 %278, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %279

279:                                              ; preds = %334, %267
  %280 = load i32, i32* %16, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %337

285:                                              ; preds = %279
  %286 = load i32, i32* %17, align 4
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %286, %294
  store i32 %295, i32* %29, align 4
  %296 = load i32, i32* %16, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %54, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %302, i64 %304
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 1
  %308 = load i8**, i8*** %307, align 8
  %309 = load i32, i32* %16, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %308, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = load i32, i32* %14, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 7
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %313, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %312, i64 %323
  %325 = load i32, i32* %29, align 4
  %326 = call i32 @memcpy(i8* %299, i8* %324, i32 %325)
  %327 = load i32, i32* %29, align 4
  %328 = load i32, i32* %16, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %54, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = sext i32 %327 to i64
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8* %333, i8** %330, align 8
  br label %334

334:                                              ; preds = %285
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %16, align 4
  br label %279

337:                                              ; preds = %279
  store i32 0, i32* %14, align 4
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %18, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %18, align 4
  %341 = load i32, i32* %13, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  br label %354

347:                                              ; preds = %337
  %348 = load i32, i32* %13, align 4
  %349 = add nsw i32 %348, 1
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = srem i32 %349, %352
  store i32 %353, i32* %13, align 4
  br label %266

354:                                              ; preds = %346
  store i32 0, i32* %16, align 4
  br label %355

355:                                              ; preds = %369, %354
  %356 = load i32, i32* %16, align 4
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %372

361:                                              ; preds = %355
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8*, i8** %51, i64 %363
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %54, i64 %367
  store i8* %365, i8** %368, align 8
  br label %369

369:                                              ; preds = %361
  %370 = load i32, i32* %16, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %16, align 4
  br label %355

372:                                              ; preds = %355
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %14, align 4
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  store i32 %378, i32* %13, align 4
  br label %379

379:                                              ; preds = %472, %372
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %18, align 4
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %14, align 4
  %386 = sub nsw i32 %384, %385
  %387 = icmp sgt i32 %381, %386
  br i1 %387, label %388, label %394

388:                                              ; preds = %380
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* %14, align 4
  %393 = sub nsw i32 %391, %392
  br label %396

394:                                              ; preds = %380
  %395 = load i32, i32* %18, align 4
  br label %396

396:                                              ; preds = %394, %388
  %397 = phi i32 [ %393, %388 ], [ %395, %394 ]
  store i32 %397, i32* %17, align 4
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %399, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %400, i64 %402
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %403, align 8
  store %struct.TYPE_17__* %404, %struct.TYPE_17__** %30, align 8
  store i32 0, i32* %16, align 4
  br label %405

405:                                              ; preds = %454, %396
  %406 = load i32, i32* %16, align 4
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %457

411:                                              ; preds = %405
  %412 = load i32, i32* %17, align 4
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 7
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %414, align 8
  %416 = load i32, i32* %16, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = mul nsw i32 %412, %420
  store i32 %421, i32* %31, align 4
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 1
  %424 = load i8**, i8*** %423, align 8
  %425 = load i32, i32* %16, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8*, i8** %424, i64 %426
  %428 = load i8*, i8** %427, align 8
  %429 = load i32, i32* %14, align 4
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 7
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %431, align 8
  %433 = load i32, i32* %16, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = mul nsw i32 %429, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %428, i64 %439
  %441 = load i32, i32* %16, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %54, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = load i32, i32* %31, align 4
  %446 = call i32 @memcpy(i8* %440, i8* %444, i32 %445)
  %447 = load i32, i32* %31, align 4
  %448 = load i32, i32* %16, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %54, i64 %449
  %451 = load i8*, i8** %450, align 8
  %452 = sext i32 %447 to i64
  %453 = getelementptr inbounds i8, i8* %451, i64 %452
  store i8* %453, i8** %450, align 8
  br label %454

454:                                              ; preds = %411
  %455 = load i32, i32* %16, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %16, align 4
  br label %405

457:                                              ; preds = %405
  %458 = load i32, i32* %17, align 4
  %459 = load i32, i32* %14, align 4
  %460 = add nsw i32 %458, %459
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 0
  store i32 %460, i32* %462, align 8
  store i32 0, i32* %14, align 4
  %463 = load i32, i32* %17, align 4
  %464 = load i32, i32* %18, align 4
  %465 = sub nsw i32 %464, %463
  store i32 %465, i32* %18, align 4
  %466 = load i32, i32* %13, align 4
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = icmp eq i32 %466, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %457
  br label %479

472:                                              ; preds = %457
  %473 = load i32, i32* %13, align 4
  %474 = add nsw i32 %473, 1
  %475 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = srem i32 %474, %477
  store i32 %478, i32* %13, align 4
  br label %379

479:                                              ; preds = %471
  br label %480

480:                                              ; preds = %568, %479
  %481 = load i32, i32* %18, align 4
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %575

483:                                              ; preds = %480
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %485 = call i32 @vnodeAllocateCacheBlock(%struct.TYPE_14__* %484)
  %486 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i32 0, i32 0
  store i32 %485, i32* %487, align 8
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %483
  br label %591

493:                                              ; preds = %483
  %494 = load i32, i32* %18, align 4
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 8
  %498 = icmp sgt i32 %494, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %493
  %500 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  br label %505

503:                                              ; preds = %493
  %504 = load i32, i32* %18, align 4
  br label %505

505:                                              ; preds = %503, %499
  %506 = phi i32 [ %502, %499 ], [ %504, %503 ]
  store i32 %506, i32* %17, align 4
  %507 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %508 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %507, i32 0, i32 3
  %509 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %508, align 8
  %510 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %509, i64 %513
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %514, align 8
  store %struct.TYPE_17__* %515, %struct.TYPE_17__** %32, align 8
  store i32 0, i32* %16, align 4
  br label %516

516:                                              ; preds = %565, %505
  %517 = load i32, i32* %16, align 4
  %518 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 4
  %521 = icmp slt i32 %517, %520
  br i1 %521, label %522, label %568

522:                                              ; preds = %516
  %523 = load i32, i32* %17, align 4
  %524 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %525 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %524, i32 0, i32 7
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %525, align 8
  %527 = load i32, i32* %16, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = mul nsw i32 %523, %531
  store i32 %532, i32* %33, align 4
  %533 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 1
  %535 = load i8**, i8*** %534, align 8
  %536 = load i32, i32* %16, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8*, i8** %535, i64 %537
  %539 = load i8*, i8** %538, align 8
  %540 = load i32, i32* %14, align 4
  %541 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %542 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %541, i32 0, i32 7
  %543 = load %struct.TYPE_11__*, %struct.TYPE_11__** %542, align 8
  %544 = load i32, i32* %16, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = mul nsw i32 %540, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %539, i64 %550
  %552 = load i32, i32* %16, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8*, i8** %54, i64 %553
  %555 = load i8*, i8** %554, align 8
  %556 = load i32, i32* %33, align 4
  %557 = call i32 @memcpy(i8* %551, i8* %555, i32 %556)
  %558 = load i32, i32* %33, align 4
  %559 = load i32, i32* %16, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8*, i8** %54, i64 %560
  %562 = load i8*, i8** %561, align 8
  %563 = sext i32 %558 to i64
  %564 = getelementptr inbounds i8, i8* %562, i64 %563
  store i8* %564, i8** %561, align 8
  br label %565

565:                                              ; preds = %522
  %566 = load i32, i32* %16, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %16, align 4
  br label %516

568:                                              ; preds = %516
  %569 = load i32, i32* %17, align 4
  %570 = load i32, i32* %18, align 4
  %571 = sub nsw i32 %570, %569
  store i32 %571, i32* %18, align 4
  %572 = load i32, i32* %17, align 4
  %573 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %574 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %573, i32 0, i32 0
  store i32 %572, i32* %574, align 8
  br label %480

575:                                              ; preds = %480
  store i32 0, i32* %11, align 4
  %576 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 3
  %578 = load i32, i32* %7, align 4
  %579 = call i32 @atomic_fetch_sub_32(i32* %577, i32 %578)
  %580 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %581 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %584 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %583, i32 0, i32 6
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %587 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 8
  %589 = load i32, i32* %7, align 4
  %590 = call i32 (i8*, i64, i32, i32, i32, ...) @dTrace(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %582, i32 %585, i32 %588, i32 %589)
  br label %591

591:                                              ; preds = %575, %492
  %592 = load i8*, i8** %28, align 8
  %593 = call i32 @free(i8* %592)
  %594 = load i32, i32* %11, align 4
  store i32 %594, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %595

595:                                              ; preds = %591, %104
  %596 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %596)
  %597 = load i32, i32* %4, align 4
  ret i32 %597
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dError(i8*, i64, i32, i32, i32) #2

declare dso_local i32 @dTrace(i8*, i64, i32, i32, i32, ...) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @vnodeAllocateCacheBlock(%struct.TYPE_14__*) #2

declare dso_local i32 @atomic_fetch_sub_32(i32*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
