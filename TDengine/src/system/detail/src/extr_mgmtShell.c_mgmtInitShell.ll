; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtInitShell.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtInitShell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tsMaxShellConns = common dso_local global i32 0, align 4
@connList = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"failed to malloc for connList to shell\00", align 1
@tsNumOfCores = common dso_local global double 0.000000e+00, align 8
@tsNumOfThreadsPerCore = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@tsMgmtShellPort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"MND-shell\00", align 1
@mgmtProcessMsgFromShell = common dso_local global i32 0, align 4
@TAOS_ID_FREE = common dso_local global i32 0, align 4
@tsShellActivityTimer = common dso_local global i32 0, align 4
@mgmtQhandle = common dso_local global i32 0, align 4
@mgmtRetriveUserAuthInfo = common dso_local global i32 0, align 4
@pShellConn = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to init tcp connection to shell\00", align 1
@tsInternalIp = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtInitShell() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @mgmtInitProcessShellMsg()
  %6 = load i32, i32* @tsMaxShellConns, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 64, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** @connList, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @connList, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @mError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %60

17:                                               ; preds = %0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @connList, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 %19)
  %21 = load double, double* @tsNumOfCores, align 8
  %22 = load double, double* @tsNumOfThreadsPerCore, align 8
  %23 = fmul double %21, %22
  %24 = fdiv double %23, 4.000000e+00
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = call i32 @memset(%struct.TYPE_6__* %2, i32 0, i32 64)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @tsMgmtShellPort, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 12
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @mgmtProcessMsgFromShell, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 11
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i32 20, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* @tsMaxShellConns, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @TAOS_ID_FREE, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 10
  store i32 %43, i32* %44, align 8
  %45 = call i32 (...) @TAOS_CONN_SOCKET_TYPE_S()
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 9
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @tsShellActivityTimer, align 4
  %48 = mul nsw i32 %47, 2000
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @mgmtQhandle, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @mgmtRetriveUserAuthInfo, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 7
  store i32 %52, i32* %53, align 4
  %54 = call i32* @taosOpenRpc(%struct.TYPE_6__* %2)
  store i32* %54, i32** @pShellConn, align 8
  %55 = load i32*, i32** @pShellConn, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = call i32 @mError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %60

59:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %59, %57, %15
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @mgmtInitProcessShellMsg(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mError(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @TAOS_CONN_SOCKET_TYPE_S(...) #1

declare dso_local i32* @taosOpenRpc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
