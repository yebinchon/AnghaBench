; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_try_lock_spin_always.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_try_lock_spin_always.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_mtx_try_lock_spin_always(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = call i32 @ordered_load_mtx_state(%struct.TYPE_10__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %11 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @disable_preemption()
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @memory_order_acquire_smp, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @atomic_compare_exchange32(i32* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = call i32 (...) @enable_preemption()
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call i32 @lck_mtx_try_lock_spin_slow(%struct.TYPE_10__* %31)
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %1
  %34 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %6, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = ptrtoint %struct.TYPE_9__* %36 to i64
  %38 = call i32 @ordered_store_mtx_owner(%struct.TYPE_10__* %35, i64 %37)
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @atomic_compare_exchange32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @lck_mtx_try_lock_spin_slow(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
