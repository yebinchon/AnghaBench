; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_end.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_end.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @system_override_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_override_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %4 = call i32 @lck_mtx_assert(i32* @sys_override_lock, i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i64, i64* @io_throttle_assert_cnt, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* @io_throttle_assert_cnt, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* @io_throttle_assert_cnt, align 8
  %16 = load i64, i64* @io_throttle_assert_cnt, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @SYS_OVERRIDE_IO_THROTTLE, align 4
  %20 = call i32 @system_override_callouts(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %18, %9
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %29 = icmp sgt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* @cpu_throttle_assert_cnt, align 8
  %34 = load i64, i64* @cpu_throttle_assert_cnt, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @SYS_OVERRIDE_CPU_THROTTLE, align 4
  %38 = call i32 @system_override_callouts(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* @fast_jetsam_assert_cnt, align 8
  %52 = load i64, i64* @fast_jetsam_assert_cnt, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @SYS_OVERRIDE_FAST_JETSAM, align 4
  %56 = call i32 @system_override_callouts(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %40
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @system_override_callouts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
