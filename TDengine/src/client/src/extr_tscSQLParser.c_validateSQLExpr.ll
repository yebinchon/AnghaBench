; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateSQLExpr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateSQLExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@TK_ID = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8
@TK_MIN = common dso_local global i64 0, align 8
@TK_LAST_ROW = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i64, %struct.TYPE_17__*)* @validateSQLExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validateSQLExpr(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TK_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %88, %18
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strncasecmp(i32 %29, i32 %34, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %25
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strlen(i32 %50)
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %53
  %70 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %70, i64* %5, align 8
  br label %137

71:                                               ; preds = %61
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = icmp ne %struct.TYPE_17__* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i64 %75, i64* %85, align 8
  br label %86

86:                                               ; preds = %74, %71
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %41, %25
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %21

91:                                               ; preds = %21
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %95, i64* %5, align 8
  br label %137

96:                                               ; preds = %91
  br label %135

97:                                               ; preds = %4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TK_FLOAT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @isnan(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @isinf(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110, %103
  %118 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %118, i64* %5, align 8
  br label %137

119:                                              ; preds = %110, %97
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TK_MIN, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TK_LAST_ROW, align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %132, i64* %5, align 8
  br label %137

133:                                              ; preds = %125, %119
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %96
  %136 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %135, %131, %117, %94, %69
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local i64 @strncasecmp(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @isnan(i32) #1

declare dso_local i64 @isinf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
