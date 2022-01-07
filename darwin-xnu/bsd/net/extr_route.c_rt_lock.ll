; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.rtentry_dbg = type { i32 }

@rte_debug = common dso_local global i32 0, align 4
@RTD_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_lock(%struct.rtentry* %0, i64 %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %6 = call i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry* %5)
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = call i32 @lck_mtx_lock_spin(i32* %11)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %14, i32 0, i32 0
  %16 = call i32 @lck_mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @rte_debug, align 4
  %19 = load i32, i32* @RTD_DEBUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %24 = bitcast %struct.rtentry* %23 to %struct.rtentry_dbg*
  %25 = call i32 @rte_lock_debug(%struct.rtentry_dbg* %24)
  br label %26

26:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @rte_lock_debug(%struct.rtentry_dbg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
