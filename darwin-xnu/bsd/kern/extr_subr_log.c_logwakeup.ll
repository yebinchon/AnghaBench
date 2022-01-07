; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_logwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_logwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.msgbuf* }
%struct.msgbuf = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@log_open = common dso_local global i32 0, align 4
@logsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LOG_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@LOG_RDWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logwakeup(%struct.msgbuf* %0) #0 {
  %2 = alloca %struct.msgbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.msgbuf* %0, %struct.msgbuf** %2, align 8
  %4 = call i64 (...) @oslog_is_safe()
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %62

8:                                                ; preds = %1
  %9 = call i32 (...) @LOG_LOCK()
  %10 = load i32, i32* @log_open, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @LOG_UNLOCK()
  br label %62

14:                                               ; preds = %8
  %15 = load %struct.msgbuf*, %struct.msgbuf** %2, align 8
  %16 = icmp eq %struct.msgbuf* null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load %struct.msgbuf*, %struct.msgbuf** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 3), align 8
  store %struct.msgbuf* %18, %struct.msgbuf** %2, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.msgbuf*, %struct.msgbuf** %2, align 8
  %21 = load %struct.msgbuf*, %struct.msgbuf** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 3), align 8
  %22 = icmp ne %struct.msgbuf* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %60

24:                                               ; preds = %19
  %25 = call i32 @selwakeup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 2))
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0), align 8
  %27 = load i32, i32* @LOG_ASYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 1), align 4
  store i32 %31, i32* %3, align 4
  %32 = call i32 (...) @LOG_UNLOCK()
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, i32* @SIGIO, align 4
  %39 = call i32 @gsignal(i32 %37, i32 %38)
  br label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SIGIO, align 4
  %43 = call i32 @proc_signal(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = call i32 (...) @LOG_LOCK()
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0), align 8
  %48 = load i32, i32* @LOG_RDWAIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.msgbuf*, %struct.msgbuf** %2, align 8
  %53 = ptrtoint %struct.msgbuf* %52 to i32
  %54 = call i32 @wakeup(i32 %53)
  %55 = load i32, i32* @LOG_RDWAIT, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0), align 8
  %58 = and i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0), align 8
  br label %59

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %59, %23
  %61 = call i32 (...) @LOG_UNLOCK()
  br label %62

62:                                               ; preds = %60, %12, %7
  ret void
}

declare dso_local i64 @oslog_is_safe(...) #1

declare dso_local i32 @LOG_LOCK(...) #1

declare dso_local i32 @LOG_UNLOCK(...) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @gsignal(i32, i32) #1

declare dso_local i32 @proc_signal(i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
