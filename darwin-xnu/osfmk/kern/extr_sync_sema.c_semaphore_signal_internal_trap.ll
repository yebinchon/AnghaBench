; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_internal_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_internal_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@SEMAPHORE_SIGNAL_PREPOST = common dso_local global i32 0, align 4
@KERN_NOT_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_signal_internal_trap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @port_name_to_semaphore(i32 %5, i32* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @THREAD_NULL, align 4
  %13 = load i32, i32* @SEMAPHORE_SIGNAL_PREPOST, align 4
  %14 = call i64 @semaphore_signal_internal(i32 %11, i32 %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @semaphore_dereference(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @KERN_NOT_WAITING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %10
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* %4, align 8
  ret i64 %24
}

declare dso_local i64 @port_name_to_semaphore(i32, i32*) #1

declare dso_local i64 @semaphore_signal_internal(i32, i32, i32) #1

declare dso_local i32 @semaphore_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
