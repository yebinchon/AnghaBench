; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_slowtimo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_slowtimo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.nd_ifinfo = type { i64, i64, i32, i64, i32 }

@ifnet_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@ND6_SLOWTIMER_INTERVAL = common dso_local global i64 0, align 8
@nd6_recalc_reachtm_interval = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nd6_slowtimo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_slowtimo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nd_ifinfo*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %3, align 8
  store %struct.ifnet* null, %struct.ifnet** %4, align 8
  %5 = call i32 (...) @ifnet_head_lock_shared()
  %6 = load %struct.ifnet*, %struct.ifnet** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ifnet_head, i32 0, i32 0), align 8
  store %struct.ifnet* %6, %struct.ifnet** %4, align 8
  br label %7

7:                                                ; preds = %51, %1
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %11)
  store %struct.nd_ifinfo* %12, %struct.nd_ifinfo** %3, align 8
  %13 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %14 = icmp eq %struct.nd_ifinfo* null, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @FALSE, align 8
  %17 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %18 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %24 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %23, i32 0, i32 2
  %25 = call i32 @lck_mtx_lock(i32* %24)
  %26 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %27 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i64, i64* @ND6_SLOWTIMER_INTERVAL, align 8
  %32 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %33 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i64, i64* @nd6_recalc_reachtm_interval, align 8
  %39 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %40 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %42 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ND_COMPUTE_RTIME(i64 %43)
  %45 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %46 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %37, %30, %22
  %48 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %49 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %48, i32 0, i32 2
  %50 = call i32 @lck_mtx_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %21
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.ifnet*, %struct.ifnet** %54, align 8
  store %struct.ifnet* %55, %struct.ifnet** %4, align 8
  br label %7

56:                                               ; preds = %7
  %57 = call i32 (...) @ifnet_head_done()
  %58 = load i64, i64* @ND6_SLOWTIMER_INTERVAL, align 8
  %59 = load i64, i64* @hz, align 8
  %60 = mul nsw i64 %58, %59
  %61 = call i32 @timeout(void (i8*)* @nd6_slowtimo, i32* null, i64 %60)
  ret void
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ND_COMPUTE_RTIME(i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @timeout(void (i8*)*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
