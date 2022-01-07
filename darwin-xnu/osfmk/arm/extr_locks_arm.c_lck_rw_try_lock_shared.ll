; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_try_lock_shared.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_try_lock_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@memory_order_acquire_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lck_rw_try_lock_shared(): Interlock locked (%p): %x\00", align 1
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DTRACE_RW_SHARED = common dso_local global i32 0, align 4
@LS_LCK_RW_TRY_LOCK_SHARED_ACQUIRE = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_rw_try_lock_shared(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* @memory_order_acquire_smp, align 4
  %10 = call i32 @atomic_exchange_begin32(i32* %8, i32* %5, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %6
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %22 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 (...) @atomic_exchange_abort()
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %19
  %30 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @memory_order_acquire_smp, align 4
  %40 = call i64 @atomic_exchange_complete32(i32* %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %45

43:                                               ; preds = %29
  %44 = call i32 (...) @cpu_pause()
  br label %6

45:                                               ; preds = %42
  %46 = call %struct.TYPE_10__* (...) @current_thread()
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local %struct.TYPE_10__* @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
