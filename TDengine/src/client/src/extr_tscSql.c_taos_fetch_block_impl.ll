; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_fetch_block_impl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_fetch_block_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32*, i64* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@TSDB_SQL_LOCAL = common dso_local global i64 0, align 8
@TSDB_SQL_MGMT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taos_fetch_block_impl(i32* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64** %1, i64*** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = icmp ne %struct.TYPE_15__* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %2
  %31 = load i64**, i64*** %5, align 8
  store i64* null, i64** %31, align 8
  store i32 0, i32* %3, align 4
  br label %146

32:                                               ; preds = %24
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = call i32 @tscResetForNextRetrieve(%struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TSDB_SQL_LOCAL, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TSDB_SQL_MGMT, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @TSDB_SQL_FETCH, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %32
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = call i32 @tscProcessSql(%struct.TYPE_15__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64**, i64*** %5, align 8
  store i64* null, i64** %62, align 8
  store i32 0, i32* %3, align 4
  br label %146

63:                                               ; preds = %54
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %63
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %120, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %78
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @TSC_GET_RESPTR_BASE(%struct.TYPE_14__* %86, %struct.TYPE_16__* %87, i32 %88, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 1, %104
  %106 = mul nsw i32 %100, %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = mul nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %93, %112
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  br label %120

120:                                              ; preds = %85
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %78

123:                                              ; preds = %78
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = load i64**, i64*** %5, align 8
  store i64* %126, i64** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @TSQL_SO_DESC, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  br label %144

139:                                              ; preds = %123
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 0, %142
  br label %144

144:                                              ; preds = %139, %135
  %145 = phi i32 [ %138, %135 ], [ %143, %139 ]
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %61, %30
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_14__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_15__*) #1

declare dso_local i64 @TSC_GET_RESPTR_BASE(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
