; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_lock_spin_always.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386_opt.c_lck_mtx_lock_spin_always.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LS_LCK_MTX_LOCK_SPIN_ACQUIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_lock_spin_always(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @ordered_load_mtx_state(%struct.TYPE_10__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %10 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @disable_preemption()
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @memory_order_acquire_smp, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @atomic_compare_exchange32(i32* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = call i32 (...) @enable_preemption()
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  call void @lck_mtx_lock_spin_slow(%struct.TYPE_10__* %30)
  br label %37

31:                                               ; preds = %1
  %32 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %5, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = ptrtoint %struct.TYPE_9__* %34 to i64
  %36 = call i32 @ordered_store_mtx_owner(%struct.TYPE_10__* %33, i64 %35)
  br label %37

37:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @atomic_compare_exchange32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local void @lck_mtx_lock_spin_slow(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
