; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddProjectCol.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddProjectCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@TSDB_QUERY_TYPE_STABLE_QUERY = common dso_local global i32 0, align 4
@TSDB_QUERY_TYPE_PROJECTION_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @doAddProjectCol(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_13__* %15, i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_14__* @tsGetColumnSchema(%struct.TYPE_15__* %20, i64 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  br label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @addRequiredTagColumn(%struct.TYPE_13__* %39, i64 %42, i64 %43)
  %45 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_QUERY, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @TSDB_QUERY_TYPE_PROJECTION_QUERY, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @tscSqlExprInsert(%struct.TYPE_13__* %57, i64 %58, i64 %59, %struct.TYPE_16__* %13, i32 %62, i32 %65, i32 %68)
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %14, align 8
  ret i32* %70
}

declare dso_local %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_13__*, i64) #1

declare dso_local %struct.TYPE_14__* @tsGetColumnSchema(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @addRequiredTagColumn(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32* @tscSqlExprInsert(%struct.TYPE_13__*, i64, i64, %struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
