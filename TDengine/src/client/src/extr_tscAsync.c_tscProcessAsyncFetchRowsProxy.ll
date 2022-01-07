; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncFetchRowsProxy.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncFetchRowsProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i8*, i32*, i32)*, i32, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"%p retrieve data from next vnode:%d\00", align 1
@TSDB_SQL_SELECT = common dso_local global i64 0, align 8
@tscProcessAsyncRetrieveNextVnode = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @tscProcessAsyncFetchRowsProxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscProcessAsyncFetchRowsProxy(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %121

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %13
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = call i64 @tscProjectionQueryOnMetric(%struct.TYPE_17__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 %48(i8* %49, i32* %50, i32 0)
  br label %121

52:                                               ; preds = %37, %26
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = call %struct.TYPE_12__* @tscGetMeterMetaInfo(%struct.TYPE_17__* %73, i32 0)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %72, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %52
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @tscTrace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %81, i64 %84)
  %86 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = call i32 @tscResetForNextRetrieve(%struct.TYPE_15__* %90)
  %92 = load i32, i32* @tscProcessAsyncRetrieveNextVnode, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = call i32 @tscProcessSql(%struct.TYPE_16__* %95)
  br label %121

97:                                               ; preds = %52
  br label %113

98:                                               ; preds = %22, %13
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %104, %98
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %115, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 %116(i8* %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %80, %45, %12
  ret void
}

declare dso_local i64 @tscProjectionQueryOnMetric(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @tscGetMeterMetaInfo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_15__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
