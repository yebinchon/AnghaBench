; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_upgrade_downgrade_rw.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_upgrade_downgrade_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lt_rwlock = common dso_local global i32 0, align 4
@lt_upgrade_holders = common dso_local global i64 0, align 8
@lt_max_upgrade_holders = common dso_local global i64 0, align 8
@lt_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lt_upgrade_downgrade_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lt_upgrade_downgrade_rw() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @lck_rw_try_lock_shared(i32* @lt_rwlock)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @lck_rw_lock_shared(i32* @lt_rwlock)
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @lt_note_another_blocking_lock_holder()
  %10 = call i32 (...) @lt_sleep_a_little_bit()
  %11 = call i32 (...) @lt_note_blocking_lock_release()
  %12 = call i64 @lck_rw_lock_shared_to_exclusive(i32* @lt_rwlock)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = call i64 @lck_rw_try_lock_exclusive(i32* @lt_rwlock)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 @lck_rw_lock_exclusive(i32* @lt_rwlock)
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %8
  %23 = load i64, i64* @lt_upgrade_holders, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @lt_upgrade_holders, align 8
  %25 = load i64, i64* @lt_upgrade_holders, align 8
  %26 = load i64, i64* @lt_max_upgrade_holders, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @lt_upgrade_holders, align 8
  store i64 %29, i64* @lt_max_upgrade_holders, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* @lt_counter, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @lt_counter, align 4
  %33 = call i32 (...) @lt_sleep_a_little_bit()
  %34 = load i64, i64* @lt_upgrade_holders, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* @lt_upgrade_holders, align 8
  %36 = call i32 @lck_rw_lock_exclusive_to_shared(i32* @lt_rwlock)
  %37 = call i32 (...) @lt_spin_a_little_bit()
  %38 = call i32 @lck_rw_done(i32* @lt_rwlock)
  ret void
}

declare dso_local i64 @lck_rw_try_lock_shared(i32*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @lt_note_another_blocking_lock_holder(...) #1

declare dso_local i32 @lt_sleep_a_little_bit(...) #1

declare dso_local i32 @lt_note_blocking_lock_release(...) #1

declare dso_local i64 @lck_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i64 @lck_rw_try_lock_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive_to_shared(i32*) #1

declare dso_local i32 @lt_spin_a_little_bit(...) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
