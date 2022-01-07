; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_abort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_abort.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @system_override_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_override_abort(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %4 = call i32 @lck_mtx_assert(i32* @sys_override_lock, i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i64, i64* @io_throttle_assert_cnt, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %14 = call i32 @system_override_callouts(i32 %13, i32 0)
  br label %15

15:                                               ; preds = %12, %9, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %25 = call i32 @system_override_callouts(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %23, %20, %15
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %36 = call i32 @system_override_callouts(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31, %26
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
