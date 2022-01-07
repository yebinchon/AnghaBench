; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_ShouldAcquireLock.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_ShouldAcquireLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@got_sigterm = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@PG_WAIT_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ShouldAcquireLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldAcquireLock(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @got_sigterm, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @MyLatch, align 4
  %10 = load i32, i32* @WL_LATCH_SET, align 4
  %11 = load i32, i32* @WL_TIMEOUT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %14 = or i32 %12, %13
  %15 = load i64, i64* %3, align 8
  %16 = mul nsw i64 %15, 1
  %17 = load i32, i32* @PG_WAIT_EXTENSION, align 4
  %18 = call i32 @WaitLatch(i32 %9, i32 %14, i64 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @MyLatch, align 4
  %20 = call i32 @ResetLatch(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = call i32 @proc_exit(i32 1)
  br label %27

27:                                               ; preds = %25, %8
  %28 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %29 = load i64, i64* @got_sigterm, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @WaitLatch(i32, i32, i64, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
