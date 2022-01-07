; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLExprIdValueCreate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLExprIdValueCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@TK_INTEGER = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8
@TK_BOOL = common dso_local global i64 0, align 8
@TK_NOW = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MICRO = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i8* null, align 8
@TK_TIMESTAMP = common dso_local global i8* null, align 8
@TK_VARIABLE = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TK_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @tSQLExprIdValueCreate(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call %struct.TYPE_8__* @calloc(i32 1, i32 40)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TK_INTEGER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TK_STRING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TK_FLOAT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @TK_BOOL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19, %15, %11, %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @toTSDBType(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @tVariantCreate(%struct.TYPE_10__* %29, %struct.TYPE_9__* %30)
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %104

36:                                               ; preds = %19
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @TK_NOW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %42 = call i32 @taosGetTimestamp(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i8*, i8** @TSDB_DATA_TYPE_BIGINT, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** @TK_TIMESTAMP, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %103

53:                                               ; preds = %36
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @TK_VARIABLE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = call i64 @getTimestampInUsFromStr(i32 %60, i32 %63, i32* %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @UNUSED(i64 %68)
  %70 = load i8*, i8** @TSDB_DATA_TYPE_BIGINT, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** @TK_TIMESTAMP, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %102

77:                                               ; preds = %53
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @TK_ID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @TK_ALL, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ true, %77 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = icmp ne %struct.TYPE_9__* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = bitcast %struct.TYPE_9__* %93 to i8*
  %96 = bitcast %struct.TYPE_9__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 4 %96, i64 12, i1 false)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load i64, i64* %4, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %57
  br label %103

103:                                              ; preds = %102, %40
  br label %104

104:                                              ; preds = %103, %23
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %105
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @toTSDBType(i32) #1

declare dso_local i32 @tVariantCreate(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @taosGetTimestamp(i32) #1

declare dso_local i64 @getTimestampInUsFromStr(i32, i32, i32*) #1

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
