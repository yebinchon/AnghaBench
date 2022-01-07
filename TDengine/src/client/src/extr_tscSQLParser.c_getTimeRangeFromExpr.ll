; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTimeRangeFromExpr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTimeRangeFromExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__*, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid timestamp\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"only one time stamp window allowed\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TK_OR = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIALIZER = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @getTimeRangeFromExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getTimeRangeFromExpr(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %17, i64* %3, align 8
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_16__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_OR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @setErrMsg(%struct.TYPE_17__* %29, i8* %30)
  %32 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %32, i64* %3, align 8
  br label %106

33:                                               ; preds = %22
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = call i64 @getTimeRangeFromExpr(%struct.TYPE_17__* %34, %struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = call i64 @getTimeRangeFromExpr(%struct.TYPE_17__* %39, %struct.TYPE_16__* %42)
  store i64 %43, i64* %3, align 8
  br label %106

44:                                               ; preds = %18
  %45 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.TYPE_20__* @COLUMN_INDEX_INITIALIZER to i8*), i64 4, i1 false)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = call i64 @getColumnIndexByNameEx(i32* %49, %struct.TYPE_17__* %50, %struct.TYPE_20__* %8)
  %52 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %55, i64* %3, align 8
  br label %106

56:                                               ; preds = %44
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_18__* @tscGetMeterMetaInfo(%struct.TYPE_17__* %57, i32 %59)
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %9, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %10, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %67 = load i64, i64* @INT64_MAX, align 8
  store i64 %67, i64* %13, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @getTimeRange(i64* %12, i64* %13, %struct.TYPE_16__* %68, i64 %71, i32 %74)
  %76 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %56
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @setErrMsg(%struct.TYPE_17__* %79, i8* %80)
  %82 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %82, i64* %3, align 8
  br label %106

83:                                               ; preds = %56
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %104, %78, %54, %33, %28, %16
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_16__*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_17__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @getColumnIndexByNameEx(i32*, %struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_18__* @tscGetMeterMetaInfo(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @getTimeRange(i64*, i64*, %struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
