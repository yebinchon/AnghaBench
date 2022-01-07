; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_validate_sql.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_validate_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@TSDB_CODE_DISCONNECTED = common dso_local global i32 0, align 4
@globalCode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%p Valid SQL: %s pObj:%p\00", align 1
@TSDB_MAX_SQL_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%p sql too long\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%p failed to malloc sql string buffer\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%p Valid SQL result:%d, %s pObj:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taos_validate_sql(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp ne %struct.TYPE_8__* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %22, i32* @globalCode, align 4
  %23 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %23, i32* %3, align 4
  br label %113

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 (i8*, %struct.TYPE_10__*, ...) @tscTrace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %34, i8* %35, %struct.TYPE_8__* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @TSDB_MAX_SQL_LEN, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %24
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = call i32 @tscError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %44)
  %46 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %113

52:                                               ; preds = %24
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32* @realloc(i32* %55, i64 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %52
  %66 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = call i32 @tscError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @taos_errstr(i32* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = call i32 (i8*, %struct.TYPE_10__*, ...) @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %71, i32 %74, i32 %76, %struct.TYPE_8__* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  br label %113

82:                                               ; preds = %52
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strtolower(i32* %85, i8* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @tsParseSql(%struct.TYPE_10__* %88, i32 %91, i32 %94, i32 0)
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @taos_errstr(i32* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = call i32 (i8*, %struct.TYPE_10__*, ...) @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %102, i32 %105, i32 %107, %struct.TYPE_8__* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = call i32 @taos_free_result(%struct.TYPE_10__* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %82, %65, %43, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_10__*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @taos_errstr(i32*) #1

declare dso_local i32 @strtolower(i32*, i8*) #1

declare dso_local i64 @tsParseSql(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @taos_free_result(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
