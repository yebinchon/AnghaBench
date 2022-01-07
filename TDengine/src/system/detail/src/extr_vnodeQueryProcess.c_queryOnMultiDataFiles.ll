; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_queryOnMultiDataFiles.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_queryOnMultiDataFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32, %struct.TYPE_59__*, i8*, %struct.TYPE_57__*, %struct.TYPE_72__ }
%struct.TYPE_59__ = type { i64, i64, i32, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_64__*, i32, %struct.TYPE_66__**, i32, %struct.TYPE_69__ }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_69__ = type { i32, i64, i32, %struct.TYPE_63__*, %struct.TYPE_59__*, %struct.TYPE_70__*, %struct.TYPE_68__, %struct.TYPE_71__ }
%struct.TYPE_63__ = type { i64 }
%struct.TYPE_70__ = type { i8*, i32 }
%struct.TYPE_68__ = type { i64 }
%struct.TYPE_71__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_72__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_67__ }
%struct.TYPE_67__ = type { i32 }
%struct.TYPE_60__ = type { i32, i32, %struct.TYPE_59__*, %struct.TYPE_58__* }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_61__ = type { %struct.TYPE_65__, i32, %struct.TYPE_60__* }
%struct.TYPE_65__ = type { i32, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i64, i64, i64 }

@vnodeSearchKeyFunc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"QInfo:%p start to check data blocks in %d files\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"QInfo:%p file:%s, %d meters qualified\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"QInfo:%p failed to allocate memory to perform query processing, abort\00", align 1
@TSDB_CODE_SERV_OUT_OF_MEMORY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"QInfo:%p file:%s, %d meters contains %d blocks to be checked\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"QInfo:%p start to load %d blocks and check\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"QInfo:%p load and check %ld blocks, and continue. elapsed:%ldms\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c"QInfo:%p vid:%d sid:%d id:%s, query completed, no need to scan this data block. qrange:%lld-%lld, lastKey:%lld\00", align 1
@DISK_DATA_LOADED = common dso_local global i64 0, align 8
@BLK_FILE_BLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"QInfo:%p complete check %d files, %d blocks, elapsed time:%.3fms\00", align 1
@QUERY_NOT_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_60__* (%struct.TYPE_56__*, %struct.TYPE_60__*)* @queryOnMultiDataFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_60__* @queryOnMultiDataFiles(%struct.TYPE_56__* %0, %struct.TYPE_60__* %1) #0 {
  %3 = alloca %struct.TYPE_60__*, align 8
  %4 = alloca %struct.TYPE_56__*, align 8
  %5 = alloca %struct.TYPE_60__*, align 8
  %6 = alloca %struct.TYPE_72__*, align 8
  %7 = alloca %struct.TYPE_57__*, align 8
  %8 = alloca %struct.TYPE_69__*, align 8
  %9 = alloca %struct.TYPE_61__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_59__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_71__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_70__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_60__**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_61__*, align 8
  %31 = alloca %struct.TYPE_60__*, align 8
  %32 = alloca %struct.TYPE_58__*, align 8
  %33 = alloca %struct.TYPE_59__*, align 8
  %34 = alloca %struct.TYPE_62__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %4, align 8
  store %struct.TYPE_60__* %1, %struct.TYPE_60__** %5, align 8
  %41 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %41, i32 0, i32 4
  store %struct.TYPE_72__* %42, %struct.TYPE_72__** %6, align 8
  %43 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_57__*, %struct.TYPE_57__** %44, align 8
  store %struct.TYPE_57__* %45, %struct.TYPE_57__** %7, align 8
  %46 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %46, i32 0, i32 4
  store %struct.TYPE_69__* %47, %struct.TYPE_69__** %8, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %9, align 8
  store i64 0, i64* %10, align 8
  %48 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_66__**, %struct.TYPE_66__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_66__*, %struct.TYPE_66__** %53, i64 0
  %55 = load %struct.TYPE_66__*, %struct.TYPE_66__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_59__* @getMeterObj(i32 %50, i32 %57)
  store %struct.TYPE_59__* %58, %struct.TYPE_59__** %11, align 8
  %59 = load i32*, i32** @vnodeSearchKeyFunc, align 8
  %60 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  %68 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %69 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.TYPE_56__* %68, i32 %71)
  %73 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %74 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %2
  br label %79

77:                                               ; preds = %2
  %78 = load i32, i32* @INT32_MAX, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ -1, %76 ], [ %78, %77 ]
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %14, align 8
  %82 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %85)
  store i64 %86, i64* %15, align 8
  %87 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %87, i32 0, i32 7
  store %struct.TYPE_71__* %88, %struct.TYPE_71__** %16, align 8
  store i64 0, i64* %17, align 8
  %89 = call i64 (...) @taosGetTimestampUs()
  store i64 %89, i64* %18, align 8
  br label %90

90:                                               ; preds = %79, %152, %175, %494
  %91 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %92 = call i64 @isQueryKilled(%struct.TYPE_72__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %500

95:                                               ; preds = %90
  %96 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %97 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @vnodeGetVnodeHeaderFileIdx(i64* %14, %struct.TYPE_69__* %96, i32 %100)
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = icmp ult i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %500

105:                                              ; preds = %95
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_71__*, %struct.TYPE_71__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_70__*, %struct.TYPE_70__** %118, align 8
  %120 = load i64, i64* %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %119, i64 %120
  store %struct.TYPE_70__* %121, %struct.TYPE_70__** %20, align 8
  %122 = load %struct.TYPE_70__*, %struct.TYPE_70__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %21, align 8
  store i64 0, i64* %22, align 8
  %125 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load %struct.TYPE_70__*, %struct.TYPE_70__** %20, align 8
  %128 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_64__*, %struct.TYPE_64__** %129, align 8
  %131 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %132 = call %struct.TYPE_60__** @vnodeFilterQualifiedMeters(%struct.TYPE_56__* %125, i64 %126, %struct.TYPE_70__* %127, %struct.TYPE_64__* %130, %struct.TYPE_60__* %131, i64* %22)
  store %struct.TYPE_60__** %132, %struct.TYPE_60__*** %23, align 8
  %133 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %134 = load %struct.TYPE_70__*, %struct.TYPE_70__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_56__* %133, i32 %136, i64 %137)
  %139 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %140 = icmp eq %struct.TYPE_60__** %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %105
  %142 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %143 = call i32 @dError(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_56__* %142)
  %144 = load i8*, i8** @TSDB_CODE_SERV_OUT_OF_MEMORY, align 8
  %145 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %3, align 8
  br label %539

149:                                              ; preds = %105
  %150 = load i64, i64* %22, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %14, align 8
  %156 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %157 = call i32 @tfree(%struct.TYPE_60__** %156)
  br label %90

158:                                              ; preds = %149
  %159 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %160 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %161 = load i8*, i8** %21, align 8
  %162 = load i64, i64* %22, align 8
  %163 = load %struct.TYPE_70__*, %struct.TYPE_70__** %20, align 8
  %164 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %165 = call i32 @getDataBlocksForMeters(%struct.TYPE_57__* %159, %struct.TYPE_72__* %160, i8* %161, i64 %162, %struct.TYPE_70__* %163, %struct.TYPE_60__** %164)
  store i32 %165, i32* %24, align 4
  %166 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %167 = load %struct.TYPE_70__*, %struct.TYPE_70__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %22, align 8
  %171 = load i32, i32* %24, align 4
  %172 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_56__* %166, i32 %169, i64 %170, i32 %171)
  %173 = load i32, i32* %24, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %158
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %14, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %14, align 8
  %179 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %180 = call i32 @tfree(%struct.TYPE_60__** %179)
  br label %90

181:                                              ; preds = %158
  %182 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %183 = load i64, i64* %22, align 8
  %184 = load i32, i32* %24, align 4
  %185 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %186 = ptrtoint %struct.TYPE_56__* %185 to i64
  %187 = call i64 @createDataBlocksInfoEx(%struct.TYPE_60__** %182, i64 %183, %struct.TYPE_61__** %9, i32 %184, i64* %10, i64 %186)
  store i64 %187, i64* %25, align 8
  %188 = load i64, i64* %25, align 8
  %189 = icmp ult i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %181
  %191 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %192 = call i32 @dError(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_56__* %191)
  %193 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %194 = call i32 @tfree(%struct.TYPE_60__** %193)
  %195 = load i8*, i8** @TSDB_CODE_SERV_OUT_OF_MEMORY, align 8
  %196 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %3, align 8
  br label %539

200:                                              ; preds = %181
  %201 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %202 = load i32, i32* %24, align 4
  %203 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_56__* %201, i32 %202)
  store i64 10000, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %17, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %17, align 8
  %208 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %209 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %215

212:                                              ; preds = %200
  %213 = load i32, i32* %24, align 4
  %214 = sub nsw i32 %213, 1
  br label %215

215:                                              ; preds = %212, %211
  %216 = phi i32 [ 0, %211 ], [ %214, %212 ]
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %29, align 8
  br label %218

218:                                              ; preds = %490, %215
  %219 = load i64, i64* %29, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp ult i64 %219, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i64, i64* %29, align 8
  %225 = icmp uge i64 %224, 0
  br label %226

226:                                              ; preds = %223, %218
  %227 = phi i1 [ false, %218 ], [ %225, %223 ]
  br i1 %227, label %228, label %494

228:                                              ; preds = %226
  %229 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %230 = call i64 @isQueryKilled(%struct.TYPE_72__* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %494

233:                                              ; preds = %228
  %234 = load i64, i64* %29, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = call i64 (...) @taosGetTimestampMs()
  store i64 %237, i64* %27, align 8
  br label %254

238:                                              ; preds = %233
  %239 = load i64, i64* %29, align 8
  %240 = load i64, i64* %26, align 8
  %241 = urem i64 %239, %240
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = call i64 (...) @taosGetTimestampMs()
  store i64 %244, i64* %28, align 8
  %245 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %246 = load i64, i64* %26, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i64, i64* %28, align 8
  %249 = load i64, i64* %27, align 8
  %250 = sub i64 %248, %249
  %251 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_56__* %245, i32 %247, i64 %250)
  %252 = call i64 (...) @taosGetTimestampMs()
  store i64 %252, i64* %27, align 8
  br label %253

253:                                              ; preds = %243, %238
  br label %254

254:                                              ; preds = %253, %236
  %255 = load %struct.TYPE_61__*, %struct.TYPE_61__** %9, align 8
  %256 = load i64, i64* %29, align 8
  %257 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %255, i64 %256
  store %struct.TYPE_61__* %257, %struct.TYPE_61__** %30, align 8
  %258 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %259 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_60__*, %struct.TYPE_60__** %259, align 8
  store %struct.TYPE_60__* %260, %struct.TYPE_60__** %31, align 8
  %261 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %262 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_58__*, %struct.TYPE_58__** %262, align 8
  store %struct.TYPE_58__* %263, %struct.TYPE_58__** %32, align 8
  %264 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %265 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_59__*, %struct.TYPE_59__** %265, align 8
  store %struct.TYPE_59__* %266, %struct.TYPE_59__** %33, align 8
  %267 = load %struct.TYPE_59__*, %struct.TYPE_59__** %33, align 8
  %268 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %268, i32 0, i32 1
  store %struct.TYPE_59__* %267, %struct.TYPE_59__** %269, align 8
  %270 = load %struct.TYPE_59__*, %struct.TYPE_59__** %33, align 8
  %271 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %271, i32 0, i32 4
  store %struct.TYPE_59__* %270, %struct.TYPE_59__** %272, align 8
  %273 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %274 = load %struct.TYPE_58__*, %struct.TYPE_58__** %32, align 8
  %275 = call i32 @restoreIntervalQueryRange(%struct.TYPE_69__* %273, %struct.TYPE_58__* %274)
  %276 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %338

280:                                              ; preds = %254
  %281 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp sgt i64 %283, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %280
  %289 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %290 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %288, %280
  %293 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp slt i64 %295, %298
  br i1 %299, label %300, label %325

300:                                              ; preds = %292
  %301 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %302 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %325, label %304

304:                                              ; preds = %300, %288
  %305 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %306 = load %struct.TYPE_59__*, %struct.TYPE_59__** %33, align 8
  %307 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_59__*, %struct.TYPE_59__** %33, align 8
  %310 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_59__*, %struct.TYPE_59__** %33, align 8
  %313 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @qTrace(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_56__* %305, i64 %308, i32 %311, i32 %314, i32 %317, i64 %320, i64 %323)
  br label %490

325:                                              ; preds = %300, %292
  %326 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %327 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %331 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %334 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_58__*, %struct.TYPE_58__** %32, align 8
  %337 = call i32 @setExecutionContext(%struct.TYPE_57__* %326, i32 %329, i32 %332, i32 %335, %struct.TYPE_58__* %336)
  br label %345

338:                                              ; preds = %254
  %339 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %340 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %341 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_58__*, %struct.TYPE_58__** %32, align 8
  %344 = call i32 @setIntervalQueryExecutionContext(%struct.TYPE_57__* %339, i32 %342, %struct.TYPE_58__* %343)
  br label %345

345:                                              ; preds = %338, %325
  %346 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %347 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_62__*, %struct.TYPE_62__** %348, align 8
  store %struct.TYPE_62__* %349, %struct.TYPE_62__** %34, align 8
  %350 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %351 = load %struct.TYPE_58__*, %struct.TYPE_58__** %32, align 8
  %352 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @onDemandLoadDatablock(%struct.TYPE_72__* %350, i32 %353)
  store i32 %354, i32* %35, align 4
  %355 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %356 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %357 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %362 = load i64, i64* %19, align 8
  %363 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %364 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %35, align 4
  %368 = call i64 @LoadDatablockOnDemand(%struct.TYPE_62__* %355, i32* %358, i32* %360, %struct.TYPE_69__* %361, i64 %362, i32 %365, i32 %366, i32 %367)
  store i64 %368, i64* %36, align 8
  %369 = load i64, i64* %36, align 8
  %370 = load i64, i64* @DISK_DATA_LOADED, align 8
  %371 = icmp ne i64 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %345
  %373 = load %struct.TYPE_71__*, %struct.TYPE_71__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 8
  br label %490

377:                                              ; preds = %345
  %378 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %379 = load i32, i32* @BLK_FILE_BLOCK, align 4
  %380 = call i32 @getBlockBasicInfo(%struct.TYPE_62__* %378, i32 %379)
  store i32 %380, i32* %37, align 4
  %381 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = icmp uge i64 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %377
  %386 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %386, i32 0, i32 4
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %390 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ult i64 %388, %391
  br label %393

393:                                              ; preds = %385, %377
  %394 = phi i1 [ false, %377 ], [ %392, %385 ]
  %395 = zext i1 %394 to i32
  %396 = call i32 @assert(i32 %395)
  %397 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %397, i32 0, i32 3
  %399 = load %struct.TYPE_63__*, %struct.TYPE_63__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = inttoptr i64 %401 to i32*
  store i32* %402, i32** %38, align 8
  %403 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = call i64 @IS_DATA_BLOCK_LOADED(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %426

408:                                              ; preds = %393
  %409 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %410 = call i64 @needPrimaryTimestampCol(%struct.TYPE_72__* %409, i32* %37)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %426

412:                                              ; preds = %408
  %413 = load i32*, i32** %38, align 8
  %414 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %414, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds i32, i32* %413, i64 %416
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %39, align 4
  %419 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %420 = load i32, i32* %39, align 4
  %421 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %422 = call i32 @doCheckWithPrevQueryRange(%struct.TYPE_56__* %419, i32 %420, %struct.TYPE_60__* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %412
  br label %490

425:                                              ; preds = %412
  br label %473

426:                                              ; preds = %408, %393
  %427 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %428 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = icmp sge i64 %429, %432
  br i1 %433, label %434, label %446

434:                                              ; preds = %426
  %435 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %436 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = icmp sle i64 %437, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %434
  %443 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %444 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %469, label %446

446:                                              ; preds = %442, %434, %426
  %447 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %448 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %450, i32 0, i32 3
  %452 = load i64, i64* %451, align 8
  %453 = icmp sge i64 %449, %452
  br i1 %453, label %454, label %467

454:                                              ; preds = %446
  %455 = load %struct.TYPE_62__*, %struct.TYPE_62__** %34, align 8
  %456 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %455, i32 0, i32 2
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = icmp sle i64 %457, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %454
  %463 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %464 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__* %463)
  %465 = icmp ne i64 %464, 0
  %466 = xor i1 %465, true
  br label %467

467:                                              ; preds = %462, %454, %446
  %468 = phi i1 [ false, %454 ], [ false, %446 ], [ %466, %462 ]
  br label %469

469:                                              ; preds = %467, %442
  %470 = phi i1 [ true, %442 ], [ %468, %467 ]
  %471 = zext i1 %470 to i32
  %472 = call i32 @assert(i32 %471)
  br label %473

473:                                              ; preds = %469, %425
  %474 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %475 = load i32*, i32** %38, align 8
  %476 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %477 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = inttoptr i64 %481 to i8*
  %483 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %484 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %485 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %12, align 4
  %489 = call i32 @queryOnBlock(%struct.TYPE_57__* %474, i32* %475, i32 %478, i8* %482, i32* %37, %struct.TYPE_60__* %483, i32 %487, i32 %488)
  br label %490

490:                                              ; preds = %473, %424, %372, %304
  %491 = load i64, i64* %15, align 8
  %492 = load i64, i64* %29, align 8
  %493 = add i64 %492, %491
  store i64 %493, i64* %29, align 8
  br label %218

494:                                              ; preds = %232, %226
  %495 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %23, align 8
  %496 = call i32 @tfree(%struct.TYPE_60__** %495)
  %497 = load i64, i64* %15, align 8
  %498 = load i64, i64* %14, align 8
  %499 = add i64 %498, %497
  store i64 %499, i64* %14, align 8
  br label %90

500:                                              ; preds = %104, %94
  %501 = call i64 (...) @taosGetTimestampUs()
  %502 = load i64, i64* %18, align 8
  %503 = sub i64 %501, %502
  store i64 %503, i64* %40, align 8
  %504 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %505 = load %struct.TYPE_69__*, %struct.TYPE_69__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i64, i64* %17, align 8
  %509 = load i64, i64* %40, align 8
  %510 = uitofp i64 %509 to double
  %511 = fdiv double %510, 1.000000e+03
  %512 = call i32 (i8*, %struct.TYPE_56__*, i32, ...) @dTrace(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_56__* %504, i32 %507, i64 %508, double %511)
  %513 = load i64, i64* %40, align 8
  %514 = load %struct.TYPE_71__*, %struct.TYPE_71__** %16, align 8
  %515 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = add i64 %516, %513
  store i64 %517, i64* %515, align 8
  %518 = load i64, i64* %17, align 8
  %519 = load %struct.TYPE_71__*, %struct.TYPE_71__** %16, align 8
  %520 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = add i64 %522, %518
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %520, align 4
  %525 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_64__*, %struct.TYPE_64__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.TYPE_71__*, %struct.TYPE_71__** %16, align 8
  %531 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %530, i32 0, i32 1
  store i32 %529, i32* %531, align 8
  %532 = load %struct.TYPE_72__*, %struct.TYPE_72__** %6, align 8
  %533 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %534 = call i32 @setQueryStatus(%struct.TYPE_72__* %532, i32 %533)
  %535 = load %struct.TYPE_61__*, %struct.TYPE_61__** %9, align 8
  %536 = load i64, i64* %10, align 8
  %537 = call i32 @freeMeterBlockInfoEx(%struct.TYPE_61__* %535, i64 %536)
  %538 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  store %struct.TYPE_60__* %538, %struct.TYPE_60__** %3, align 8
  br label %539

539:                                              ; preds = %500, %190, %141
  %540 = load %struct.TYPE_60__*, %struct.TYPE_60__** %3, align 8
  ret %struct.TYPE_60__* %540
}

declare dso_local %struct.TYPE_59__* @getMeterObj(i32, i32) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_56__*, i32, ...) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_72__*) #1

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i64 @taosGetTimestampUs(...) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_72__*) #1

declare dso_local i64 @vnodeGetVnodeHeaderFileIdx(i64*, %struct.TYPE_69__*, i32) #1

declare dso_local %struct.TYPE_60__** @vnodeFilterQualifiedMeters(%struct.TYPE_56__*, i64, %struct.TYPE_70__*, %struct.TYPE_64__*, %struct.TYPE_60__*, i64*) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_56__*) #1

declare dso_local i32 @tfree(%struct.TYPE_60__**) #1

declare dso_local i32 @getDataBlocksForMeters(%struct.TYPE_57__*, %struct.TYPE_72__*, i8*, i64, %struct.TYPE_70__*, %struct.TYPE_60__**) #1

declare dso_local i64 @createDataBlocksInfoEx(%struct.TYPE_60__**, i64, %struct.TYPE_61__**, i32, i64*, i64) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @restoreIntervalQueryRange(%struct.TYPE_69__*, %struct.TYPE_58__*) #1

declare dso_local i32 @qTrace(i8*, %struct.TYPE_56__*, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @setExecutionContext(%struct.TYPE_57__*, i32, i32, i32, %struct.TYPE_58__*) #1

declare dso_local i32 @setIntervalQueryExecutionContext(%struct.TYPE_57__*, i32, %struct.TYPE_58__*) #1

declare dso_local i32 @onDemandLoadDatablock(%struct.TYPE_72__*, i32) #1

declare dso_local i64 @LoadDatablockOnDemand(%struct.TYPE_62__*, i32*, i32*, %struct.TYPE_69__*, i64, i32, i32, i32) #1

declare dso_local i32 @getBlockBasicInfo(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_DATA_BLOCK_LOADED(i32) #1

declare dso_local i64 @needPrimaryTimestampCol(%struct.TYPE_72__*, i32*) #1

declare dso_local i32 @doCheckWithPrevQueryRange(%struct.TYPE_56__*, i32, %struct.TYPE_60__*) #1

declare dso_local i32 @queryOnBlock(%struct.TYPE_57__*, i32*, i32, i8*, i32*, %struct.TYPE_60__*, i32, i32) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_72__*, i32) #1

declare dso_local i32 @freeMeterBlockInfoEx(%struct.TYPE_61__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
