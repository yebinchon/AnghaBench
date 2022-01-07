; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_enableWatchdog.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_enableWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@watchdogSignalHandler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enableWatchdog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = load i32, i32* @SA_ONSTACK, align 4
  %11 = load i32, i32* @SA_SIGINFO, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @watchdogSignalHandler, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %4, i32* null)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %20 = sdiv i32 1000, %19
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @watchdogScheduleSignal(i32 %28)
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @watchdogScheduleSignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
