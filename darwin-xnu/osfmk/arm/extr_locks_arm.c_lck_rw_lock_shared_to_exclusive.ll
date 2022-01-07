; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_shared_to_exclusive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_shared_to_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@memory_order_acquire_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_W_WAITING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LS_LCK_RW_LOCK_SHARED_TO_EXCL_UPGRADE = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_rw_lock_shared_to_exclusive(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  br label %6

6:                                                ; preds = %70, %15, %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* @memory_order_acquire_smp, align 4
  %10 = call i32 @atomic_exchange_begin32(i32* %8, i32* %5, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = call i32 (...) @atomic_exchange_abort()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i32 @lck_rw_interlock_spin(%struct.TYPE_10__* %17)
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @memory_order_acquire_smp, align 4
  %45 = call i64 @atomic_exchange_complete32(i32* %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @lck_rw_lock_shared_to_exclusive_failure(%struct.TYPE_10__* %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %85

51:                                               ; preds = %39
  br label %70

52:                                               ; preds = %19
  %53 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @memory_order_acquire_smp, align 4
  %66 = call i64 @atomic_exchange_complete32(i32* %62, i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %72

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %51
  %71 = call i32 (...) @cpu_pause()
  br label %6

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = call i32 @lck_rw_lock_shared_to_exclusive_success(%struct.TYPE_10__* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = call i32 (...) @current_thread()
  %83 = call i32 @ordered_store_rw_owner(%struct.TYPE_10__* %81, i32 %82)
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %47
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i32 @lck_rw_interlock_spin(%struct.TYPE_10__*) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

declare dso_local i32 @lck_rw_lock_shared_to_exclusive_failure(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @lck_rw_lock_shared_to_exclusive_success(%struct.TYPE_10__*) #1

declare dso_local i32 @ordered_store_rw_owner(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
