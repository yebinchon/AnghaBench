; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseWhereClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseWhereClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32, i64 }
%struct.TYPE_29__ = type { i32*, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid expression\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseWhereClause(%struct.TYPE_30__* %0, %struct.TYPE_29__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__**, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_33__, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__** %1, %struct.TYPE_29__*** %5, align 8
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %6, align 8
  %15 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %5, align 8
  %16 = icmp eq %struct.TYPE_29__** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %18, i64* %3, align 8
  br label %117

19:                                               ; preds = %2
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @INT64_MAX, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %25, i64* %7, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %26 = bitcast %struct.TYPE_33__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %5, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %5, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %19
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @setErrMsg(%struct.TYPE_31__* %39, i8* %40)
  %42 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %42, i64* %3, align 8
  br label %117

43:                                               ; preds = %32
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %45 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %5, align 8
  %46 = call i64 @doParseWhereClause(%struct.TYPE_30__* %44, %struct.TYPE_29__** %45, %struct.TYPE_33__* %9)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %3, align 8
  br label %117

52:                                               ; preds = %43
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %54 = call %struct.TYPE_32__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %53, i32 0)
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %10, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @QUERY_IS_JOIN_QUERY(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %52
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %62 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_32__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %60
  %65 = bitcast %struct.TYPE_24__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 16, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %9, i32 0, i32 0
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %72 = call i32 @getColumnIndexByNameEx(i32* %70, %struct.TYPE_31__* %71, %struct.TYPE_24__* %11)
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_32__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %73, i32 %75)
  store %struct.TYPE_32__* %76, %struct.TYPE_32__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %78, %83
  store i64 %84, i64* %12, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @addRequiredTagColumn(%struct.TYPE_31__* %85, i64 %86, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %9, i32 0, i32 0
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %96 = call i32 @getColumnIndexByNameEx(i32* %94, %struct.TYPE_31__* %95, %struct.TYPE_24__* %11)
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.TYPE_32__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %97, i32 %99)
  store %struct.TYPE_32__* %100, %struct.TYPE_32__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %102, %107
  store i64 %108, i64* %12, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @addRequiredTagColumn(%struct.TYPE_31__* %109, i64 %110, i32 %112)
  br label %114

114:                                              ; preds = %64, %60, %52
  %115 = call i32 @cleanQueryExpr(%struct.TYPE_33__* %9)
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %114, %50, %38, %17
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_31__*, i8*) #2

declare dso_local i64 @doParseWhereClause(%struct.TYPE_30__*, %struct.TYPE_29__**, %struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_32__* @tscGetMeterMetaInfo(%struct.TYPE_31__*, i32) #2

declare dso_local i64 @QUERY_IS_JOIN_QUERY(i32) #2

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_32__*) #2

declare dso_local i32 @getColumnIndexByNameEx(i32*, %struct.TYPE_31__*, %struct.TYPE_24__*) #2

declare dso_local i32 @addRequiredTagColumn(%struct.TYPE_31__*, i64, i32) #2

declare dso_local i32 @cleanQueryExpr(%struct.TYPE_33__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
