; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtDropDbByName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtDropDbByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@dbSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"db:%s is not there\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@tsMonitorDbName = common dso_local global i32 0, align 4
@TSDB_CODE_MONITOR_DB_FORBEIDDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtDropDbByName(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @dbSdb, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @sdbGetRow(i32 %7, i8* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @mWarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @tsMonitorDbName, align 4
  %22 = call i64 @mgmtCheckIsMonitorDB(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TSDB_CODE_MONITOR_DB_FORBEIDDEN, align 4
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = call i32 @mgmtDropDb(%struct.TYPE_3__* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %24, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @sdbGetRow(i32, i8*) #1

declare dso_local i32 @mWarn(i8*, i8*) #1

declare dso_local i64 @mgmtCheckIsMonitorDB(i32, i32) #1

declare dso_local i32 @mgmtDropDb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
