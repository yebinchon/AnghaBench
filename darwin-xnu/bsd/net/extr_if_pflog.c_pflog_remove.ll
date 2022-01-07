; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_pflog.c_pflog_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_pflog.c_pflog_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.pflog_softc* }
%struct.pflog_softc = type { i32 }

@pf_perim_lock = common dso_local global i32 0, align 4
@pf_lock = common dso_local global i32 0, align 4
@IFPFLF_DETACHING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sc_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @pflog_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pflog_remove(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pflog_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.pflog_softc* null, %struct.pflog_softc** %4, align 8
  %5 = load i32, i32* @pf_perim_lock, align 4
  %6 = call i32 @lck_rw_lock_shared(i32 %5)
  %7 = load i32, i32* @pf_lock, align 4
  %8 = call i32 @lck_mtx_lock(i32 %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.pflog_softc*, %struct.pflog_softc** %10, align 8
  store %struct.pflog_softc* %11, %struct.pflog_softc** %4, align 8
  %12 = load %struct.pflog_softc*, %struct.pflog_softc** %4, align 8
  %13 = icmp eq %struct.pflog_softc* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.pflog_softc*, %struct.pflog_softc** %4, align 8
  %16 = getelementptr inbounds %struct.pflog_softc, %struct.pflog_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFPFLF_DETACHING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load i32, i32* @IFPFLF_DETACHING, align 4
  %25 = load %struct.pflog_softc*, %struct.pflog_softc** %4, align 8
  %26 = getelementptr inbounds %struct.pflog_softc, %struct.pflog_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.pflog_softc*, %struct.pflog_softc** %4, align 8
  %30 = load i32, i32* @sc_list, align 4
  %31 = call i32 @LIST_REMOVE(%struct.pflog_softc* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* @pf_lock, align 4
  %34 = call i32 @lck_mtx_unlock(i32 %33)
  %35 = load i32, i32* @pf_perim_lock, align 4
  %36 = call i32 @lck_rw_done(i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.pflog_softc*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
