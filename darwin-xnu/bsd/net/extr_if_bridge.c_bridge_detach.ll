; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32 }

@bridge_list_mtx = common dso_local global i32 0, align 4
@sc_list = common dso_local global i32 0, align 4
@bridge_lock_grp = common dso_local global i32 0, align 4
@bridge_cloner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bridge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @ifnet_softc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.bridge_softc*
  store %struct.bridge_softc* %6, %struct.bridge_softc** %3, align 8
  %7 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %8 = call i64 @bridge_in_bsd_mode(%struct.bridge_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %12 = call i32 @bridge_rtable_fini(%struct.bridge_softc* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 @lck_mtx_lock(i32* @bridge_list_mtx)
  %15 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %16 = load i32, i32* @sc_list, align 4
  %17 = call i32 @LIST_REMOVE(%struct.bridge_softc* %15, i32 %16)
  %18 = call i32 @lck_mtx_unlock(i32* @bridge_list_mtx)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ifnet_release(i32 %19)
  %21 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* @bridge_lock_grp, align 4
  %24 = call i32 @lck_mtx_destroy(i32* %22, i32 %23)
  %25 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %26 = call i32 @if_clone_softc_deallocate(i32* @bridge_cloner, %struct.bridge_softc* %25)
  ret void
}

declare dso_local i64 @ifnet_softc(i32) #1

declare dso_local i64 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_rtable_fini(%struct.bridge_softc*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bridge_softc*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ifnet_release(i32) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @if_clone_softc_deallocate(i32*, %struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
