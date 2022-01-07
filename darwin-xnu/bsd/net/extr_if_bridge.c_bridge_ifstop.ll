; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ifstop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ifstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.bridge_softc* }
%struct.bridge_softc = type { i32, i32 }

@IFF_RUNNING = common dso_local global i32 0, align 4
@IFBF_FLUSHDYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @bridge_ifstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_ifstop(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bridge_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.bridge_softc*, %struct.bridge_softc** %7, align 8
  store %struct.bridge_softc* %8, %struct.bridge_softc** %5, align 8
  %9 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %10 = call i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = call i32 @ifnet_flags(%struct.ifnet* %11)
  %13 = load i32, i32* @IFF_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %19 = call i64 @bridge_in_bsd_mode(%struct.bridge_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %23 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %22, i32 0, i32 1
  %24 = call i32 @bridge_cancel_delayed_call(i32* %23)
  %25 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %26 = load i32, i32* @IFBF_FLUSHDYN, align 4
  %27 = call i32 @bridge_rtflush(%struct.bridge_softc* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %17
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = load i32, i32* @IFF_RUNNING, align 4
  %31 = call i32 @ifnet_set_flags(%struct.ifnet* %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc*) #1

declare dso_local i32 @ifnet_flags(%struct.ifnet*) #1

declare dso_local i64 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_cancel_delayed_call(i32*) #1

declare dso_local i32 @bridge_rtflush(%struct.bridge_softc*, i32) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
