; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeAllocateCacheBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeAllocateCacheBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64* }
%struct.TYPE_21__ = type { i64, i32, i32, i8**, i32, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, %struct.TYPE_21__** }

@vnodeList = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"vid:%d sid:%d id:%s, meter is not there\00", align 1
@vnodeProcessCommitTimer = common dso_local global i32 0, align 4
@vnodeTmrCtrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"vid:%d sid:%d id:%s, all blocks are not committed yet....\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"vid:%d sid:%d id:%s, committing process is too slow, notFreeSlots:%d....\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"vid:%d sid:%d id:%s, allocate a cache block, numOfBlocks:%d, slot:%d, index:%d notFreeSlots:%d blocks:%d\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"vid:%d sid:%d id:%s, too many unCommitted slots, unCommitted:%d notFreeSlots:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeAllocateCacheBlock(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i64 %20
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %5, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %7, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %11, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %452

40:                                               ; preds = %1
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = call i32 @pthread_mutex_lock(i32* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %48, align 8
  %50 = icmp eq %struct.TYPE_21__** %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %46, %40
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i64, i32, i32, ...) @dError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %58, i32 %61, i32 %64)
  store i32 -1, i32* %2, align 4
  br label %452

66:                                               ; preds = %46
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %69, 1
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32, i32* @vnodeProcessCommitTimer, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = load i32, i32* @vnodeTmrCtrl, align 4
  %84 = call i32* @taosTmrStart(i32 %77, i32 %81, %struct.TYPE_16__* %82, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %76, %71
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp sge i32 %91, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %88
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = call i32 @vnodeCreateCommitThread(%struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = call i32 @pthread_mutex_unlock(i32* %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i64, i32, i32, ...) @dError(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %106, i32 %109, i32 %112)
  store i32 -1, i32* %2, align 4
  br label %452

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114, %235
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 5
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %118, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %125, %struct.TYPE_21__** %6, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %236

131:                                              ; preds = %115
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %131
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = srem i32 %143, %147
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %136
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = call i32 @vnodeCreateCommitThread(%struct.TYPE_16__* %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 4
  %163 = call i32 @pthread_mutex_unlock(i32* %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i64, i32, i32, ...) @dError(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %167, i32 %170, i32 %173, i32 %176)
  store i32 -1, i32* %2, align 4
  br label %452

178:                                              ; preds = %136
  br label %235

179:                                              ; preds = %131
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %12, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %186, %struct.TYPE_20__** %13, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  %194 = add nsw i32 %193, 1
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %194, %197
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = srem i32 %198, %201
  store i32 %202, i32* %14, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %205, i64 %207
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  store %struct.TYPE_21__* %209, %struct.TYPE_21__** %6, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %211 = icmp ne %struct.TYPE_21__* %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %179
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = call i32 @vnodeFreeCacheBlock(%struct.TYPE_21__* %218)
  br label %236

220:                                              ; preds = %179
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = srem i32 %224, %228
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %178
  br label %115

236:                                              ; preds = %212, %130
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %4, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = srem i32 %246, %250
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 5
  store %struct.TYPE_18__* %258, %struct.TYPE_18__** %260, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  store i32 1, i32* %262, align 8
  %263 = load i32, i32* %4, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %267 = bitcast %struct.TYPE_21__* %266 to i8*
  %268 = getelementptr inbounds i8, i8* %267, i64 40
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = mul i64 %272, 8
  %274 = getelementptr inbounds i8, i8* %268, i64 %273
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 3
  %277 = load i8**, i8*** %276, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 0
  store i8* %274, i8** %278, align 8
  store i32 1, i32* %15, align 4
  br label %279

279:                                              ; preds = %315, %236
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %318

285:                                              ; preds = %279
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 3
  %288 = load i8**, i8*** %287, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %288, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %295, align 8
  %297 = load i32, i32* %15, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %302, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %293, i64 %307
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 3
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313
  store i8* %308, i8** %314, align 8
  br label %315

315:                                              ; preds = %285
  %316 = load i32, i32* %15, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %15, align 4
  br label %279

318:                                              ; preds = %279
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %324, align 8
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %333, 1
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = srem i32 %334, %337
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 8
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 0
  store i64 %343, i64* %345, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 4
  store i32 %348, i32* %350, align 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp sgt i32 %353, %356
  br i1 %357, label %358, label %370

358:                                              ; preds = %318
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 5
  %361 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %360, align 8
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %361, i64 %365
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %366, align 8
  store %struct.TYPE_21__* %367, %struct.TYPE_21__** %6, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %369 = call i32 @vnodeFreeCacheBlock(%struct.TYPE_21__* %368)
  br label %370

370:                                              ; preds = %358, %318
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 5
  %373 = load i64*, i64** %372, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = inttoptr i64 %377 to %struct.TYPE_21__*
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 5
  %381 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %380, align 8
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %381, i64 %385
  store %struct.TYPE_21__* %378, %struct.TYPE_21__** %386, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = sext i32 %389 to i64
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %4, align 4
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 4
  %409 = load i64, i64* %408, align 8
  %410 = call i32 (i8*, i64, i32, i32, i32, i32, ...) @dTrace(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i64 %390, i32 %393, i32 %396, i32 %399, i32 %402, i32 %403, i32 %406, i64 %409)
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = icmp sgt i32 %413, %416
  br i1 %417, label %427, label %418

418:                                              ; preds = %370
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = sdiv i32 %424, 2
  %426 = icmp sge i32 %421, %425
  br i1 %426, label %427, label %447

427:                                              ; preds = %418, %370
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = call i32 (i8*, i64, i32, i32, i32, i32, ...) @dTrace(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i64 %431, i32 %434, i32 %437, i32 %440, i32 %443)
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %446 = call i32 @vnodeCreateCommitThread(%struct.TYPE_16__* %445)
  store i32 1, i32* %10, align 4
  br label %447

447:                                              ; preds = %427, %418
  %448 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 4
  %450 = call i32 @pthread_mutex_unlock(i32* %449)
  %451 = load i32, i32* %10, align 4
  store i32 %451, i32* %2, align 4
  br label %452

452:                                              ; preds = %447, %158, %97, %51, %39
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @dError(i8*, i64, i32, i32, ...) #1

declare dso_local i32* @taosTmrStart(i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @vnodeCreateCommitThread(%struct.TYPE_16__*) #1

declare dso_local i32 @vnodeFreeCacheBlock(%struct.TYPE_21__*) #1

declare dso_local i32 @dTrace(i8*, i64, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
