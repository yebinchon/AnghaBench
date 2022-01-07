; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateOneColumn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateOneColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"too many columns\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicated column names\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"column length too long\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid data types\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid column name\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid column length\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BOOL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_MAX_BYTES_PER_ROW = common dso_local global i64 0, align 8
@TSDB_COL_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validateOneColumn(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_11__* @tscGetMeterMetaInfo(i32* %18, i32 0)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %12, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %13, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TSDB_MAX_COLUMNS, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* @TSDB_MAX_COLUMNS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28, %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @setErrMsg(i32* %39, i8* %40)
  store i32 0, i32* %3, align 4
  br label %142

42:                                               ; preds = %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TSDB_DATA_TYPE_BOOL, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @setErrMsg(i32* %55, i8* %56)
  store i32 0, i32* %3, align 4
  br label %142

58:                                               ; preds = %48
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @validateColumnName(i32 %61)
  %63 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @setErrMsg(i32* %66, i8* %67)
  store i32 0, i32* %3, align 4
  br label %142

69:                                               ; preds = %58
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = call %struct.TYPE_10__* @tsGetSchema(%struct.TYPE_12__* %70)
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %72

72:                                               ; preds = %86, %69
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %15, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %16, align 8
  br label %72

89:                                               ; preds = %72
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @setErrMsg(i32* %95, i8* %96)
  store i32 0, i32* %3, align 4
  br label %142

98:                                               ; preds = %89
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %99, %102
  %104 = load i64, i64* @TSDB_MAX_BYTES_PER_ROW, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32*, i32** %4, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @setErrMsg(i32* %107, i8* %108)
  store i32 0, i32* %3, align 4
  br label %142

110:                                              ; preds = %98
  store i64 0, i64* %17, align 8
  br label %111

111:                                              ; preds = %138, %110
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = icmp ult i64 %112, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %111
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %131 = call i64 @strncasecmp(i32 %124, i32 %129, i32 %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i32*, i32** %4, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @setErrMsg(i32* %134, i8* %135)
  store i32 0, i32* %3, align 4
  br label %142

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %17, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %17, align 8
  br label %111

141:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %133, %106, %94, %65, %54, %38
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_11__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local i64 @validateColumnName(i32) #1

declare dso_local %struct.TYPE_10__* @tsGetSchema(%struct.TYPE_12__*) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
