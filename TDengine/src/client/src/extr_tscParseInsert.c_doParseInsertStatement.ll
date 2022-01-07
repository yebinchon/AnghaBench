; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_doParseInsertStatement.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_doParseInsertStatement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }

@TSDB_DEFAULT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i8*, i8**, i32*, i64*)* @doParseInsertStatement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doParseInsertStatement(%struct.TYPE_16__* %0, i8* %1, i8** %2, i32* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %12, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %24 = call %struct.TYPE_19__* @tscGetMeterMetaInfo(%struct.TYPE_17__* %23, i32 0)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %13, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TSDB_DEFAULT_PAYLOAD_SIZE, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_15__* @tscGetDataBlockFromList(i8* %28, i32 %31, i32 %34, i32 %35, i32 4, i32 %38, i32 %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %15, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @tscAllocateMemIfNeed(%struct.TYPE_15__* %43, i32 %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp eq i64 0, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %5
  %51 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %51, i64* %6, align 8
  br label %121

52:                                               ; preds = %5
  %53 = load i8**, i8*** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @tsParseValues(i8** %53, %struct.TYPE_15__* %54, %struct.TYPE_20__* %55, i64 %56, i32* %57, i32 %60)
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %17, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %65, i64* %6, align 8
  br label %121

66:                                               ; preds = %52
  store i64 0, i64* %18, align 8
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i64, i64* %18, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %77
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %19, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %83, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %18, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %18, align 8
  br label %67

100:                                              ; preds = %67
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %20, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @tsSetBlockInfo(i32* %105, %struct.TYPE_20__* %106, i64 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %116
  store i64 %119, i64* %117, align 8
  %120 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %100, %64, %50
  %122 = load i64, i64* %6, align 8
  ret i64 %122
}

declare dso_local %struct.TYPE_19__* @tscGetMeterMetaInfo(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_15__* @tscGetDataBlockFromList(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @tscAllocateMemIfNeed(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @tsParseValues(i8**, %struct.TYPE_15__*, %struct.TYPE_20__*, i64, i32*, i32) #1

declare dso_local i32 @tsSetBlockInfo(i32*, %struct.TYPE_20__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
