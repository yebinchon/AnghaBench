; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_aging_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_aging_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { void (%struct.bridge_softc.0*)*, %struct.TYPE_4__, %struct.bridge_softc* }
%struct.bridge_softc.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IFF_RUNNING = common dso_local global i32 0, align 4
@SCF_DETACHING = common dso_local global i32 0, align 4
@bridge_rtable_prune_period = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_softc*)* @bridge_aging_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_aging_timer(%struct.bridge_softc* %0) #0 {
  %2 = alloca %struct.bridge_softc*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %2, align 8
  %3 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %4 = call i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc* %3)
  %5 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %6 = call i32 @bridge_rtage(%struct.bridge_softc* %5)
  %7 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCF_DETACHING, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %24 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store %struct.bridge_softc* %23, %struct.bridge_softc** %26, align 8
  %27 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store void (%struct.bridge_softc.0*)* bitcast (void (%struct.bridge_softc*)* @bridge_aging_timer to void (%struct.bridge_softc.0*)*), void (%struct.bridge_softc.0*)** %29, align 8
  %30 = load i32, i32* @bridge_rtable_prune_period, align 4
  %31 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %35, i32 0, i32 1
  %37 = call i32 @bridge_schedule_delayed_call(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %22, %15, %1
  ret void
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_rtage(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_schedule_delayed_call(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
