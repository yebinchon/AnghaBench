; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgProcessQueryRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgProcessQueryRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32*, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [53 x i8] c"context:%p, fd:%d, ip:%s, process telegraf query msg\00", align 1
@HTTP_NO_MSG_INPUT = common dso_local global i32 0, align 4
@HTTP_TG_INVALID_JSON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"context:%p, fd:%d, ip:%s, multiple metrics:%d at one time\00", align 1
@HTTP_TG_METRICS_NULL = common dso_local global i32 0, align 4
@HTTP_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@HTTP_TG_METRICS_SIZE = common dso_local global i32 0, align 4
@HTTP_BUFFER_SIZE = common dso_local global i32 0, align 4
@HTTP_NO_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@HTTP_CMD_TYPE_CREATE_DB = common dso_local global i8* null, align 8
@HTTP_CMD_RETURN_TYPE_NO_RETURN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"create database if not exists %s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"context:%p, fd:%d, ip:%s, single metric\00", align 1
@HTTP_REQTYPE_MULTI_SQL = common dso_local global i32 0, align 4
@tgQueryMethod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgProcessQueryRequest(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, %struct.TYPE_18__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %16, i32 %19, i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 5
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %6, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = load i32, i32* @HTTP_NO_MSG_INPUT, align 4
  %35 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %206

36:                                               ; preds = %2
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @cJSON_Parse(i8* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @HTTP_TG_INVALID_JSON, align 4
  %44 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %206

45:                                               ; preds = %36
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @cJSON_GetObjectItem(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %143

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @cJSON_GetArraySize(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, %struct.TYPE_18__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %53, i32 %56, i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = load i32, i32* @HTTP_TG_METRICS_NULL, align 4
  %67 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @cJSON_Delete(i32* %68)
  store i32 0, i32* %3, align 4
  br label %206

70:                                               ; preds = %50
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @HTTP_MAX_CMD_SIZE, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = load i32, i32* @HTTP_TG_METRICS_SIZE, align 4
  %80 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %78, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @cJSON_Delete(i32* %81)
  store i32 0, i32* %3, align 4
  br label %206

83:                                               ; preds = %70
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %87 = call i32 @httpMallocMultiCmds(%struct.TYPE_18__* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %92 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %90, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @cJSON_Delete(i32* %93)
  store i32 0, i32* %3, align 4
  br label %206

95:                                               ; preds = %83
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = call %struct.TYPE_16__* @httpNewSqlCmd(%struct.TYPE_18__* %96)
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %12, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %99 = icmp eq %struct.TYPE_16__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %103 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %101, i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @cJSON_Delete(i32* %104)
  store i32 0, i32* %3, align 4
  br label %206

106:                                              ; preds = %95
  %107 = load i8*, i8** @HTTP_CMD_TYPE_CREATE_DB, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @HTTP_CMD_RETURN_TYPE_NO_RETURN, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i8* @httpAddToSqlCmdBuffer(%struct.TYPE_18__* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %139, %106
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32* @cJSON_GetArrayItem(i32* %123, i32 %124)
  store i32* %125, i32** %14, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @tgProcessSingleMetric(%struct.TYPE_18__* %129, i32* %130, i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @cJSON_Delete(i32* %135)
  store i32 0, i32* %3, align 4
  br label %206

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %118

142:                                              ; preds = %118
  br label %194

143:                                              ; preds = %45
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, %struct.TYPE_18__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %144, i32 %147, i32 %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %154 = call i32 @httpMallocMultiCmds(%struct.TYPE_18__* %152, i32 3, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %143
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %159 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %157, i32 %158)
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @cJSON_Delete(i32* %160)
  store i32 0, i32* %3, align 4
  br label %206

162:                                              ; preds = %143
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = call %struct.TYPE_16__* @httpNewSqlCmd(%struct.TYPE_18__* %163)
  store %struct.TYPE_16__* %164, %struct.TYPE_16__** %15, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %166 = icmp eq %struct.TYPE_16__* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = load i32, i32* @HTTP_NO_ENOUGH_MEMORY, align 4
  %170 = call i32 @httpSendErrorResp(%struct.TYPE_18__* %168, i32 %169)
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @cJSON_Delete(i32* %171)
  store i32 0, i32* %3, align 4
  br label %206

173:                                              ; preds = %162
  %174 = load i8*, i8** @HTTP_CMD_TYPE_CREATE_DB, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** @HTTP_CMD_RETURN_TYPE_NO_RETURN, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i8* @httpAddToSqlCmdBuffer(%struct.TYPE_18__* %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i32 @tgProcessSingleMetric(%struct.TYPE_18__* %185, i32* %186, i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %173
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @cJSON_Delete(i32* %191)
  store i32 0, i32* %3, align 4
  br label %206

193:                                              ; preds = %173
  br label %194

194:                                              ; preds = %193, %142
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @cJSON_Delete(i32* %195)
  %197 = load i32, i32* @HTTP_REQTYPE_MULTI_SQL, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  store i32* @tgQueryMethod, i32** %201, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 2, i32* %205, align 4
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %194, %190, %167, %156, %134, %100, %89, %77, %64, %41, %32
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_18__*, i32, i32, ...) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @cJSON_Parse(i8*) #1

declare dso_local i32* @cJSON_GetObjectItem(i32*, i8*) #1

declare dso_local i32 @cJSON_GetArraySize(i32*) #1

declare dso_local i32 @cJSON_Delete(i32*) #1

declare dso_local i32 @httpMallocMultiCmds(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @httpNewSqlCmd(%struct.TYPE_18__*) #1

declare dso_local i8* @httpAddToSqlCmdBuffer(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32* @cJSON_GetArrayItem(i32*, i32) #1

declare dso_local i32 @tgProcessSingleMetric(%struct.TYPE_18__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
