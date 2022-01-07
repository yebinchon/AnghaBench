; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_lock_exclusive_to_shared.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_lock_exclusive_to_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@memory_order_release_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@LCK_RW_W_WAITING = common dso_local global i32 0, align 4
@LCK_RW_PRIV_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_rw_lock_exclusive_to_shared(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %5

5:                                                ; preds = %62, %14, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* @memory_order_release_smp, align 4
  %9 = call i32 @atomic_exchange_begin32(i32* %7, i32* %4, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = call i32 (...) @atomic_exchange_abort()
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i32 @lck_rw_interlock_spin(%struct.TYPE_5__* %16)
  br label %5

18:                                               ; preds = %5
  %19 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @LCK_RW_PRIV_EXCL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @memory_order_release_smp, align 4
  %59 = call i64 @atomic_exchange_complete32(i32* %55, i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %64

62:                                               ; preds = %53
  %63 = call i32 (...) @cpu_pause()
  br label %5

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = load i32, i32* %4, align 4
  call void @lck_rw_lock_exclusive_to_shared_gen(%struct.TYPE_5__* %65, i32 %66)
  ret void
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i32 @lck_rw_interlock_spin(%struct.TYPE_5__*) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local void @lck_rw_lock_exclusive_to_shared_gen(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
