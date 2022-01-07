; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4
@LCK_MTX_PROMOTED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_unlock(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call i32 @ordered_load_mtx_state(%struct.TYPE_11__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  call void @lck_mtx_unlock_slow(%struct.TYPE_11__* %12)
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %16 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LCK_MTX_PROMOTED_MSK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = call i32 (...) @disable_preemption()
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @memory_order_acquire_smp, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @atomic_compare_exchange32(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %13
  %42 = call i32 (...) @enable_preemption()
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  call void @lck_mtx_unlock_slow(%struct.TYPE_11__* %43)
  br label %57

44:                                               ; preds = %13
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call i32 @ordered_store_mtx_owner(%struct.TYPE_11__* %45, i32 0)
  %47 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ordered_store_mtx_state_release(%struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @lck_mtx_unlock_finish_inline(%struct.TYPE_11__* %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %41, %11
  ret void
}

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_11__*) #1

declare dso_local void @lck_mtx_unlock_slow(%struct.TYPE_11__*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @atomic_compare_exchange32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ordered_store_mtx_state_release(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lck_mtx_unlock_finish_inline(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
