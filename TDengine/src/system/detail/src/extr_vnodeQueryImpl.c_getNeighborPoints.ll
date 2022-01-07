; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getNeighborPoints.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getNeighborPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_34__, %struct.TYPE_29__* }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { i64*, i64* }
%struct.TYPE_33__ = type { i64 }

@.str = private unnamed_addr constant [57 x i8] c"QInfo:%p get next data point, fileId:%d, slot:%d, pos:%d\00", align 1
@vnodeSearchKeyFunc = common dso_local global i32* null, align 8
@QUERY_NOT_COMPLETED = common dso_local global i32 0, align 4
@QUERY_DESC_FORWARD_STEP = common dso_local global i32 0, align 4
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"QInfo:%p no previous data block, start fileId:%d, slot:%d, pos:%d, qrange:%lld-%lld, out of range\00", align 1
@QUERY_COMPLETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"QInfo:%p get prev data point, fileId:%d, slot:%d, pos:%d, pQuery->pos:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_30__*)* @getNeighborPoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getNeighborPoints(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %8, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %9, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %21 = call i32 @isPointInterpoQuery(%struct.TYPE_29__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %372

24:                                               ; preds = %3
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %26 = call i64 @isFirstLastRowQuery(%struct.TYPE_29__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %30 = call i32 @QUERY_IS_ASC_QUERY(%struct.TYPE_29__* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %37 = call i32 @QUERY_IS_ASC_QUERY(%struct.TYPE_29__* %36)
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = icmp ne %struct.TYPE_30__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br label %50

50:                                               ; preds = %42, %39
  %51 = phi i1 [ false, %39 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %10, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %55 = call i32 @GET_QINFO_ADDR(%struct.TYPE_29__* %54)
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, i32, i64, i64, i64, ...) @qTrace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i64 %61, i64 %64)
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %67 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_29__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %50
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @getOneRowFromDiskBlock(%struct.TYPE_28__* %70, i64* %73, i64 %76)
  br label %134

78:                                               ; preds = %50
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.TYPE_33__* @getCacheDataBlock(%struct.TYPE_32__* %79, %struct.TYPE_29__* %80, i64 %83)
  store %struct.TYPE_33__* %84, %struct.TYPE_33__** %10, align 8
  %85 = load i32*, i32** @vnodeSearchKeyFunc, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %117, %78
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %93 = icmp eq %struct.TYPE_33__* %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @getQueryPositionForCacheInvalid(%struct.TYPE_28__* %95, i32 %96)
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %99 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_29__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @getOneRowFromDiskBlock(%struct.TYPE_28__* %102, i64* %105, i64 %108)
  br label %118

110:                                              ; preds = %94
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call %struct.TYPE_33__* @getCacheDataBlock(%struct.TYPE_32__* %111, %struct.TYPE_29__* %112, i64 %115)
  store %struct.TYPE_33__* %116, %struct.TYPE_33__** %10, align 8
  br label %117

117:                                              ; preds = %110
  br label %91

118:                                              ; preds = %101, %91
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %120 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_29__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @getOneRowFromCacheBlock(%struct.TYPE_28__* %123, %struct.TYPE_32__* %124, %struct.TYPE_33__* %125, i64* %128, i64 %131)
  br label %133

133:                                              ; preds = %122, %118
  br label %134

134:                                              ; preds = %133, %69
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %12, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %143 = call i64 @isFirstLastRowQuery(%struct.TYPE_29__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %134
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %145, %134
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %153 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %154 = call i32 @setQueryStatus(%struct.TYPE_29__* %152, i32 %153)
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %151
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 5
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %160, %151
  store i32 1, i32* %4, align 4
  br label %372

177:                                              ; preds = %145
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %177
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %185, 1
  store i64 %186, i64* %13, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %188 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_29__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @getOneRowFromDiskBlock(%struct.TYPE_28__* %191, i64* %194, i64 %195)
  br label %206

197:                                              ; preds = %182
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* %13, align 8
  %205 = call i32 @getOneRowFromCacheBlock(%struct.TYPE_28__* %198, %struct.TYPE_32__* %199, %struct.TYPE_33__* %200, i64* %203, i64 %204)
  br label %206

206:                                              ; preds = %197, %190
  br label %348

207:                                              ; preds = %177
  %208 = load i32*, i32** @vnodeSearchKeyFunc, align 8
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %14, align 4
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @savePointPosition(%struct.TYPE_34__* %215, i64 %218, i64 %221, i64 %224)
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %227 = load i32, i32* @QUERY_DESC_FORWARD_STEP, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @moveToNextBlock(%struct.TYPE_28__* %226, i32 %227, i32 %228, i32 1)
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %234 = call i64 @Q_STATUS_EQUAL(i32 %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %261

236:                                              ; preds = %207
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %238 = call i32 @GET_QINFO_ADDR(%struct.TYPE_29__* %237)
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @dTrace(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %238, i32 %242, i32 %246, i32 %250, i64 %253, i64 %256)
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %259 = load i32, i32* @QUERY_COMPLETED, align 4
  %260 = call i32 @setQueryStatus(%struct.TYPE_29__* %258, i32 %259)
  store i32 0, i32* %4, align 4
  br label %372

261:                                              ; preds = %207
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp sge i64 %264, 0
  br i1 %265, label %266, label %302

266:                                              ; preds = %261
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %268, align 8
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %275, 1
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 4
  store i64 %276, i64* %278, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 1
  %282 = load i64*, i64** %281, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @getOneRowFromDiskBlock(%struct.TYPE_28__* %279, i64* %282, i64 %285)
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %288 = call i32 @GET_QINFO_ADDR(%struct.TYPE_29__* %287)
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = call i32 (i8*, i32, i64, i64, i64, ...) @qTrace(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %288, i64 %291, i64 %294, i64 %297, i64 %300)
  br label %346

302:                                              ; preds = %261
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = call %struct.TYPE_33__* @getCacheDataBlock(%struct.TYPE_32__* %303, %struct.TYPE_29__* %304, i64 %307)
  store %struct.TYPE_33__* %308, %struct.TYPE_33__** %10, align 8
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %310 = icmp eq %struct.TYPE_33__* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %345

312:                                              ; preds = %302
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %315, 1
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 4
  store i64 %316, i64* %318, align 8
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %320 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 1
  %324 = load i64*, i64** %323, align 8
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @getOneRowFromCacheBlock(%struct.TYPE_28__* %319, %struct.TYPE_32__* %320, %struct.TYPE_33__* %321, i64* %324, i64 %327)
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %330 = call i32 @GET_QINFO_ADDR(%struct.TYPE_29__* %329)
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = sub nsw i64 %339, 1
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = call i32 (i8*, i32, i64, i64, i64, ...) @qTrace(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %330, i64 %333, i64 %336, i64 %340, i64 %343)
  br label %345

345:                                              ; preds = %312, %311
  br label %346

346:                                              ; preds = %345, %266
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347, %206
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 1
  %351 = load i64*, i64** %350, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 0
  %353 = load i64, i64* %352, align 8
  %354 = inttoptr i64 %353 to i64*
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 0
  store i64 %355, i64* %357, align 8
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 0
  %360 = load i64*, i64** %359, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 0
  %362 = load i64, i64* %361, align 8
  %363 = inttoptr i64 %362 to i64*
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 1
  store i64 %364, i64* %366, align 8
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 5
  store i64 %369, i64* %371, align 8
  store i32 1, i32* %4, align 4
  br label %372

372:                                              ; preds = %348, %236, %176, %23
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i32 @isPointInterpoQuery(%struct.TYPE_29__*) #1

declare dso_local i64 @isFirstLastRowQuery(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @QUERY_IS_ASC_QUERY(%struct.TYPE_29__*) #1

declare dso_local i32 @qTrace(i8*, i32, i64, i64, i64, ...) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_29__*) #1

declare dso_local i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_29__*) #1

declare dso_local i32 @getOneRowFromDiskBlock(%struct.TYPE_28__*, i64*, i64) #1

declare dso_local %struct.TYPE_33__* @getCacheDataBlock(%struct.TYPE_32__*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @getQueryPositionForCacheInvalid(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @getOneRowFromCacheBlock(%struct.TYPE_28__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i64*, i64) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @savePointPosition(%struct.TYPE_34__*, i64, i64, i64) #1

declare dso_local i32 @moveToNextBlock(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i32 @dTrace(i8*, i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
