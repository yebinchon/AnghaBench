; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addProjectionExprAndResultField.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addProjectionExprAndResultField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i64, i64, i32 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid column name\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"tag for table query is not allowed\00", align 1
@TK_ALL = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIALIZER = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIAL_VAL = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@TSDB_METER_NAME_LEN = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@TSQL_TBNAME_L = common dso_local global i32 0, align 4
@TSDB_QUERY_TYPE_STABLE_QUERY = common dso_local global i32 0, align 4
@TSDB_FUNC_TAGPRJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @addProjectionExprAndResultField(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_35__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_35__, align 8
  %13 = alloca %struct.TYPE_35__, align 8
  %14 = alloca %struct.TYPE_32__, align 4
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_ALL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %2
  %29 = bitcast %struct.TYPE_35__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_35__* @COLUMN_INDEX_INITIALIZER to i8*), i64 32, i1 false)
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %35 = call i64 @getTableIndexByName(i32* %33, %struct.TYPE_31__* %34, %struct.TYPE_35__* %9)
  %36 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %39, i64* %3, align 8
  br label %154

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %9, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @doAddProjectionExprAndResultFields(%struct.TYPE_31__* %55, %struct.TYPE_35__* %9, i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %46

64:                                               ; preds = %46
  br label %69

65:                                               ; preds = %40
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @doAddProjectionExprAndResultFields(%struct.TYPE_31__* %66, %struct.TYPE_35__* %9, i64 %67)
  br label %69

69:                                               ; preds = %65, %64
  br label %152

70:                                               ; preds = %2
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TK_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %70
  %79 = bitcast %struct.TYPE_35__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 bitcast (%struct.TYPE_35__* @COLUMN_INDEX_INITIALIZER to i8*), i64 32, i1 false)
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %85 = call i64 @getColumnIndexByNameEx(i32* %83, %struct.TYPE_31__* %84, %struct.TYPE_35__* %12)
  %86 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @setErrMsg(%struct.TYPE_31__* %89, i8* %90)
  %92 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %92, i64* %3, align 8
  br label %154

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 1
  %101 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  store i64 %101, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 3
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %106 = load i32, i32* @TSDB_METER_NAME_LEN, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %108 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TSQL_TBNAME_L, align 4
  %112 = call i32 @strcpy(i32 %110, i32 %111)
  %113 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_QUERY, align 4
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* @TSDB_FUNC_TAGPRJ, align 4
  %119 = call i32 @tscAddSpecialColumnForSelect(%struct.TYPE_31__* %116, i64 %117, i32 %118, %struct.TYPE_35__* %13, %struct.TYPE_32__* %14, i32 1)
  br label %148

120:                                              ; preds = %93
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %121, i64 %123)
  store %struct.TYPE_33__* %124, %struct.TYPE_33__** %15, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %126, align 8
  store %struct.TYPE_34__* %127, %struct.TYPE_34__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sge i64 %129, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %120
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %136 = call i64 @UTIL_METER_IS_NOMRAL_METER(%struct.TYPE_33__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @setErrMsg(%struct.TYPE_31__* %139, i8* %140)
  %142 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %142, i64* %3, align 8
  br label %154

143:                                              ; preds = %134, %120
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %147 = call i32 @addProjectQueryCol(%struct.TYPE_31__* %144, i64 %145, %struct.TYPE_35__* %12, %struct.TYPE_30__* %146)
  br label %148

148:                                              ; preds = %143, %98
  br label %151

149:                                              ; preds = %70
  %150 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %150, i64* %3, align 8
  br label %154

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %69
  %153 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %153, i64* %3, align 8
  br label %154

154:                                              ; preds = %152, %149, %138, %88, %38
  %155 = load i64, i64* %3, align 8
  ret i64 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getTableIndexByName(i32*, %struct.TYPE_31__*, %struct.TYPE_35__*) #2

declare dso_local i64 @doAddProjectionExprAndResultFields(%struct.TYPE_31__*, %struct.TYPE_35__*, i64) #2

declare dso_local i64 @getColumnIndexByNameEx(i32*, %struct.TYPE_31__*, %struct.TYPE_35__*) #2

declare dso_local i32 @setErrMsg(%struct.TYPE_31__*, i8*) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i32 @tscAddSpecialColumnForSelect(%struct.TYPE_31__*, i64, i32, %struct.TYPE_35__*, %struct.TYPE_32__*, i32) #2

declare dso_local %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__*, i64) #2

declare dso_local i64 @UTIL_METER_IS_NOMRAL_METER(%struct.TYPE_33__*) #2

declare dso_local i32 @addProjectQueryCol(%struct.TYPE_31__*, i64, %struct.TYPE_35__*, %struct.TYPE_30__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
