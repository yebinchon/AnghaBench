; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitConnCb.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitConnCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"monitor:%p, connect to database failed, code:%d\00", align 1
@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@MONITOR_STATE_UN_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"monitor:%p, connect to database success, code:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitorInitConnCb(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @monitorError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @taos_close(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @MONITOR_STATE_UN_INIT, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = call i32 (...) @monitorStartSystemRetry()
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @monitorTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32 %29)
  %31 = call i32 (...) @monitorInitDatabase()
  br label %32

32:                                               ; preds = %25, %9
  ret void
}

declare dso_local i32 @monitorError(i8*, i32*, i32) #1

declare dso_local i32 @taos_close(i32*) #1

declare dso_local i32 @monitorStartSystemRetry(...) #1

declare dso_local i32 @monitorTrace(i8*, i32*, i32) #1

declare dso_local i32 @monitorInitDatabase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
