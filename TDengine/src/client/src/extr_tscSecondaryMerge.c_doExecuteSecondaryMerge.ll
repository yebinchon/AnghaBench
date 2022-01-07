; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doExecuteSecondaryMerge.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doExecuteSecondaryMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i32* }

@TSDB_FUNC_TAG_DUMMY = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@TSDB_FUNC_TS_DUMMY = common dso_local global i64 0, align 8
@SECONDARY_STAGE_MERGE = common dso_local global i32 0, align 4
@aAggs = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i32)* @doExecuteSecondaryMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doExecuteSecondaryMerge(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %87, %3
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %12
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__* %20, i64 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 %26
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @tVariantAssign(i32* %31, i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %19
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48, %42, %19
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = call i32 @tVariantDestroy(i32* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tVariantCreateFromBinary(i32* %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %54, %48
  %71 = load i32, i32* @SECONDARY_STAGE_MERGE, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @aAggs, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = call i32 %83(%struct.TYPE_17__* %84)
  br label %86

86:                                               ; preds = %76, %70
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %12

90:                                               ; preds = %12
  store i64 0, i64* %10, align 8
  br label %91

91:                                               ; preds = %124, %90
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %91
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__* %99, i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %98
  br label %124

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** @aAggs, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 %121
  %123 = call i32 %117(%struct.TYPE_17__* %122)
  br label %124

124:                                              ; preds = %112, %111
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %91

127:                                              ; preds = %91
  ret void
}

declare dso_local %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @tVariantAssign(i32*, i32*) #1

declare dso_local i32 @tVariantDestroy(i32*) #1

declare dso_local i32 @tVariantCreateFromBinary(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
