; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_lock_exclusive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_lock_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DTRACE_RW_EXCL = common dso_local global i32 0, align 4
@LS_LCK_RW_LOCK_EXCL_ACQUIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_rw_lock_exclusive(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = call %struct.TYPE_7__* (...) @current_thread()
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %10 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %17 = load i32, i32* @memory_order_acquire_smp, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i64 @atomic_test_and_set32(i32* %8, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @lck_rw_lock_exclusive_gen(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i64 @atomic_test_and_set32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive_gen(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
