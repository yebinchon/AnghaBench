; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_spin_sleep_deadline.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_spin_sleep_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCK_SLEEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid lock sleep action %x\0A\00", align 1
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@LCK_SLEEP_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_spin_sleep_deadline(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LCK_SLEEP_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @assert_wait_deadline(i32 %21, i32 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @THREAD_WAITING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lck_spin_unlock(i32* %29)
  %31 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %32 = call i64 @thread_block(i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lck_spin_lock(i32* %38)
  br label %40

40:                                               ; preds = %37, %28
  br label %50

41:                                               ; preds = %20
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @lck_spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i64, i64* %11, align 8
  ret i64 %51
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @assert_wait_deadline(i32, i32, i32) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
