; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseIntervalClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseIntervalClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i32, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid query expression\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"interval cannot be less than 10 ms\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8
@tsMinIntervalTime = common dso_local global i32 0, align 4
@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIAL_VAL = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i32 0, align 4
@TSDB_FUNC_TS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i32 0, align 4
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@aAggs = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseIntervalClause(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = call %struct.TYPE_30__* @tscGetMeterMetaInfo(%struct.TYPE_27__* %18, i64 0)
  store %struct.TYPE_30__* %19, %struct.TYPE_30__** %8, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %26, i64* %3, align 8
  br label %180

27:                                               ; preds = %2
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %9, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = call i64 @getTimestampInUsFromStr(i32* %32, i32 %35, i32* %37)
  %39 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %42, i64* %3, align 8
  br label %180

43:                                               ; preds = %27
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 1000
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @tsMinIntervalTime, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %58
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @setErrMsg(%struct.TYPE_27__* %79, i8* %80)
  %82 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %82, i64* %3, align 8
  br label %180

83:                                               ; preds = %58
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %85 = call i64 @isTopBottomQuery(%struct.TYPE_27__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %88, i64* %3, align 8
  br label %180

89:                                               ; preds = %83
  store i64 0, i64* %10, align 8
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call %struct.TYPE_26__* @tscSqlExprGet(%struct.TYPE_27__* %98, i64 %99)
  store %struct.TYPE_26__* %100, %struct.TYPE_26__** %11, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %97
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @TSDB_COL_IS_TAG(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @setErrMsg(%struct.TYPE_27__* %114, i8* %115)
  %117 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %117, i64* %3, align 8
  br label %180

118:                                              ; preds = %106, %97
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %10, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %90

122:                                              ; preds = %90
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = call %struct.TYPE_26__* @tscSqlExprGet(%struct.TYPE_27__* %123, i64 0)
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  store i64 %127, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %128

128:                                              ; preds = %148, %122
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call %struct.TYPE_30__* @tscGetMeterMetaInfo(%struct.TYPE_27__* %135, i64 %136)
  store %struct.TYPE_30__* %137, %struct.TYPE_30__** %8, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i64, i64* %14, align 8
  store i64 %146, i64* %13, align 8
  br label %151

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %14, align 8
  br label %128

151:                                              ; preds = %145, %128
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %156, i64* %3, align 8
  br label %180

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %159 = load i64, i64* %13, align 8
  store i64 %159, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %161 = load i32, i32* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 4
  store i32 %161, i32* %160, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = load i64, i64* @TSDB_FUNC_TS, align 8
  %164 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %165 = load i32, i32* @TSDB_KEYSIZE, align 4
  %166 = load i32, i32* @TSDB_KEYSIZE, align 4
  %167 = call i32 @tscSqlExprInsert(%struct.TYPE_27__* %162, i32 0, i64 %163, %struct.TYPE_31__* %15, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 4
  %169 = call i32 @getColumnList(i32 1, i32 0, i32 %168)
  store i32 %169, i32* %16, align 4
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %171 = load i32, i32* @TSDB_KEYSIZE, align 4
  %172 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** @aAggs, align 8
  %174 = load i64, i64* @TSDB_FUNC_TS, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @insertResultField(%struct.TYPE_27__* %170, i32 0, i32* %16, i32 %171, i32 %172, i32 %177)
  store i64 %178, i64* %17, align 8
  %179 = load i64, i64* %17, align 8
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %157, %155, %113, %87, %78, %41, %25
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

declare dso_local %struct.TYPE_30__* @tscGetMeterMetaInfo(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @getTimestampInUsFromStr(i32*, i32, i32*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @isTopBottomQuery(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @tscSqlExprGet(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @TSDB_COL_IS_TAG(i32) #1

declare dso_local i32 @tscSqlExprInsert(%struct.TYPE_27__*, i32, i64, %struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i32 @getColumnList(i32, i32, i32) #1

declare dso_local i64 @insertResultField(%struct.TYPE_27__*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
