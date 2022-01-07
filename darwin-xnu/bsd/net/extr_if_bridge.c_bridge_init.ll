; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.bridge_softc = type { i32 }

@IFF_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_init(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bridge_softc*
  store %struct.bridge_softc* %9, %struct.bridge_softc** %4, align 8
  %10 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %11 = call i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32 @ifnet_flags(%struct.ifnet* %12)
  %14 = load i32, i32* @IFF_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = load i32, i32* @IFF_RUNNING, align 4
  %21 = load i32, i32* @IFF_RUNNING, align 4
  %22 = call i64 @ifnet_set_flags(%struct.ifnet* %19, i32 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %24 = call i64 @bridge_in_bsd_mode(%struct.bridge_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %28 = call i32 @bridge_aging_timer(%struct.bridge_softc* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc*) #1

declare dso_local i32 @ifnet_flags(%struct.ifnet*) #1

declare dso_local i64 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_aging_timer(%struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
