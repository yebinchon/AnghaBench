; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_load_table_info.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_load_table_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64 }

@TSDB_CODE_DISCONNECTED = common dso_local global i32 0, align 4
@globalCode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%p tableNameList: %s pObj:%p\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%p tableNameList too long, length:%d, maximum allowed:%d\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%p failed to malloc sql string buffer\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%p load multi metermeta result:%d %s pObj:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taos_load_table_info(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 12582912, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = icmp ne %struct.TYPE_9__* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %23, i32* @globalCode, align 4
  %24 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %24, i32* %3, align 4
  br label %123

25:                                               ; preds = %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = call i32 (i8*, %struct.TYPE_11__*, ...) @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %41, i8* %42, %struct.TYPE_9__* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %47, 12582912
  br i1 %48, label %49, label %59

49:                                               ; preds = %25
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 (i8*, %struct.TYPE_11__*, ...) @tscError(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %50, i64 %51, i64 12582912)
  %53 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %3, align 4
  br label %123

59:                                               ; preds = %25
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i8* @calloc(i32 1, i64 %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = call i32 (i8*, %struct.TYPE_11__*, ...) @tscError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %3, align 4
  br label %123

74:                                               ; preds = %59
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strtolower(i8* %75, i8* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @tscParseTblNameList(%struct.TYPE_11__* %78, i8* %79, i64 %80)
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %74
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %3, align 4
  br label %123

100:                                              ; preds = %74
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = call i32 @tscDoQuery(%struct.TYPE_11__* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @taos_errstr(i32* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = call i32 (i8*, %struct.TYPE_11__*, ...) @tscTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %103, i32 %106, i32 %108, %struct.TYPE_9__* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = call i32 @tscFreeSqlObjPartial(%struct.TYPE_11__* %117)
  br label %119

119:                                              ; preds = %116, %100
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %96, %65, %49, %22
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @strtolower(i8*, i8*) #1

declare dso_local i64 @tscParseTblNameList(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @tscDoQuery(%struct.TYPE_11__*) #1

declare dso_local i32 @taos_errstr(i32*) #1

declare dso_local i32 @tscFreeSqlObjPartial(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
