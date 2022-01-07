; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_insertStmtExecute.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_insertStmtExecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32** }

@TSDB_CODE_INVALID_VALUE = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @insertStmtExecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insertStmtExecute(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %18, i32* %2, align 4
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %22, 2
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 @tscMergeTableDataBlocks(%struct.TYPE_15__* %40, %struct.TYPE_17__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %106

50:                                               ; preds = %37
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @tscCopyDataBlockToPayload(%struct.TYPE_15__* %60, i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %50
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %78

71:                                               ; preds = %30
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = call %struct.TYPE_17__* @tscDestroyBlockArrayList(%struct.TYPE_17__* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %77, align 8
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %7, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = call i32 @tscDoQuery(%struct.TYPE_15__* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %78
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = call i32 @tscFreeSqlObjPartial(%struct.TYPE_15__* %100)
  br label %102

102:                                              ; preds = %99, %78
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %66, %48, %17
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @tscMergeTableDataBlocks(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @tscCopyDataBlockToPayload(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_17__* @tscDestroyBlockArrayList(%struct.TYPE_17__*) #1

declare dso_local i32 @tscDoQuery(%struct.TYPE_15__*) #1

declare dso_local i32 @tscFreeSqlObjPartial(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
