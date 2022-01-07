; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_convert_spin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_convert_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCK_ILOCK = common dso_local global i64 0, align 8
@LCK_MTX_SPIN_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"lck_mtx_convert_spin: Not held as spinlock (%p)\00", align 1
@LCK_MTX_THREAD_MASK = common dso_local global i64 0, align 8
@ARM_LCK_WAITERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_convert_spin(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i64 (...) @current_thread()
  store i64 %6, i64* %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @ordered_load_mtx(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %50

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @LCK_ILOCK, align 8
  %17 = and i64 %15, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %20)
  %22 = load i64, i64* @LCK_MTX_SPIN_TAG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %14
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i64, i64* @LCK_MTX_THREAD_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ordered_store_mtx(i32* %32, i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lck_mtx_lock_acquire(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @LCK_MTX_THREAD_TO_STATE(i64 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i64, i64* @ARM_LCK_WAITERS, align 8
  %43 = load i64, i64* %4, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i32*, i32** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @ordered_store_mtx(i32* %46, i64 %47)
  %49 = call i32 (...) @enable_preemption()
  br label %50

50:                                               ; preds = %45, %13
  ret void
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i64 @ordered_load_mtx(i32*) #1

declare dso_local i64 @LCK_MTX_STATE_TO_THREAD(i64) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i32 @ordered_store_mtx(i32*, i64) #1

declare dso_local i32 @lck_mtx_lock_acquire(i32*) #1

declare dso_local i64 @LCK_MTX_THREAD_TO_STATE(i64) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
