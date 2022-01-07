; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_try_lock_spin_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_try_lock_spin_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Spin-mutex held as full mutex %p\00", align 1
@ARM_LCK_WAITERS = common dso_local global i64 0, align 8
@LCK_MTX_SPIN_TAG = common dso_local global i64 0, align 8
@LCK_ILOCK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @lck_mtx_try_lock_spin_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lck_mtx_try_lock_spin_internal(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @interlock_try(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @ordered_load_mtx(i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @interlock_unlock(i32* %22)
  br label %27

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %3, align 8
  br label %43

29:                                               ; preds = %12
  %30 = load i64, i64* @ARM_LCK_WAITERS, align 8
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @LCK_MTX_SPIN_TAG, align 8
  %34 = load i64, i64* @LCK_ILOCK, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ordered_store_mtx(i32* %38, i64 %39)
  %41 = call i32 (...) @load_memory_barrier()
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %29, %27, %10
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @interlock_try(i32*) #1

declare dso_local i64 @ordered_load_mtx(i32*) #1

declare dso_local i64 @LCK_MTX_STATE_TO_THREAD(i64) #1

declare dso_local i32 @interlock_unlock(i32*) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i32 @ordered_store_mtx(i32*, i64) #1

declare dso_local i32 @load_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
