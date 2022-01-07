; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscSqlExprInsert.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscSqlExprInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64, i8*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }

@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@TSDB_COL_TAG = common dso_local global i8* null, align 8
@TSDB_COL_NORMAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @tscSqlExprInsert(%struct.TYPE_21__* %0, i64 %1, i64 %2, %struct.TYPE_24__* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_23__* @tscGetMeterMetaInfo(%struct.TYPE_21__* %20, i32 %23)
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %15, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %16, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @_exprCheckSpace(%struct.TYPE_19__* %27, i64 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @_exprEvic(%struct.TYPE_19__* %33, i64 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 %39
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %17, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %7
  %55 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  br label %73

59:                                               ; preds = %7
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.TYPE_22__* @tsGetColumnSchema(%struct.TYPE_17__* %62, i64 %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %19, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %59, %54
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i8*, i8** @TSDB_COL_TAG, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  br label %106

89:                                               ; preds = %73
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i8*, i8** @TSDB_COL_NORMAL, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %105

100:                                              ; preds = %89
  %101 = load i8*, i8** @TSDB_COL_TAG, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  ret %struct.TYPE_20__* %133
}

declare dso_local %struct.TYPE_23__* @tscGetMeterMetaInfo(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @_exprCheckSpace(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @_exprEvic(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_22__* @tsGetColumnSchema(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
