; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doUpdateSqlFunctionForTagPrj.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doUpdateSqlFunctionForTagPrj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i64, i32, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG_DUMMY = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_FUNC_TS_DUMMY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @doUpdateSqlFunctionForTagPrj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doUpdateSqlFunctionForTagPrj(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %68, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %13
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.TYPE_17__* @tscSqlExprGet(%struct.TYPE_18__* %21, i64 %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %5, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29, %20
  %36 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %3, align 8
  br label %67

44:                                               ; preds = %29
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %57, %50, %44
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %4, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %13

71:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = call %struct.TYPE_20__* @tscGetMeterMetaInfo(%struct.TYPE_18__* %72, i32 0)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %8, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_19__* @tsGetSchema(i32 %76)
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %78

78:                                               ; preds = %131, %71
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %79, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %78
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call %struct.TYPE_17__* @tscSqlExprGet(%struct.TYPE_18__* %86, i64 %87)
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %11, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %85
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i64 %105
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %12, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @getResultDataInfo(i32 %109, i32 %112, i64 %115, i32 %121, i32* %123, i64* %125, i32* %127, i64 %128, i32 1)
  br label %130

130:                                              ; preds = %100, %94, %85
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %10, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %78

134:                                              ; preds = %78
  ret void
}

declare dso_local %struct.TYPE_17__* @tscSqlExprGet(%struct.TYPE_18__*, i64) #1

declare dso_local %struct.TYPE_20__* @tscGetMeterMetaInfo(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @tsGetSchema(i32) #1

declare dso_local i32 @getResultDataInfo(i32, i32, i64, i32, i32*, i64*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
