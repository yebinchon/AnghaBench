; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_lock(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = call i32 (...) @lck_mtx_check_preemption()
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i32 @ordered_load_mtx_state(%struct.TYPE_10__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %11 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %9, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @disable_preemption()
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @memory_order_acquire_smp, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @atomic_compare_exchange32(i32* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = call i32 (...) @enable_preemption()
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  call void @lck_mtx_lock_slow(%struct.TYPE_10__* %33)
  br label %44

34:                                               ; preds = %1
  %35 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = ptrtoint %struct.TYPE_9__* %37 to i64
  %39 = call i32 @ordered_store_mtx_owner(%struct.TYPE_10__* %36, i64 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @lck_mtx_lock_finish_inline(%struct.TYPE_10__* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @lck_mtx_check_preemption(...) #1

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @atomic_compare_exchange32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local void @lck_mtx_lock_slow(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @lck_mtx_lock_finish_inline(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
