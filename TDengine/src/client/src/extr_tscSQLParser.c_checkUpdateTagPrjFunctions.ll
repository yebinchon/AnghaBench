; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_checkUpdateTagPrjFunctions.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_checkUpdateTagPrjFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [67 x i8] c"only one selectivity function allowed in presence of tags function\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"functions not allowed\00", align 1
@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_FUNC_TS = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_11__* null, align 8
@TSDB_FUNCSTATE_SELECTIVITY = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_ROW = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @checkUpdateTagPrjFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @checkUpdateTagPrjFunctions(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %47, %1
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.TYPE_14__* @tscSqlExprGet(%struct.TYPE_15__* %24, i64 %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %23
  store i32 1, i32* %6, align 4
  br label %50

46:                                               ; preds = %38, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %16

50:                                               ; preds = %45, %16
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %160

53:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %95, %53
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %54
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call %struct.TYPE_14__* @tscSqlExprGet(%struct.TYPE_15__* %62, i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %61
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @TSDB_FUNC_TS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70, %61
  br label %95

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aAggs, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TSDB_FUNCSTATE_SELECTIVITY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %94

91:                                               ; preds = %79
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %54

98:                                               ; preds = %54
  %99 = load i64, i64* %9, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @setErrMsg(%struct.TYPE_15__* %102, i8* %103)
  %105 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %105, i64* %2, align 8
  br label %162

106:                                              ; preds = %98
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = call i32 @doUpdateSqlFunctionForTagPrj(%struct.TYPE_15__* %110)
  br label %159

112:                                              ; preds = %106
  %113 = load i64, i64* %8, align 8
  %114 = icmp sgt i64 %113, 1
  br i1 %114, label %115, label %158

115:                                              ; preds = %112
  store i64 0, i64* %14, align 8
  br label %116

116:                                              ; preds = %152, %115
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %117, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %116
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = load i64, i64* %14, align 8
  %126 = call %struct.TYPE_14__* @tscSqlExprGet(%struct.TYPE_15__* %124, i64 %125)
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %152

133:                                              ; preds = %123
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aAggs, align 8
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TSDB_FUNCSTATE_SELECTIVITY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %133
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* @TSDB_FUNC_LAST_ROW, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @setErrMsg(%struct.TYPE_15__* %147, i8* %148)
  %150 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %150, i64* %2, align 8
  br label %162

151:                                              ; preds = %142, %133
  br label %152

152:                                              ; preds = %151, %132
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %14, align 8
  br label %116

155:                                              ; preds = %116
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = call i32 @doUpdateSqlFunctionForTagPrj(%struct.TYPE_15__* %156)
  br label %158

158:                                              ; preds = %155, %112
  br label %159

159:                                              ; preds = %158, %109
  br label %160

160:                                              ; preds = %159, %50
  %161 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %161, i64* %2, align 8
  br label %162

162:                                              ; preds = %160, %146, %101
  %163 = load i64, i64* %2, align 8
  ret i64 %163
}

declare dso_local %struct.TYPE_14__* @tscSqlExprGet(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @doUpdateSqlFunctionForTagPrj(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
