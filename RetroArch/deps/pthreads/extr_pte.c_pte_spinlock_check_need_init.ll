; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_spinlock_check_need_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_spinlock_check_need_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pte_spinlock_test_init_lock = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global i32* null, align 8
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_spinlock_check_need_init(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @pte_spinlock_test_init_lock, align 4
  %5 = call i32 @pte_osMutexLock(i32 %4)
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32**, i32*** %2, align 8
  %12 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %13 = call i32 @pthread_spin_init(i32** %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32**, i32*** %2, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* @pte_spinlock_test_init_lock, align 4
  %23 = call i32 @pte_osMutexUnlock(i32 %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pthread_spin_init(i32**, i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
