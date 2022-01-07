; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeUpdateMeter.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeUpdateMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32 }

@vnodeList = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"vid:%d sid:%d id:%s, vnode is deleted, abort update schema\00", align 1
@TSDB_METER_STATE_DELETING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"vid:%d sid:%d id:%s, meter is deleted, abort update schema\00", align 1
@TSDB_METER_STATE_UPDATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"vid:%d sid:%d id:%s, meter is deleted, failed to update, state:%d\00", align 1
@TSDB_METER_STATE_READY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [75 x i8] c"vid:%d sid:%d id:%s, update failed, retry later, numOfQueries:%d, state:%d\00", align 1
@vnodeTmrCtrl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"vid:%d sid:%d id:%s, failed to start update timer, no retry\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"vid:%d sid:%d id:%s, failed to start commit timer\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"vid:%d sid:%d id:%s, failed to start update timer\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"vid:%d sid:%d meterId:%s, there are data in cache, commit first, update later\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"vid:%d sid:%d id:%s, schema is updated, state:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeUpdateMeter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %2
  br label %316

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vnodeList, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i64 %29
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %32, align 8
  %34 = icmp eq %struct.TYPE_15__** %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %25
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41, i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = call i32 @free(%struct.TYPE_15__* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = call i32 @free(%struct.TYPE_15__* %50)
  br label %316

52:                                               ; preds = %25
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %55, i64 %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %7, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = icmp eq %struct.TYPE_15__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = load i64, i64* @TSDB_METER_STATE_DELETING, align 8
  %66 = call i64 @vnodeIsMeterState(%struct.TYPE_15__* %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63, %52
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %74, i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_15__* %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = call i32 @free(%struct.TYPE_15__* %83)
  br label %316

85:                                               ; preds = %63
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %88 = call i64 @vnodeSetMeterState(%struct.TYPE_15__* %86, i32 %87)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @TSDB_METER_STATE_DELETING, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i32 (i8*, i64, i64, i32, ...) @dError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %95, i64 %98, i32 %101, i64 %102)
  br label %316

104:                                              ; preds = %85
  store i64 0, i64* %9, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = call i32 @pthread_mutex_lock(i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %9, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = call i32 @pthread_mutex_unlock(i32* %112)
  %114 = load i64, i64* %9, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %104
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @TSDB_METER_STATE_READY, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116, %104
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %123 = call i32 @vnodeClearMeterState(%struct.TYPE_15__* %121, i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %129, i32 %132, i64 %133, i64 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = load i32, i32* @vnodeTmrCtrl, align 4
  %138 = call i32* @taosTmrStart(void (i8*, i8*)* @vnodeUpdateMeter, i32 50, %struct.TYPE_15__* %136, i32 %137)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %157

140:                                              ; preds = %120
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i64, i64, i32, ...) @dError(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %143, i64 %146, i32 %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = call i32 @free(%struct.TYPE_15__* %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = call i32 @free(%struct.TYPE_15__* %155)
  br label %157

157:                                              ; preds = %140, %120
  br label %316

158:                                              ; preds = %116
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = call i32 @vnodeIsCacheCommitted(%struct.TYPE_15__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %226, label %162

162:                                              ; preds = %158
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = load i32, i32* @vnodeTmrCtrl, align 4
  %165 = call i32* @taosTmrStart(void (i8*, i8*)* @vnodeProcessUpdateSchemaTimer, i32 0, %struct.TYPE_15__* %163, i32 %164)
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i64, i64, i32, ...) @dError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %170, i64 %173, i32 %176)
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %180 = call i32 @vnodeClearMeterState(%struct.TYPE_15__* %178, i32 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = call i32 @free(%struct.TYPE_15__* %183)
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = call i32 @free(%struct.TYPE_15__* %185)
  br label %316

187:                                              ; preds = %162
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = load i32, i32* @vnodeTmrCtrl, align 4
  %190 = call i32* @taosTmrStart(void (i8*, i8*)* @vnodeUpdateMeter, i32 50, %struct.TYPE_15__* %188, i32 %189)
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %212

192:                                              ; preds = %187
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, i64, i64, i32, ...) @dError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %195, i64 %198, i32 %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %205 = call i32 @vnodeClearMeterState(%struct.TYPE_15__* %203, i32 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = call i32 @free(%struct.TYPE_15__* %208)
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = call i32 @free(%struct.TYPE_15__* %210)
  br label %212

212:                                              ; preds = %192, %187
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i64 %215, i64 %218, i32 %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %225 = call i32 @vnodeClearMeterState(%struct.TYPE_15__* %223, i32 %224)
  br label %316

226:                                              ; preds = %158
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @strcpy(i32 %229, i32 %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 11
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 11
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 9
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vnodeList, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %256, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %226
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vnodeList, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  store i64 %268, i64* %274, align 8
  br label %275

275:                                              ; preds = %265, %226
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = call i32 @tfree(%struct.TYPE_15__* %278)
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 8
  store %struct.TYPE_15__* %282, %struct.TYPE_15__** %284, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %286 = call i32 @vnodeFreeCacheInfo(%struct.TYPE_15__* %285)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %288 = call i32 @vnodeAllocateCacheInfo(%struct.TYPE_15__* %287)
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 7
  store i32 %288, i32* %290, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %297 = call i32 @vnodeSaveMeterObjToFile(%struct.TYPE_15__* %296)
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %299 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %300 = call i32 @vnodeClearMeterState(%struct.TYPE_15__* %298, i32 %299)
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %303, i64 %306, i32 %309, i32 %312)
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %315 = call i32 @free(%struct.TYPE_15__* %314)
  br label %316

316:                                              ; preds = %275, %212, %167, %157, %92, %68, %35, %24
  ret void
}

declare dso_local i32 @dTrace(i8*, i64, i64, i32, ...) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local i64 @vnodeIsMeterState(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @vnodeSetMeterState(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dError(i8*, i64, i64, i32, ...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vnodeClearMeterState(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @taosTmrStart(void (i8*, i8*)*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vnodeIsCacheCommitted(%struct.TYPE_15__*) #1

declare dso_local void @vnodeProcessUpdateSchemaTimer(i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_15__*) #1

declare dso_local i32 @vnodeFreeCacheInfo(%struct.TYPE_15__*) #1

declare dso_local i32 @vnodeAllocateCacheInfo(%struct.TYPE_15__*) #1

declare dso_local i32 @vnodeSaveMeterObjToFile(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
