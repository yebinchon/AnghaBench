; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_lock_spin_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_lock_spin_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Attempting to block on a lock taken as spin-always %p\00", align 1
@ARM_LCK_WAITERS = common dso_local global i64 0, align 8
@LCK_MTX_SPIN_TAG = common dso_local global i64 0, align 8
@LCK_ILOCK = common dso_local global i64 0, align 8
@LS_LCK_MTX_LOCK_SPIN_ACQUIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @lck_mtx_lock_spin_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lck_mtx_lock_spin_internal(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @interlock_lock(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @ordered_load_mtx(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (...) @current_thread()
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @lck_mtx_lock_contended(i32* %17, i32 %18, i32 %19)
  br label %24

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %21, %16
  br label %38

25:                                               ; preds = %2
  %26 = load i64, i64* @ARM_LCK_WAITERS, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @LCK_MTX_SPIN_TAG, align 8
  %30 = load i64, i64* @LCK_ILOCK, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ordered_store_mtx(i32* %34, i64 %35)
  %37 = call i32 (...) @load_memory_barrier()
  br label %38

38:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @interlock_lock(i32*) #1

declare dso_local i64 @ordered_load_mtx(i32*) #1

declare dso_local i64 @LCK_MTX_STATE_TO_THREAD(i64) #1

declare dso_local i32 @lck_mtx_lock_contended(i32*, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i32 @ordered_store_mtx(i32*, i64) #1

declare dso_local i32 @load_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
