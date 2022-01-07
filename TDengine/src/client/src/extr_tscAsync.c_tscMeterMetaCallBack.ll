; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscMeterMetaCallBack.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscMeterMetaCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i32*, %struct.TYPE_24__, %struct.TYPE_23__*, i32*, i32, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }

@.str = private unnamed_addr constant [23 x i8] c"%p callBack is NULL!!!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%p failed to renew meterMeta\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"%p renew meterMeta successfully, command:%d, code:%d, thandle:%p, retry:%d\00", align 1
@TSDB_QUERY_TYPE_STABLE_SUBQUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%p get metricMeta during metric query successfully\00", align 1
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"%p stream:%p meta is updated, start new query, command:%d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%p get meterMeta/metricMeta successfully\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscMeterMetaCallBack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %7, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = icmp eq %struct.TYPE_23__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = icmp ne %struct.TYPE_23__* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %3
  br label %298

26:                                               ; preds = %19
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %8, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %9, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %10, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = call i32 @tscError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %39)
  br label %298

41:                                               ; preds = %26
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, inttoptr (i64 1 to i8*)
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @abs(i32 %52) #3
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = call i32 (i8*, %struct.TYPE_23__*, ...) @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 5
  %61 = call i32 @tsem_post(i32* %60)
  br label %106

62:                                               ; preds = %46
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, %struct.TYPE_23__*, ...) @tscTrace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_23__* %63, i32 %67, i32 %71, i32 %74, i32 %77)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %80, i32 0)
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = icmp eq %struct.TYPE_20__* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %89, i32 0)
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @tscGetMeterMeta(%struct.TYPE_23__* %87, i32 %92, i32 0)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = call i32 @tscSendMsgToServer(%struct.TYPE_23__* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %62
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 5
  %104 = call i32 @tsem_post(i32* %103)
  br label %105

105:                                              ; preds = %98, %62
  br label %106

106:                                              ; preds = %105, %51
  br label %298

107:                                              ; preds = %41
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @abs(i32 %111) #3
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = call i32 @tscQueueAsyncRes(%struct.TYPE_23__* %115)
  br label %298

117:                                              ; preds = %107
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %227

122:                                              ; preds = %117
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_SUBQUERY, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_SUBQUERY, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %212

131:                                              ; preds = %122
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %133 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %132, i32 0)
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %11, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br label %150

150:                                              ; preds = %145, %140, %131
  %151 = phi i1 [ false, %140 ], [ false, %131 ], [ %149, %145 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = bitcast i32* %156 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %157, %struct.TYPE_25__** %12, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  store %struct.TYPE_23__* %160, %struct.TYPE_23__** %13, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %165 = icmp eq %struct.TYPE_23__* %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %150
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br label %181

181:                                              ; preds = %174, %166, %150
  %182 = phi i1 [ false, %166 ], [ false, %150 ], [ %180, %174 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %186 = call i32 (i8*, %struct.TYPE_23__*, ...) @tscTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_23__* %185)
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %189, i32 0)
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @tscGetMeterMeta(%struct.TYPE_23__* %187, i32 %192, i32 0)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %181
  br label %298

201:                                              ; preds = %181
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = call i32 @tscGetMetricMeta(%struct.TYPE_23__* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %298

211:                                              ; preds = %201
  br label %226

212:                                              ; preds = %122
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @tsParseSql(%struct.TYPE_23__* %213, i32 %216, i32 %219, i32 0)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %298

225:                                              ; preds = %212
  br label %226

226:                                              ; preds = %225, %211
  br label %264

227:                                              ; preds = %117
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %229 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %228, i32 0)
  store %struct.TYPE_26__* %229, %struct.TYPE_26__** %14, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @tscGetMeterMeta(%struct.TYPE_23__* %230, i32 %233, i32 0)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %298

242:                                              ; preds = %227
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %244 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %243, i32 0)
  store %struct.TYPE_26__* %244, %struct.TYPE_26__** %14, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %242
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %250 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_26__* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %248
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %254 = call i32 @tscGetMetricMeta(%struct.TYPE_23__* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %252
  br label %298

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %248, %242
  br label %264

264:                                              ; preds = %263, %226
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %269 = call i32 @tscQueueAsyncRes(%struct.TYPE_23__* %268)
  br label %298

270:                                              ; preds = %264
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %292

275:                                              ; preds = %270
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i8*, %struct.TYPE_23__*, ...) @tscTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_23__* %276, i32* %279, i32 %283)
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 2
  %287 = call i32 @tscTansformSQLFunctionForMetricQuery(%struct.TYPE_24__* %286)
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @tscIncStreamExecutionCount(i32* %290)
  br label %295

292:                                              ; preds = %270
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %294 = call i32 (i8*, %struct.TYPE_23__*, ...) @tscTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_23__* %293)
  br label %295

295:                                              ; preds = %292, %275
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %297 = call i32 @tscDoQuery(%struct.TYPE_23__* %296)
  br label %298

298:                                              ; preds = %295, %267, %261, %241, %224, %210, %200, %110, %106, %38, %25
  ret void
}

declare dso_local i32 @tscError(i8*, %struct.TYPE_23__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_23__*, ...) #1

declare dso_local i32 @tsem_post(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @tscGetMeterMeta(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tscSendMsgToServer(%struct.TYPE_23__*) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_23__*) #1

declare dso_local i32 @tscGetMetricMeta(%struct.TYPE_23__*) #1

declare dso_local i32 @tsParseSql(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_26__*) #1

declare dso_local i32 @tscTansformSQLFunctionForMetricQuery(%struct.TYPE_24__*) #1

declare dso_local i32 @tscIncStreamExecutionCount(i32*) #1

declare dso_local i32 @tscDoQuery(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
