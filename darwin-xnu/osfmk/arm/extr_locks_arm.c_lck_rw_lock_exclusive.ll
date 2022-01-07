; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_exclusive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DTRACE_RW_EXCL = common dso_local global i32 0, align 4
@LS_LCK_RW_LOCK_EXCL_ACQUIRE = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_rw_lock_exclusive(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = call %struct.TYPE_14__* (...) @current_thread()
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %12 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %19 = load i32, i32* @memory_order_acquire_smp, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i64 @atomic_test_and_set32(i32* %10, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @lck_rw_lock_exclusive_gen(%struct.TYPE_15__* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = call i32 @ordered_store_rw_owner(%struct.TYPE_15__* %28, %struct.TYPE_14__* %29)
  ret void
}

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i64 @atomic_test_and_set32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive_gen(%struct.TYPE_15__*) #1

declare dso_local i32 @ordered_store_rw_owner(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
