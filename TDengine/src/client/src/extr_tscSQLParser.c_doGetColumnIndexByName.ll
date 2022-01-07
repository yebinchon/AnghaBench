; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doGetColumnIndexByName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doGetColumnIndexByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"ambiguous column name\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid column name\00", align 1
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@DEFAULT_PRIMARY_TIMESTAMP_COL_NAME = common dso_local global i32 0, align 4
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIAL_VAL = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doGetColumnIndexByName(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = call i64 @isTablenameToken(%struct.TYPE_13__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DEFAULT_PRIMARY_TIMESTAMP_COL_NAME, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strncasecmp(i32 %23, i32 %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %106

34:                                               ; preds = %20
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = call i64 @doGetColumnIndex(%struct.TYPE_12__* %48, i64 %49, %struct.TYPE_13__* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @setErrMsg(%struct.TYPE_12__* %62, i8* %63)
  %65 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %65, i32* %4, align 4
  br label %120

66:                                               ; preds = %55
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %41

78:                                               ; preds = %41
  br label %94

79:                                               ; preds = %34
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = call i64 @doGetColumnIndex(%struct.TYPE_12__* %80, i64 %83, %struct.TYPE_13__* %84)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %79
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @COLUMN_INDEX_INITIAL_VAL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @setErrMsg(%struct.TYPE_12__* %101, i8* %102)
  %104 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %104, i32* %4, align 4
  br label %120

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %30
  br label %107

107:                                              ; preds = %106, %16
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = bitcast %struct.TYPE_14__* %108 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @COLUMN_INDEX_VALIDE(i64 %111, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %117, i32* %4, align 4
  br label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %116, %100, %61
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @isTablenameToken(%struct.TYPE_13__*) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

declare dso_local i64 @doGetColumnIndex(%struct.TYPE_12__*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @COLUMN_INDEX_VALIDE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
