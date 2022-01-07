; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessActivityTimer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessActivityTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@tscProcessHeartBeatRsp = common dso_local global i32 0, align 4
@TSDB_SQL_HB = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_DEFAULT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%p pHb is allocated, pObj:%p\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%p free HB object and release connection, pConn:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscProcessActivityTimer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %103

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %103

19:                                               ; preds = %12
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %103

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = icmp eq %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = call i64 @calloc(i32 1, i32 56)
  %33 = inttoptr i64 %32 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %6, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = icmp eq %struct.TYPE_12__* null, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %103

37:                                               ; preds = %31
  %38 = load i32, i32* @tscProcessHeartBeatRsp, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @TSDB_SQL_HB, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  %48 = load i32, i32* @TSDB_DEFAULT_PAYLOAD_SIZE, align 4
  %49 = call i64 @tscAllocPayload(%struct.TYPE_13__* %47, i32 %48)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = call i32 @tfree(%struct.TYPE_12__* %52)
  br label %103

54:                                               ; preds = %37
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 5
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = call i32 @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %69, %struct.TYPE_12__* %70)
  br label %72

72:                                               ; preds = %54, %26
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = call i64 @tscShouldFreeHeatBeat(%struct.TYPE_12__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i32 @tscTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %79, %struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i32 @taosCloseRpcConn(%struct.TYPE_12__* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = call i32 @tscFreeSqlObj(%struct.TYPE_12__* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = call i32 @tscCloseTscObj(%struct.TYPE_12__* %96)
  br label %103

98:                                               ; preds = %72
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = call i32 @tscProcessSql(%struct.TYPE_12__* %101)
  br label %103

103:                                              ; preds = %98, %78, %51, %36, %25, %18, %11
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @tscAllocPayload(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_12__*) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @tscShouldFreeHeatBeat(%struct.TYPE_12__*) #1

declare dso_local i32 @taosCloseRpcConn(%struct.TYPE_12__*) #1

declare dso_local i32 @tscFreeSqlObj(%struct.TYPE_12__*) #1

declare dso_local i32 @tscCloseTscObj(%struct.TYPE_12__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
