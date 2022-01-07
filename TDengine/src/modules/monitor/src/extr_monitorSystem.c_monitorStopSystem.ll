; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorStopSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorStopSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"dnode:%s is stopped\00", align 1
@tsInternalIp = common dso_local global i32 0, align 4
@MONITOR_STATE_STOPPED = common dso_local global i32 0, align 4
@taosLogFp = common dso_local global i32* null, align 8
@tsPrivateIp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitorStopSystem() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %27

4:                                                ; preds = %0
  %5 = load i32, i32* @tsInternalIp, align 4
  %6 = call i32 @monitorLPrint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @MONITOR_STATE_STOPPED, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  store i32* null, i32** @taosLogFp, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @taosTmrStopA(i32** %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @taosTmrStopA(i32** %25)
  br label %27

27:                                               ; preds = %3, %23, %18
  ret void
}

declare dso_local i32 @monitorLPrint(i8*, i32) #1

declare dso_local i32 @taosTmrStopA(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
