; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_begin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_override_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@SYS_OVERRIDE_IO_THROTTLE = common dso_local global i32 0, align 4
@io_throttle_assert_cnt = common dso_local global i64 0, align 8
@SYS_OVERRIDE_CPU_THROTTLE = common dso_local global i32 0, align 4
@cpu_throttle_assert_cnt = common dso_local global i64 0, align 8
@SYS_OVERRIDE_FAST_JETSAM = common dso_local global i32 0, align 4
@fast_jetsam_assert_cnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @system_override_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_override_begin(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %4 = call i32 @lck_mtx_assert(i32* @sys_override_lock, i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* @io_throttle_assert_cnt, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %14 = call i32 @system_override_callouts(i32 %13, i32 1)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i64, i64* @io_throttle_assert_cnt, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @io_throttle_assert_cnt, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %28 = call i32 @system_override_callouts(i32 %27, i32 1)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @cpu_throttle_assert_cnt, align 8
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %42 = call i32 @system_override_callouts(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @fast_jetsam_assert_cnt, align 8
  br label %46

46:                                               ; preds = %43, %32
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32*, i32) #1

declare dso_local i32 @system_override_callouts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
