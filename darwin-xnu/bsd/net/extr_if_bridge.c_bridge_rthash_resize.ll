; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_rthash_resize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_rthash_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bridge_softc* }

@SCF_DETACHING = common dso_local global i32 0, align 4
@SCF_RESIZING = common dso_local global i32 0, align 4
@bridge_rtable_hash_size_max = common dso_local global i32 0, align 4
@bridge_rthash_delayed_resize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_softc*)* @bridge_rthash_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_rthash_resize(%struct.bridge_softc* %0) #0 {
  %2 = alloca %struct.bridge_softc*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %2, align 8
  %3 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %4 = call i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc* %3)
  %5 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SCF_DETACHING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SCF_RESIZING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %48

19:                                               ; preds = %11
  %20 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @bridge_rtable_hash_size_max, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %48

36:                                               ; preds = %29
  %37 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %38 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.bridge_softc* %37, %struct.bridge_softc** %40, align 8
  %41 = load i32, i32* @bridge_rthash_delayed_resize, align 4
  %42 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %45, i32 0, i32 3
  %47 = call i32 @bridge_schedule_delayed_call(%struct.TYPE_2__* %46)
  br label %48

48:                                               ; preds = %36, %35, %28, %18
  ret void
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT_HELD(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_schedule_delayed_call(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
