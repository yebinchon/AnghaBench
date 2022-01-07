; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcHandle.c_gcProcessQueryRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcHandle.c_gcProcessQueryRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__*, i32*, i32, i32, i32, i32, %struct.TYPE_27__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"context:%p, fd:%d, ip:%s, process grafana query msg\00", align 1
@HTTP_NO_MSG_INPUT = common dso_local global i32 0, align 4
@HTTP_PARSE_GC_REQ_ERROR = common dso_local global i32 0, align 4
@HTTP_GC_QUERY_NULL = common dso_local global i32 0, align 4
@HTTP_GC_QUERY_SIZE = common dso_local global i32 0, align 4
@HTTP_BUFFER_SIZE = common dso_local global i32 0, align 4
@HTTP_NO_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"refId\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"context:%p, fd:%d, ip:%s, user:%s, refId is null\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, user:%s, refId buffer is full\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, user:%s, alias buffer is full\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"context:%p, fd:%d, ip:%s, user:%s, sql is null\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"context:%p, fd:%d, ip:%s, user:%s, sql buffer is full\00", align 1
@HTTP_GC_TARGET_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [81 x i8] c"context:%p, fd:%d, ip:%s, user:%s, cant't malloc target size, sql buffer is full\00", align 1
@HTTP_REQTYPE_MULTI_SQL = common dso_local global i32 0, align 4
@gcQueryMethod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcProcessQueryRequest(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, %struct.TYPE_28__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %17, i32 %20, i32 %23)
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 6
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %4, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = load i32, i32* @HTTP_NO_MSG_INPUT, align 4
  %36 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %288

37:                                               ; preds = %1
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.TYPE_25__* @cJSON_Parse(i8* %38)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %6, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = icmp eq %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %44 = load i32, i32* @HTTP_PARSE_GC_REQ_ERROR, align 4
  %45 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %288

46:                                               ; preds = %37
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %48 = call i32 @cJSON_GetArraySize(%struct.TYPE_25__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %53 = load i32, i32* @HTTP_GC_QUERY_NULL, align 4
  %54 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %52, i32 %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = call i32 @cJSON_Delete(%struct.TYPE_25__* %55)
  store i32 0, i32* %2, align 4
  br label %288

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 100
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %62 = load i32, i32* @HTTP_GC_QUERY_SIZE, align 4
  %63 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %61, i32 %62)
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = call i32 @cJSON_Delete(%struct.TYPE_25__* %64)
  store i32 0, i32* %2, align 4
  br label %288

66:                                               ; preds = %57
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %70 = call i32 @httpMallocMultiCmds(%struct.TYPE_28__* %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %74 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %75 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %73, i32 %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = call i32 @cJSON_Delete(%struct.TYPE_25__* %76)
  store i32 0, i32* %2, align 4
  br label %288

78:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %275, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %278

83:                                               ; preds = %79
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.TYPE_25__* @cJSON_GetArrayItem(%struct.TYPE_25__* %84, i32 %85)
  store %struct.TYPE_25__* %86, %struct.TYPE_25__** %9, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %88 = icmp eq %struct.TYPE_25__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %275

90:                                               ; preds = %83
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %92 = call %struct.TYPE_25__* @cJSON_GetObjectItem(%struct.TYPE_25__* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_25__* %92, %struct.TYPE_25__** %10, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = icmp eq %struct.TYPE_25__* %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100, %95, %90
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, %struct.TYPE_28__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_28__* %107, i32 %110, i32 %113, i32 %116)
  br label %275

118:                                              ; preds = %100
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @httpAddToSqlCmdBuffer(%struct.TYPE_28__* %119, i8* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @httpWarn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_28__* %127, i32 %130, i32 %133, i32 %136)
  br label %278

138:                                              ; preds = %118
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %140 = call %struct.TYPE_25__* @cJSON_GetObjectItem(%struct.TYPE_25__* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_25__* %140, %struct.TYPE_25__** %12, align 8
  store i32 -1, i32* %13, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %142 = icmp eq %struct.TYPE_25__* %141, null
  br i1 %142, label %175, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %175, label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strlen(i8* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @httpAddToSqlCmdBuffer(%struct.TYPE_28__* %155, i8* %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %174

162:                                              ; preds = %154
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @httpWarn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_28__* %163, i32 %166, i32 %169, i32 %172)
  br label %278

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174, %148, %143, %138
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %180 = call i32 @httpAddToSqlCmdBuffer(%struct.TYPE_28__* %179, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %183 = call %struct.TYPE_25__* @cJSON_GetObjectItem(%struct.TYPE_25__* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_25__* %183, %struct.TYPE_25__** %14, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %185 = icmp eq %struct.TYPE_25__* %184, null
  br i1 %185, label %197, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %197, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strlen(i8* %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %191, %186, %181
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, %struct.TYPE_28__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_28__* %198, i32 %201, i32 %204, i32 %207)
  br label %275

209:                                              ; preds = %191
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @httpAddToSqlCmdBuffer(%struct.TYPE_28__* %210, i8* %213)
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %229

217:                                              ; preds = %209
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @httpWarn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_28__* %218, i32 %221, i32 %224, i32 %227)
  br label %278

229:                                              ; preds = %209
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %231 = call %struct.TYPE_26__* @httpNewSqlCmd(%struct.TYPE_28__* %230)
  store %struct.TYPE_26__* %231, %struct.TYPE_26__** %16, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %233 = icmp eq %struct.TYPE_26__* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %236 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %237 = call i32 @httpSendErrorResp(%struct.TYPE_28__* %235, i32 %236)
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %239 = call i32 @cJSON_Delete(%struct.TYPE_25__* %238)
  store i32 0, i32* %2, align 4
  br label %288

240:                                              ; preds = %229
  %241 = load i32, i32* %15, align 4
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 4
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %253 = load i64, i64* @HTTP_GC_TARGET_SIZE, align 8
  %254 = add nsw i64 %253, 1
  %255 = call i32 @httpAddToSqlCmdBufferWithSize(%struct.TYPE_28__* %252, i64 %254)
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %274

262:                                              ; preds = %240
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @httpWarn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_28__* %263, i32 %266, i32 %269, i32 %272)
  br label %278

274:                                              ; preds = %240
  br label %275

275:                                              ; preds = %274, %197, %106, %89
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %79

278:                                              ; preds = %262, %217, %162, %126, %79
  %279 = load i32, i32* @HTTP_REQTYPE_MULTI_SQL, align 4
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 1
  store i32* @gcQueryMethod, i32** %283, align 8
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  store i64 0, i64* %287, align 8
  store i32 1, i32* %2, align 4
  br label %288

288:                                              ; preds = %278, %234, %72, %60, %51, %42, %33
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_28__*, i32, i32, ...) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_25__* @cJSON_Parse(i8*) #1

declare dso_local i32 @cJSON_GetArraySize(%struct.TYPE_25__*) #1

declare dso_local i32 @cJSON_Delete(%struct.TYPE_25__*) #1

declare dso_local i32 @httpMallocMultiCmds(%struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @cJSON_GetArrayItem(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @cJSON_GetObjectItem(%struct.TYPE_25__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @httpAddToSqlCmdBuffer(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @httpWarn(i8*, %struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @httpNewSqlCmd(%struct.TYPE_28__*) #1

declare dso_local i32 @httpAddToSqlCmdBufferWithSize(%struct.TYPE_28__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
