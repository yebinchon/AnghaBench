; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtDropMeter.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtDropMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@tsMonitorDbName = common dso_local global i32 0, align 4
@TSDB_CODE_MONITOR_DB_FORBEIDDEN = common dso_local global i32 0, align 4
@meterSdb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtDropMeter(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @mgmtGetMeter(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %14
  %20 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @mgmtGetAcct(i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @tsMonitorDbName, align 4
  %31 = call i64 @mgmtCheckIsMonitorDB(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @TSDB_CODE_MONITOR_DB_FORBEIDDEN, align 4
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %21
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @mgmtIsNormalMeter(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @dropMeterImp(%struct.TYPE_7__* %40, i32* %41, i32* %42)
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @dropAllMetersOfMetric(%struct.TYPE_7__* %45, i32* %46, i32* %47)
  %49 = load i32, i32* @meterSdb, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @sdbDeleteRow(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %39, %33, %19, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32* @mgmtGetMeter(i8*) #1

declare dso_local i32* @mgmtGetAcct(i32) #1

declare dso_local i64 @mgmtCheckIsMonitorDB(i32, i32) #1

declare dso_local i64 @mgmtIsNormalMeter(i32*) #1

declare dso_local i32 @dropMeterImp(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @dropAllMetersOfMetric(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @sdbDeleteRow(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
