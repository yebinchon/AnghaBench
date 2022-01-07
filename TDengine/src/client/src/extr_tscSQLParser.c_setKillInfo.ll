; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setKillInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setKillInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.SSqlInfo = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32* }

@TSDB_SQL_KILL_QUERY = common dso_local global i32 0, align 4
@TSDB_SQL_KILL_STREAM = common dso_local global i32 0, align 4
@TSDB_SQL_KILL_CONNECTION = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_KILL_MSG_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid ip address\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid port\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setKillInfo(%struct.TYPE_8__* %0, %struct.SSqlInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.SSqlInfo*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.SSqlInfo* %1, %struct.SSqlInfo** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %17 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 128, label %23
    i32 130, label %27
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @TSDB_SQL_KILL_QUERY, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @TSDB_SQL_KILL_STREAM, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @TSDB_SQL_KILL_CONNECTION, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %27, %23, %19
  %34 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %35 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TSDB_KILL_MSG_LEN, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %46, i32* %3, align 4
  br label %102

47:                                               ; preds = %33
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @strncpy(i32 %50, i32* %53, i64 %56)
  store i8 58, i8* %8, align 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @strtok(i32* %60, i8* %8)
  store i8* %61, i8** %9, align 8
  %62 = call i8* @strtok(i32* null, i8* %8)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @validateIpAddress(i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %47
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tListLen(i32 %72)
  %74 = call i32 @memset(i32 %69, i32 0, i32 %73)
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @setErrMsg(%struct.TYPE_9__* %75, i8* %76)
  %78 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %78, i32* %3, align 4
  br label %102

79:                                               ; preds = %47
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strtol(i8* %80, i32* null, i32 10)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = icmp sgt i32 %85, 65535
  br i1 %86, label %87, label %100

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @tListLen(i32 %93)
  %95 = call i32 @memset(i32 %90, i32 0, i32 %94)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @setErrMsg(%struct.TYPE_9__* %96, i8* %97)
  %99 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %87, %66, %45, %31
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @strncpy(i32, i32*, i64) #1

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i32 @validateIpAddress(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @tListLen(i32) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
