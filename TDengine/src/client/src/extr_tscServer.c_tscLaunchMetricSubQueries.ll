; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLaunchMetricSubQueries.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLaunchMetricSubQueries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_26__, %struct.TYPE_30__, i64, i32, i64 }
%struct.TYPE_26__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32, i32*, %struct.TYPE_31__*, i64, i32*, %struct.TYPE_29__*, i32*, i32** }
%struct.TYPE_28__ = type { i32 }

@TSDB_CODE_QUERY_CANCELLED = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@POINTER_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%p retrieved query data from %d vnode(s)\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE_NP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%p sub:%p launch subquery.orderOfSub:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscLaunchMetricSubQueries(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_28__, align 4
  %16 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 1
  store %struct.TYPE_30__* %18, %struct.TYPE_30__** %4, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TSDB_CODE_QUERY_CANCELLED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @TSDB_SQL_RETRIEVE_METRIC, align 4
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %223

34:                                               ; preds = %1
  store i32** null, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  store i32 65536, i32* %8, align 4
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = call %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_26__* %38, i32 0)
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %9, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %50 = call i64 @tscLocalReducerEnvCreate(%struct.TYPE_31__* %49, i32*** %5, i32** %6, i32** %7, i32 65536)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %34
  %54 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %63 = call i32 @tscQueueAsyncRes(%struct.TYPE_31__* %62)
  br label %64

64:                                               ; preds = %61, %53
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %223

69:                                               ; preds = %34
  %70 = load i64, i64* @POINTER_BYTES, align 8
  %71 = load i64, i64* %10, align 8
  %72 = mul nsw i64 %70, %71
  %73 = call i32 @malloc(i64 %72)
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %80 = load i64, i64* %10, align 8
  %81 = inttoptr i64 %80 to %struct.TYPE_31__*
  %82 = call i32 (i8*, %struct.TYPE_31__*, %struct.TYPE_31__*, ...) @tscTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_31__* %79, %struct.TYPE_31__* %81)
  %83 = call %struct.TYPE_29__* @calloc(i32 1, i32 16)
  store %struct.TYPE_29__* %83, %struct.TYPE_29__** %12, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  store i64 0, i64* %13, align 8
  br label %91

91:                                               ; preds = %218, %69
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %221

95:                                               ; preds = %91
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TSDB_CODE_QUERY_CANCELLED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %101, %95
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %13, align 8
  %110 = sub nsw i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32**, i32*** %5, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %121 = call i32 @doCleanupSubqueries(%struct.TYPE_31__* %114, i64 %115, i64 %116, %struct.TYPE_32__* null, i32* %117, i32* %118, i32** %119, %struct.TYPE_29__* %120)
  %122 = load i64, i64* %13, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %2, align 4
  br label %223

130:                                              ; preds = %107
  br label %221

131:                                              ; preds = %101
  %132 = call %struct.TYPE_29__* @calloc(i32 1, i32 64)
  %133 = bitcast %struct.TYPE_29__* %132 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %133, %struct.TYPE_32__** %14, align 8
  %134 = load i32**, i32*** %5, align 8
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 7
  store i32** %134, i32*** %136, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 6
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 5
  store %struct.TYPE_29__* %140, %struct.TYPE_29__** %142, align 8
  %143 = call %struct.TYPE_29__* @calloc(i32 1, i32 65540)
  %144 = bitcast %struct.TYPE_29__* %143 to i32*
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 4
  store i32* %144, i32** %146, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 2
  store %struct.TYPE_31__* %150, %struct.TYPE_31__** %152, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 1
  store i32* %153, i32** %155, align 8
  %156 = bitcast %struct.TYPE_28__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %156, i8 0, i64 4, i1 false)
  %157 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE_NP, align 4
  %158 = call i32 @pthread_mutexattr_settype(%struct.TYPE_28__* %15, i32 %157)
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = call i32 @pthread_mutex_init(i32* %160, %struct.TYPE_28__* %15)
  %162 = call i32 @pthread_mutexattr_destroy(%struct.TYPE_28__* %15)
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %165 = call %struct.TYPE_31__* @tscCreateSqlObjForSubquery(%struct.TYPE_31__* %163, %struct.TYPE_32__* %164, i32* null)
  store %struct.TYPE_31__* %165, %struct.TYPE_31__** %16, align 8
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %167 = icmp eq %struct.TYPE_31__* %166, null
  br i1 %167, label %168, label %193

168:                                              ; preds = %131
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %13, align 8
  %171 = sub nsw i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32**, i32*** %5, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %183 = call i32 @doCleanupSubqueries(%struct.TYPE_31__* %175, i64 %176, i64 %177, %struct.TYPE_32__* %178, i32* %179, i32* %180, i32** %181, %struct.TYPE_29__* %182)
  %184 = load i64, i64* %13, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %168
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %2, align 4
  br label %223

192:                                              ; preds = %168
  br label %221

193:                                              ; preds = %131
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @tsBufClone(i64 %203)
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  store i64 %204, i64* %207, align 8
  br label %208

208:                                              ; preds = %199, %193
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i8*, %struct.TYPE_31__*, %struct.TYPE_31__*, ...) @tscTrace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_31__* %209, %struct.TYPE_31__* %210, i32 %214)
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %217 = call i32 @tscProcessSql(%struct.TYPE_31__* %216)
  br label %218

218:                                              ; preds = %208
  %219 = load i64, i64* %13, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %13, align 8
  br label %91

221:                                              ; preds = %192, %130, %91
  %222 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %186, %124, %64, %24
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tscLocalReducerEnvCreate(%struct.TYPE_31__*, i32***, i32**, i32**, i32) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_31__*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_31__*, %struct.TYPE_31__*, ...) #1

declare dso_local %struct.TYPE_29__* @calloc(i32, i32) #1

declare dso_local i32 @doCleanupSubqueries(%struct.TYPE_31__*, i64, i64, %struct.TYPE_32__*, i32*, i32*, i32**, %struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutexattr_settype(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @pthread_mutexattr_destroy(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @tscCreateSqlObjForSubquery(%struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i64 @tsBufClone(i64) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
