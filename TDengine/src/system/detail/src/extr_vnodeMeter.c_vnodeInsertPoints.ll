; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeInsertPoints.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeInsertPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64, i64, %struct.TYPE_14__, i32, i32, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i16, i32, i16, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [82 x i8] c"vid:%d sid:%d id:%s, invalid submit msg length:%d, expected:%d, bytesPerPoint: %d\00", align 1
@TSDB_CODE_WRONG_MSG_SIZE = common dso_local global i32 0, align 4
@TSDB_CODE_BATCH_SIZE_TOO_BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"vid:%d sid:%d id:%s, batch size too big, it shall be smaller than:%d\00", align 1
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"vid:%d sid:%d id:%s, cache is full, freePoints:%d, notFreeSlots:%d\00", align 1
@TSDB_DATA_SOURCE_LOG = common dso_local global i8 0, align 1
@TSDB_CODE_INVALID_COMMIT_LOG = common dso_local global i32 0, align 4
@TSDB_ACTION_INSERT = common dso_local global i32 0, align 4
@TSDB_DATA_SOURCE_SHELL = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"vid:%d sid:%d id:%s, schema is changed, new:%d old:%d\00", align 1
@tsMsPerDay = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [149 x i8] c"vid:%d sid:%d id:%s, vnode lastKeyOnFile:%lld, data is out of range, numOfPoints:%d firstKey:%lld lastKey:%lld minAllowedKey:%lld maxAllowedKey:%lld\00", align 1
@TSDB_CODE_TIMESTAMP_OUT_OF_RANGE = common dso_local global i32 0, align 4
@TSDB_METER_STATE_DELETING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"vid:%d sid:%d id:%s, meter is dropped, abort insert, state:%d\00", align 1
@TSDB_CODE_NOT_ACTIVE_SESSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [66 x i8] c"vid:%d sid:%d id:%s, received key:%ld not larger than lastKey:%ld\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"vid:%d sid:%d id:%s, %d out of %d points are inserted, lastKey:%ld source:%d, vnode total storage: %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInsertPoints(%struct.TYPE_19__* %0, i8* %1, i32 %2, i8 signext %3, i8* %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca %struct.TYPE_20__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8 %3, i8* %13, align 1
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %21, align 8
  store i32 0, i32* %24, align 4
  %35 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %35, i32* %25, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** @vnodeList, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 %40
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %26, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call signext i16 @htons(i32 %44)
  store i16 %45, i16* %20, align 2
  %46 = load i16, i16* %20, align 2
  %47 = sext i16 %46 to i32
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 4
  %51 = sext i16 %50 to i32
  %52 = mul nsw i32 %47, %51
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 4
  %74 = sext i16 %73 to i32
  %75 = call i32 (i8*, i32, i32, i32, i32, ...) @dError(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %69, i32 %70, i32 %74)
  %76 = load i32, i32* @TSDB_CODE_WRONG_MSG_SIZE, align 4
  store i32 %76, i32* %25, align 4
  br label %545

77:                                               ; preds = %8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %22, align 8
  %81 = load i64, i64* %17, align 8
  store i64 %81, i64* %23, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %77
  store i32 0, i32* %19, align 4
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i32, i32* %19, align 4
  %89 = load i16, i16* %20, align 2
  %90 = sext i16 %89 to i32
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load i64, i64* %23, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %23, align 8
  %95 = load i8*, i8** %22, align 8
  %96 = bitcast i8* %95 to i64*
  store i64 %93, i64* %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i16, i16* %98, align 4
  %100 = sext i16 %99 to i32
  %101 = load i8*, i8** %22, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %22, align 8
  br label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i16, i16* %20, align 2
  %110 = sext i16 %109 to i32
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 2
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %115, %118
  %120 = icmp sge i32 %110, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %108
  %122 = load i32, i32* @TSDB_CODE_BATCH_SIZE_TOO_BIG, align 4
  store i32 %122, i32* %25, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 2
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = call i32 (i8*, i32, i32, i32, i32, ...) @dError(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %140)
  %142 = load i32, i32* %25, align 4
  store i32 %142, i32* %9, align 4
  br label %570

143:                                              ; preds = %108
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %27, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 3
  %150 = load i16, i16* %149, align 4
  %151 = sext i16 %150 to i32
  %152 = load i16, i16* %20, align 2
  %153 = sext i16 %152 to i32
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %176, label %155

155:                                              ; preds = %143
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  %158 = load i16, i16* %157, align 4
  %159 = sext i16 %158 to i32
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %162, 1
  %164 = icmp slt i32 %159, %163
  br i1 %164, label %176, label %165

165:                                              ; preds = %155
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 2
  %175 = icmp sgt i32 %168, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %165, %155, %143
  %177 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %177, i32* %25, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 3
  %189 = load i16, i16* %188, align 4
  %190 = sext i16 %189 to i32
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = trunc i32 %193 to i16
  %195 = call i32 (i8*, i32, i32, i32, i32, i16, ...) @dTrace(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %183, i32 %186, i32 %190, i16 signext %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %197 = call i32 @vnodeProcessCommitTimer(%struct.TYPE_17__* %196, i32* null)
  %198 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %198, i32* %9, align 4
  br label %570

199:                                              ; preds = %165
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %199
  %206 = load i8, i8* %13, align 1
  %207 = sext i8 %206 to i32
  %208 = load i8, i8* @TSDB_DATA_SOURCE_LOG, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %205
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @TSDB_CODE_INVALID_COMMIT_LOG, align 4
  store i32 %217, i32* %9, align 4
  br label %570

218:                                              ; preds = %211
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %220 = load i32, i32* @TSDB_ACTION_INSERT, align 4
  %221 = load i8*, i8** %11, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @vnodeWriteToCommitLog(%struct.TYPE_19__* %219, i32 %220, i8* %221, i32 %222, i32 %223)
  store i32 %224, i32* %25, align 4
  %225 = load i32, i32* %25, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %218
  %228 = load i32, i32* %25, align 4
  store i32 %228, i32* %9, align 4
  br label %570

229:                                              ; preds = %218
  br label %230

230:                                              ; preds = %229, %205, %199
  %231 = load i8, i8* %13, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* @TSDB_DATA_SOURCE_SHELL, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %230
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 1
  br i1 %241, label %242, label %254

242:                                              ; preds = %236
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @TSDB_ACTION_INSERT, align 4
  %247 = load i32, i32* %15, align 4
  %248 = call i32 @vnodeForwardToPeer(%struct.TYPE_19__* %243, i8* %244, i32 %245, i32 %246, i32 %247)
  store i32 %248, i32* %25, align 4
  %249 = load i32, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = load i32, i32* %25, align 4
  store i32 %252, i32* %9, align 4
  br label %570

253:                                              ; preds = %242
  br label %254

254:                                              ; preds = %253, %236, %230
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %15, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %285

260:                                              ; preds = %254
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = trunc i32 %273 to i16
  %275 = call i32 (i8*, i32, i32, i32, i32, i16, ...) @dTrace(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %263, i32 %266, i32 %269, i32 %270, i16 signext %274)
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @vnodeSendMeterCfgMsg(i32 %278, i32 %281)
  %283 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %283, i32* %25, align 4
  %284 = load i32, i32* %25, align 4
  store i32 %284, i32* %9, align 4
  br label %570

285:                                              ; preds = %254
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %22, align 8
  store i32 0, i32* %25, align 4
  %289 = load i8*, i8** %22, align 8
  %290 = bitcast i8* %289 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %28, align 8
  %292 = load i8*, i8** %22, align 8
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 1
  %295 = load i16, i16* %294, align 4
  %296 = sext i16 %295 to i32
  %297 = load i16, i16* %20, align 2
  %298 = sext i16 %297 to i32
  %299 = sub nsw i32 %298, 1
  %300 = mul nsw i32 %296, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %292, i64 %301
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %29, align 8
  %305 = load i64, i64* %17, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 7
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = sdiv i64 %305, %309
  %311 = load i64*, i64** @tsMsPerDay, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 7
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i64, i64* %311, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = sdiv i64 %310, %317
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %30, align 4
  %320 = load i32, i32* %30, align 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %320, %323
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = mul nsw i64 %326, %330
  %332 = load i64*, i64** @tsMsPerDay, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds i64, i64* %332, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = mul nsw i64 %331, %338
  store i64 %339, i64* %31, align 8
  %340 = load i32, i32* %30, align 4
  %341 = add nsw i32 %340, 2
  %342 = sext i32 %341 to i64
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = mul nsw i64 %342, %346
  %348 = load i64*, i64** @tsMsPerDay, align 8
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 7
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds i64, i64* %348, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = mul nsw i64 %347, %354
  %356 = sub nsw i64 %355, 2
  store i64 %356, i64* %32, align 8
  %357 = load i64, i64* %28, align 8
  %358 = load i64, i64* %31, align 8
  %359 = icmp slt i64 %357, %358
  br i1 %359, label %372, label %360

360:                                              ; preds = %285
  %361 = load i64, i64* %28, align 8
  %362 = load i64, i64* %32, align 8
  %363 = icmp sgt i64 %361, %362
  br i1 %363, label %372, label %364

364:                                              ; preds = %360
  %365 = load i64, i64* %29, align 8
  %366 = load i64, i64* %31, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = load i64, i64* %29, align 8
  %370 = load i64, i64* %32, align 8
  %371 = icmp sgt i64 %369, %370
  br i1 %371, label %372, label %393

372:                                              ; preds = %368, %364, %360, %285
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 8
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 8
  %385 = load i16, i16* %20, align 2
  %386 = sext i16 %385 to i32
  %387 = load i64, i64* %28, align 8
  %388 = load i64, i64* %29, align 8
  %389 = load i64, i64* %31, align 8
  %390 = load i64, i64* %32, align 8
  %391 = call i32 (i8*, i32, i32, i32, i32, ...) @dError(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.4, i64 0, i64 0), i32 %375, i32 %378, i32 %381, i32 %384, i32 %386, i64 %387, i64 %388, i64 %389, i64 %390)
  %392 = load i32, i32* @TSDB_CODE_TIMESTAMP_OUT_OF_RANGE, align 4
  store i32 %392, i32* %9, align 4
  br label %570

393:                                              ; preds = %368
  store i32 0, i32* %19, align 4
  br label %394

394:                                              ; preds = %487, %393
  %395 = load i32, i32* %19, align 4
  %396 = load i16, i16* %20, align 2
  %397 = sext i16 %396 to i32
  %398 = icmp slt i32 %395, %397
  br i1 %398, label %399, label %490

399:                                              ; preds = %394
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 5
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @TSDB_METER_STATE_DELETING, align 8
  %404 = icmp sge i64 %402, %403
  br i1 %404, label %405, label %420

405:                                              ; preds = %399
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 9
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = call i32 (i8*, i32, i32, i32, i64, ...) @dWarn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %408, i32 %411, i32 %414, i64 %417)
  %419 = load i32, i32* @TSDB_CODE_NOT_ACTIVE_SESSION, align 4
  store i32 %419, i32* %25, align 4
  br label %490

420:                                              ; preds = %399
  %421 = load i8*, i8** %22, align 8
  %422 = bitcast i8* %421 to i64*
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i32 0, i32 6
  %426 = load i64, i64* %425, align 8
  %427 = icmp sle i64 %423, %426
  br i1 %427, label %428, label %452

428:                                              ; preds = %420
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i32 0, i32 9
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 8
  %437 = load i32, i32* %436, align 4
  %438 = load i8*, i8** %22, align 8
  %439 = bitcast i8* %438 to i64*
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 6
  %443 = load i64, i64* %442, align 8
  %444 = call i32 (i8*, i32, i32, i32, i64, ...) @dWarn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %431, i32 %434, i32 %437, i64 %440, i64 %443)
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 1
  %447 = load i16, i16* %446, align 4
  %448 = sext i16 %447 to i32
  %449 = load i8*, i8** %22, align 8
  %450 = sext i32 %448 to i64
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  store i8* %451, i8** %22, align 8
  br label %487

452:                                              ; preds = %420
  %453 = load i8*, i8** %22, align 8
  %454 = bitcast i8* %453 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* %23, align 8
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @VALID_TIMESTAMP(i64 %455, i64 %456, i64 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %465, label %463

463:                                              ; preds = %452
  %464 = load i32, i32* @TSDB_CODE_TIMESTAMP_OUT_OF_RANGE, align 4
  store i32 %464, i32* %25, align 4
  br label %490

465:                                              ; preds = %452
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %467 = load i8*, i8** %22, align 8
  %468 = call i64 @vnodeInsertPointToCache(%struct.TYPE_19__* %466, i8* %467)
  %469 = icmp slt i64 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %465
  %471 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %471, i32* %25, align 4
  br label %490

472:                                              ; preds = %465
  %473 = load i8*, i8** %22, align 8
  %474 = bitcast i8* %473 to i64*
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 6
  store i64 %475, i64* %477, align 8
  %478 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 1
  %480 = load i16, i16* %479, align 4
  %481 = sext i16 %480 to i32
  %482 = load i8*, i8** %22, align 8
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds i8, i8* %482, i64 %483
  store i8* %484, i8** %22, align 8
  %485 = load i32, i32* %24, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %24, align 4
  br label %487

487:                                              ; preds = %472, %428
  %488 = load i32, i32* %19, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %19, align 4
  br label %394

490:                                              ; preds = %470, %463, %405, %394
  %491 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %492 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %491, i32 0, i32 4
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 1
  %494 = load i32, i32* %24, align 4
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i32 0, i32 7
  %497 = load i32, i32* %496, align 8
  %498 = sub nsw i32 %497, 1
  %499 = mul nsw i32 %494, %498
  %500 = call i32 @atomic_fetch_add_64(i32* %493, i32 %499)
  %501 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %502 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %501, i32 0, i32 4
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 0
  %504 = load i32, i32* %24, align 4
  %505 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %506 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %505, i32 0, i32 1
  %507 = load i16, i16* %506, align 4
  %508 = sext i16 %507 to i32
  %509 = mul nsw i32 %504, %508
  %510 = call i32 @atomic_fetch_add_64(i32* %503, i32 %509)
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 5
  %513 = call i32 @pthread_mutex_lock(i32* %512)
  %514 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 6
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = icmp sgt i64 %516, %519
  br i1 %520, label %521, label %527

521:                                              ; preds = %490
  %522 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %523 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %522, i32 0, i32 6
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 2
  store i64 %524, i64* %526, align 8
  br label %527

527:                                              ; preds = %521, %490
  %528 = load i64, i64* %28, align 8
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %530 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = icmp slt i64 %528, %531
  br i1 %532, label %533, label %537

533:                                              ; preds = %527
  %534 = load i64, i64* %28, align 8
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %536 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i32 0, i32 3
  store i64 %534, i64* %536, align 8
  br label %537

537:                                              ; preds = %533, %527
  %538 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 6
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %539, align 4
  %542 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %543 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %542, i32 0, i32 5
  %544 = call i32 @pthread_mutex_unlock(i32* %543)
  br label %545

545:                                              ; preds = %537, %59
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %550 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %549, i32 0, i32 9
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %553 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i32 0, i32 8
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* %24, align 4
  %556 = load i16, i16* %20, align 2
  %557 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %558 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %557, i32 0, i32 6
  %559 = load i64, i64* %558, align 8
  %560 = load i8, i8* %13, align 1
  %561 = sext i8 %560 to i32
  %562 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %563 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %562, i32 0, i32 4
  %564 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = call i32 (i8*, i32, i32, i32, i32, i16, ...) @dTrace(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 %548, i32 %551, i32 %554, i32 %555, i16 signext %556, i64 %559, i32 %561, i32 %565)
  %567 = load i32, i32* %24, align 4
  %568 = load i32*, i32** %16, align 8
  store i32 %567, i32* %568, align 4
  %569 = load i32, i32* %25, align 4
  store i32 %569, i32* %9, align 4
  br label %570

570:                                              ; preds = %545, %372, %260, %251, %227, %216, %176, %121
  %571 = load i32, i32* %9, align 4
  ret i32 %571
}

declare dso_local signext i16 @htons(i32) #1

declare dso_local i32 @dError(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @dTrace(i8*, i32, i32, i32, i32, i16 signext, ...) #1

declare dso_local i32 @vnodeProcessCommitTimer(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @vnodeWriteToCommitLog(%struct.TYPE_19__*, i32, i8*, i32, i32) #1

declare dso_local i32 @vnodeForwardToPeer(%struct.TYPE_19__*, i8*, i32, i32, i32) #1

declare dso_local i32 @vnodeSendMeterCfgMsg(i32, i32) #1

declare dso_local i32 @dWarn(i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @VALID_TIMESTAMP(i64, i64, i64) #1

declare dso_local i64 @vnodeInsertPointToCache(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @atomic_fetch_add_64(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
