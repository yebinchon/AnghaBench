; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitConn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitConn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"starting to initialize monitor service ..\00", align 1
@MONITOR_STATE_INITIALIZING = common dso_local global i32 0, align 4
@monitor = common dso_local global %struct.TYPE_3__* null, align 8
@tsInternalIp = common dso_local global i32 0, align 4
@TSDB_IPv4ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@tsInternalPass = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@monitorInitConnCb = common dso_local global i32 0, align 4
@tsPrivateIp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitorInitConn(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @monitorPrint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @MONITOR_STATE_INITIALIZING, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* @tsInternalIp, align 4
  %21 = call i32 @strcpy(i64* %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %43, %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TSDB_IPv4ADDR_LEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 46
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 95, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %22

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @tsInternalPass, align 4
  %54 = load i32, i32* @monitorInitConnCb, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @monitor, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @taos_connect_a(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %54, %struct.TYPE_3__* %55, i32** %57)
  br label %61

59:                                               ; preds = %47
  %60 = call i32 (...) @monitorInitDatabase()
  br label %61

61:                                               ; preds = %59, %52
  ret void
}

declare dso_local i32 @monitorPrint(i8*) #1

declare dso_local i32 @strcpy(i64*, i32) #1

declare dso_local i32 @taos_connect_a(i32*, i8*, i32, i8*, i32, i32, %struct.TYPE_3__*, i32**) #1

declare dso_local i32 @monitorInitDatabase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
