; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doFunctionsCompatibleCheck.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doFunctionsCompatibleCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"functions/columns not allowed in group by query\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"interval not allowed in group by normal column\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"group by not allowed on projection query\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"tags retrieve not compatible with group by\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"retrieve tags not compatible with group by or interval query\00", align 1
@TSDB_SQL_RETRIEVE_TAGS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_23__* null, align 8
@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @doFunctionsCompatibleCheck(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %9, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %24 = call %struct.TYPE_29__* @tscGetMeterMetaInfo(%struct.TYPE_28__* %23, i32 0)
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %10, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSDB_SQL_RETRIEVE_TAGS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %1
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %30
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @setErrMsg(%struct.TYPE_28__* %42, i8* %43)
  %45 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %45, i64* %2, align 8
  br label %213

46:                                               ; preds = %36
  %47 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %47, i64* %2, align 8
  br label %213

48:                                               ; preds = %1
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %210

54:                                               ; preds = %48
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @tsGetSchema(i32 %57)
  store i32* %58, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %60 = call i64 @onlyTagPrjFunction(%struct.TYPE_28__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = call i64 @allTagPrjInGroupby(%struct.TYPE_28__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %68 = call i32 @updateTagPrjFunction(%struct.TYPE_28__* %67)
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %70 = call i64 @doAddGroupbyColumnsOnDemand(%struct.TYPE_28__* %69)
  store i64 %70, i64* %2, align 8
  br label %213

71:                                               ; preds = %62, %54
  store i64 0, i64* %15, align 8
  br label %72

72:                                               ; preds = %183, %71
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %186

79:                                               ; preds = %72
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call %struct.TYPE_27__* @tscSqlExprGet(%struct.TYPE_28__* %80, i64 %81)
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %16, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %79
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %89
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i64, i64* %19, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %98, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %97
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %107, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i64 %109
  store %struct.TYPE_30__* %110, %struct.TYPE_30__** %20, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  br label %124

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %19, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %19, align 8
  br label %97

124:                                              ; preds = %119, %97
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %128, i64* %2, align 8
  br label %213

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %89, %79
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** @aAggs, align 8
  %132 = load i64, i64* %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @IS_MULTIOUTPUT(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %130
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load i64, i64* %17, align 8
  %148 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 @setErrMsg(%struct.TYPE_28__* %162, i8* %163)
  %165 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %165, i64* %2, align 8
  br label %213

166:                                              ; preds = %154, %150, %146, %142, %138, %130
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @setErrMsg(%struct.TYPE_28__* %178, i8* %179)
  %181 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %181, i64* %2, align 8
  br label %213

182:                                              ; preds = %170, %166
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %15, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %15, align 8
  br label %72

186:                                              ; preds = %72
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %188 = call i64 @checkUpdateTagPrjFunctions(%struct.TYPE_28__* %187)
  %189 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %192, i64* %2, align 8
  br label %213

193:                                              ; preds = %186
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %195 = call i64 @doAddGroupbyColumnsOnDemand(%struct.TYPE_28__* %194)
  %196 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %199, i64* %2, align 8
  br label %213

200:                                              ; preds = %193
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %202 = call i64 @tscProjectionQueryOnMetric(%struct.TYPE_28__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @setErrMsg(%struct.TYPE_28__* %205, i8* %206)
  %208 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %208, i64* %2, align 8
  br label %213

209:                                              ; preds = %200
  br label %213

210:                                              ; preds = %48
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %212 = call i64 @checkUpdateTagPrjFunctions(%struct.TYPE_28__* %211)
  store i64 %212, i64* %2, align 8
  br label %213

213:                                              ; preds = %41, %46, %66, %127, %161, %177, %191, %198, %204, %210, %209
  %214 = load i64, i64* %2, align 8
  ret i64 %214
}

declare dso_local %struct.TYPE_29__* @tscGetMeterMetaInfo(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_28__*, i8*) #1

declare dso_local i32* @tsGetSchema(i32) #1

declare dso_local i64 @onlyTagPrjFunction(%struct.TYPE_28__*) #1

declare dso_local i64 @allTagPrjInGroupby(%struct.TYPE_28__*) #1

declare dso_local i32 @updateTagPrjFunction(%struct.TYPE_28__*) #1

declare dso_local i64 @doAddGroupbyColumnsOnDemand(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @tscSqlExprGet(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @IS_MULTIOUTPUT(i32) #1

declare dso_local i64 @checkUpdateTagPrjFunctions(%struct.TYPE_28__*) #1

declare dso_local i64 @tscProjectionQueryOnMetric(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
