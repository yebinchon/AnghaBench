; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restBuildSqlJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restBuildSqlJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@JsonArrStt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@REST_TIMESTAMP_FMT_LOCAL_STRING = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MICRO = common dso_local global i32 0, align 4
@REST_TIMESTAMP_FMT_TIMESTAMP = common dso_local global i32 0, align 4
@JsonArrEnd = common dso_local global i32 0, align 4
@tsRestRowLimit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"context:%p, fd:%d, ip:%s, user:%s, retrieve rows:%lld larger than limit:%d, abort retrieve\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"context:%p, fd:%d, ip:%s, user:%s, connection is closed, abort retrieve\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"context:%p, fd:%d, ip:%s, user:%s, total rows:%lld retrieved\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restBuildSqlJson(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = call i32* @httpMallocJsonBuf(%struct.TYPE_12__* %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %252

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @taos_num_fields(i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.TYPE_10__* @taos_fetch_fields(i32* %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %195, %23
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %198

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = call i32** @taos_fetch_row(i32* %39)
  store i32** %40, i32*** %16, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @httpJsonItemToken(i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @JsonArrStt, align 4
  %45 = call i32 @httpJsonToken(i32* %43, i32 %44)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %188, %38
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %191

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @httpJsonItemToken(i32* %51)
  %53 = load i32**, i32*** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @httpJsonOriginString(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %188

62:                                               ; preds = %50
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %186 [
    i32 135, label %69
    i32 128, label %69
    i32 130, label %78
    i32 132, label %87
    i32 137, label %96
    i32 133, label %105
    i32 134, label %115
    i32 136, label %125
    i32 131, label %125
    i32 129, label %139
  ]

69:                                               ; preds = %62, %62
  %70 = load i32*, i32** %12, align 8
  %71 = load i32**, i32*** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @httpJsonInt(i32* %70, i32 %76)
  br label %187

78:                                               ; preds = %62
  %79 = load i32*, i32** %12, align 8
  %80 = load i32**, i32*** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @httpJsonInt(i32* %79, i32 %85)
  br label %187

87:                                               ; preds = %62
  %88 = load i32*, i32** %12, align 8
  %89 = load i32**, i32*** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @httpJsonInt(i32* %88, i32 %94)
  br label %187

96:                                               ; preds = %62
  %97 = load i32*, i32** %12, align 8
  %98 = load i32**, i32*** %16, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @httpJsonInt64(i32* %97, i32 %103)
  br label %187

105:                                              ; preds = %62
  %106 = load i32*, i32** %12, align 8
  %107 = load i32**, i32*** %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to float*
  %113 = load float, float* %112, align 4
  %114 = call i32 @httpJsonFloat(i32* %106, float %113)
  br label %187

115:                                              ; preds = %62
  %116 = load i32*, i32** %12, align 8
  %117 = load i32**, i32*** %16, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to double*
  %123 = load double, double* %122, align 8
  %124 = call i32 @httpJsonDouble(i32* %116, double %123)
  br label %187

125:                                              ; preds = %62, %62
  %126 = load i32*, i32** %12, align 8
  %127 = load i32**, i32*** %16, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @httpJsonStringForTransMean(i32* %126, i32* %131, i32 %137)
  br label %187

139:                                              ; preds = %62
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @REST_TIMESTAMP_FMT_LOCAL_STRING, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32*, i32** %12, align 8
  %145 = load i32**, i32*** %16, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @taos_result_precision(i32* %151)
  %153 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @httpJsonTimestamp(i32* %144, i32 %150, i32 %155)
  br label %185

157:                                              ; preds = %139
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @REST_TIMESTAMP_FMT_TIMESTAMP, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32*, i32** %12, align 8
  %163 = load i32**, i32*** %16, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @httpJsonInt64(i32* %162, i32 %168)
  br label %184

170:                                              ; preds = %157
  %171 = load i32*, i32** %12, align 8
  %172 = load i32**, i32*** %16, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @taos_result_precision(i32* %178)
  %180 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @httpJsonUtcTimestamp(i32* %171, i32 %177, i32 %182)
  br label %184

184:                                              ; preds = %170, %161
  br label %185

185:                                              ; preds = %184, %143
  br label %187

186:                                              ; preds = %62
  br label %187

187:                                              ; preds = %186, %185, %125, %115, %105, %96, %87, %78, %69
  br label %188

188:                                              ; preds = %187, %59
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %46

191:                                              ; preds = %46
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* @JsonArrEnd, align 4
  %194 = call i32 @httpJsonToken(i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %34

198:                                              ; preds = %34
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @tsRestRowLimit, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @tsRestRowLimit, align 8
  %219 = call i32 (i8*, %struct.TYPE_12__*, i64, i32, i32, i64, ...) @httpTrace(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %205, i64 %208, i32 %211, i32 %214, i64 %217, i64 %218)
  store i32 0, i32* %6, align 4
  br label %252

220:                                              ; preds = %198
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp sle i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @httpError(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %226, i64 %229, i32 %232, i32 %235)
  store i32 0, i32* %6, align 4
  br label %252

237:                                              ; preds = %220
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i32 (i8*, %struct.TYPE_12__*, i64, i32, i32, i64, ...) @httpTrace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %238, i64 %241, i32 %244, i32 %247, i64 %250)
  store i32 1, i32* %6, align 4
  br label %252

252:                                              ; preds = %237, %225, %204, %22
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local i32* @httpMallocJsonBuf(%struct.TYPE_12__*) #1

declare dso_local i32 @taos_num_fields(i32*) #1

declare dso_local %struct.TYPE_10__* @taos_fetch_fields(i32*) #1

declare dso_local i32** @taos_fetch_row(i32*) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonOriginString(i32*, i8*, i32) #1

declare dso_local i32 @httpJsonInt(i32*, i32) #1

declare dso_local i32 @httpJsonInt64(i32*, i32) #1

declare dso_local i32 @httpJsonFloat(i32*, float) #1

declare dso_local i32 @httpJsonDouble(i32*, double) #1

declare dso_local i32 @httpJsonStringForTransMean(i32*, i32*, i32) #1

declare dso_local i32 @httpJsonTimestamp(i32*, i32, i32) #1

declare dso_local i32 @taos_result_precision(i32*) #1

declare dso_local i32 @httpJsonUtcTimestamp(i32*, i32, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_12__*, i64, i32, i32, i64, ...) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_12__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
