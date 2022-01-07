; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseLimitClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseLimitClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, i8* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"soffset/offset can not be less than 0\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"slimit/soffset only available for STable query\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"function not supported on table\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"slimit/soffset can not apply to projection query\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%p limit 0, no output result\00", align 1
@TSDB_SQL_RETRIEVE_EMPTY_RESULT = common dso_local global i8* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_TAGS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"%p no table in metricmeta, no output result\00", align 1
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseLimitClause(%struct.TYPE_28__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  store %struct.TYPE_30__* %18, %struct.TYPE_30__** %6, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %20 = call %struct.TYPE_23__* @tscGetMeterMetaInfo(%struct.TYPE_30__* %19, i32 0)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %7, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_24__* %22 to i8*
  %26 = bitcast %struct.TYPE_24__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = bitcast %struct.TYPE_25__* %28 to i8*
  %32 = bitcast %struct.TYPE_25__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %2
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @setErrMsg(%struct.TYPE_30__* %45, i8* %46)
  %48 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %48, i64* %3, align 8
  br label %198

49:                                               ; preds = %38
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %57 = call i32 @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_28__* %56)
  %58 = load i8*, i8** @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_23__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %151

65:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %67 = call i64 @tscQueryOnlyMetricTags(%struct.TYPE_30__* %66, i32* %12)
  %68 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %71, i64* %3, align 8
  br label %198

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** @TSDB_SQL_RETRIEVE_TAGS, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %101

79:                                               ; preds = %72
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %81 = call i64 @tscProjectionQueryOnMetric(%struct.TYPE_30__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89, %83
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @setErrMsg(%struct.TYPE_30__* %96, i8* %97)
  %99 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %99, i64* %3, align 8
  br label %198

100:                                              ; preds = %89, %79
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = call i32 @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_28__* %108)
  %110 = load i8*, i8** @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %113, i64* %3, align 8
  br label %198

114:                                              ; preds = %101
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %116 = call i64 @tscGetMetricMeta(%struct.TYPE_28__* %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i64, i64* %13, align 8
  store i64 %121, i64* %3, align 8
  br label %198

122:                                              ; preds = %114
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %124, align 8
  store %struct.TYPE_32__* %125, %struct.TYPE_32__** %14, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %122
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %132 = icmp eq %struct.TYPE_32__* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %130, %122
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = call i32 @tscTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_28__* %139)
  %141 = load i8*, i8** @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %196

151:                                              ; preds = %61
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157, %151
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @setErrMsg(%struct.TYPE_30__* %164, i8* %165)
  %167 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %167, i64* %3, align 8
  br label %198

168:                                              ; preds = %157
  store i64 0, i64* %15, align 8
  br label %169

169:                                              ; preds = %192, %168
  %170 = load i64, i64* %15, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %170, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %178 = load i64, i64* %15, align 8
  %179 = call %struct.TYPE_29__* @tscSqlExprGet(%struct.TYPE_30__* %177, i64 %178)
  store %struct.TYPE_29__* %179, %struct.TYPE_29__** %16, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %176
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 @setErrMsg(%struct.TYPE_30__* %187, i8* %188)
  %190 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %190, i64* %3, align 8
  br label %198

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %15, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %15, align 8
  br label %169

195:                                              ; preds = %169
  br label %196

196:                                              ; preds = %195, %144
  %197 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %197, i64* %3, align 8
  br label %198

198:                                              ; preds = %196, %186, %163, %120, %107, %95, %70, %44
  %199 = load i64, i64* %3, align 8
  ret i64 %199
}

declare dso_local %struct.TYPE_23__* @tscGetMeterMetaInfo(%struct.TYPE_30__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setErrMsg(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_23__*) #1

declare dso_local i64 @tscQueryOnlyMetricTags(%struct.TYPE_30__*, i32*) #1

declare dso_local i64 @tscProjectionQueryOnMetric(%struct.TYPE_30__*) #1

declare dso_local i64 @tscGetMetricMeta(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @tscSqlExprGet(%struct.TYPE_30__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
